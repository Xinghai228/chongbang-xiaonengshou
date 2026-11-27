package com.rootclicker.app;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class LanLink {
    private static final long BROADCAST_INTERVAL = 2500;
    private static final int DISCOVERY_PORT = 45678;
    private static final int LINK_PORT = 45679;
    private static final long PEER_QUICK_DROP = 2500;
    private static final long PEER_TIMEOUT = 6000;
    public static final int ROLE_MASTER = 1;
    public static final int ROLE_NONE = 0;
    public static final int ROLE_SLAVE = 2;
    private Thread acceptThread;
    private Thread broadcastThread;
    private final Context context;
    private volatile Listener listener;
    private WifiManager.MulticastLock multicastLock;
    private Thread receiveThread;
    private volatile int resetSeq;
    private volatile int runSeq;
    private final String selfId;
    private volatile String selfName;
    private volatile boolean started;
    private volatile int targetSeq;
    private ServerSocket tcpServer;
    private DatagramSocket udpSocket;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Map<String, Peer> peers = new ConcurrentHashMap();
    private final Map<String, Socket> outbound = new ConcurrentHashMap();
    private final Map<String, Socket> inbound = new ConcurrentHashMap();
    private String lastPeerSignature = "";
    private volatile int localTarget = 10;
    private volatile int masterTargetSeq = -1;
    private volatile int masterRunSeq = -1;
    private volatile int masterResetSeq = -1;

    public interface Listener {
        void onNotice(String str);

        void onPeers(List<Peer> list);

        void onRemoteReset();

        void onRemoteRun();

        void onRemoteTarget(int i);

        void onRoleChanged(int i, int i2);
    }

    public static final class Peer {
        public volatile boolean connected;
        public final String id;
        public final String ip;
        public volatile long lastSeen;
        public final String name;

        Peer(String str, String str2, String str3, long j) {
            this.id = str;
            this.name = str2;
            this.ip = str3;
            this.lastSeen = j;
        }

        Peer copy() {
            Peer peer = new Peer(this.id, this.name, this.ip, this.lastSeen);
            peer.connected = this.connected;
            return peer;
        }
    }

    public LanLink(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.selfId = Prefs.getDeviceId(applicationContext);
        this.selfName = Prefs.getDeviceName(applicationContext);
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public void updateName(String str) {
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        this.selfName = str.trim();
    }

    public List<Peer> getPeers() {
        ArrayList arrayList = new ArrayList();
        for (Peer peer : this.peers.values()) {
            Peer peerCopy = peer.copy();
            peerCopy.lastSeen = peer.lastSeen;
            arrayList.add(peerCopy);
        }
        Collections.sort(arrayList, new Comparator<Peer>() { // from class: com.rootclicker.app.LanLink.1
            @Override // java.util.Comparator
            public int compare(Peer peer2, Peer peer3) {
                return peer2.name.compareToIgnoreCase(peer3.name);
            }
        });
        return arrayList;
    }

    public boolean isMaster() {
        return !this.outbound.isEmpty();
    }

    public boolean isSlave() {
        return !this.inbound.isEmpty();
    }

    public void resyncMasterTarget() {
        this.masterTargetSeq = -1;
    }

    public void start() {
        if (this.started) {
            return;
        }
        this.started = true;
        acquireMulticastLock();
        try {
            DatagramSocket datagramSocket = new DatagramSocket((SocketAddress) null);
            this.udpSocket = datagramSocket;
            datagramSocket.setReuseAddress(true);
            this.udpSocket.setBroadcast(true);
            this.udpSocket.bind(new InetSocketAddress(DISCOVERY_PORT));
        } catch (Exception unused) {
            closeQuietly(this.udpSocket);
            this.udpSocket = null;
        }
        try {
            ServerSocket serverSocket = new ServerSocket();
            this.tcpServer = serverSocket;
            serverSocket.setReuseAddress(true);
            this.tcpServer.bind(new InetSocketAddress(LINK_PORT));
        } catch (Exception unused2) {
            closeQuietly(this.tcpServer);
            this.tcpServer = null;
        }
        startBroadcastThread();
        startReceiveThread();
        startAcceptThread();
    }

    public void stop() {
        this.started = false;
        closeQuietly(this.udpSocket);
        this.udpSocket = null;
        closeQuietly(this.tcpServer);
        this.tcpServer = null;
        Iterator<Socket> it = this.outbound.values().iterator();
        while (it.hasNext()) {
            closeQuietly(it.next());
        }
        Iterator<Socket> it2 = this.inbound.values().iterator();
        while (it2.hasNext()) {
            closeQuietly(it2.next());
        }
        this.outbound.clear();
        this.inbound.clear();
        this.peers.clear();
        releaseMulticastLock();
        Thread thread = this.broadcastThread;
        if (thread != null) {
            thread.interrupt();
            this.broadcastThread = null;
        }
        Thread thread2 = this.receiveThread;
        if (thread2 != null) {
            thread2.interrupt();
            this.receiveThread = null;
        }
        Thread thread3 = this.acceptThread;
        if (thread3 != null) {
            thread3.interrupt();
            this.acceptThread = null;
        }
        this.listener = null;
    }

    public void connect(final Peer peer) {
        if (peer == null || !this.started || this.outbound.containsKey(peer.id)) {
            return;
        }
        new Thread(new Runnable(this) { // from class: com.rootclicker.app.LanLink.2
            final /* synthetic */ LanLink this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                Socket socket = null;
                try {
                    try {
                        Socket socket2 = new Socket();
                        try {
                            socket2.setKeepAlive(true);
                            socket2.connect(new InetSocketAddress(peer.ip, LanLink.LINK_PORT), 4000);
                            this.this$0.outbound.put(peer.id, socket2);
                            LanLink lanLink = this.this$0;
                            lanLink.writeLine(socket2, lanLink.helloMessage());
                            this.this$0.updateConnectedFlags();
                            this.this$0.postRole();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket2.getInputStream(), StandardCharsets.UTF_8));
                            while (this.this$0.started && bufferedReader.readLine() != null) {
                            }
                            this.this$0.closeQuietly(socket2);
                        } catch (Exception unused) {
                            socket = socket2;
                            this.this$0.notifyNotice("连接 " + peer.name + " 失败，请确认两台手机在同一 WiFi 下");
                            this.this$0.closeQuietly(socket);
                        }
                    } finally {
                        this.this$0.outbound.remove(peer.id);
                        this.this$0.dropPeerIfStale(peer.id);
                        this.this$0.updateConnectedFlags();
                        this.this$0.signalPeers(true);
                        this.this$0.postRole();
                    }
                } catch (Exception unused2) {
                }
            }
        }, "RootClicker-lan-connect").start();
    }

    public void disconnect(String str) {
        Socket socketRemove = this.outbound.remove(str);
        if (socketRemove != null) {
            closeQuietly(socketRemove);
        }
        updateConnectedFlags();
        postRole();
    }

    public void sendTarget(int i) {
        this.localTarget = i;
        this.targetSeq++;
        broadcastNow();
    }

    public void sendRun() {
        this.runSeq++;
        broadcastNow();
    }

    public void sendReset() {
        this.resetSeq++;
        broadcastNow();
    }

    private void broadcastNow() {
        new Thread(new Runnable() { // from class: com.rootclicker.app.LanLink.3
            @Override // java.lang.Runnable
            public void run() {
                LanLink.this.sendTcpCommand();
                int i = 0;
                while (i < 3 && LanLink.this.started) {
                    LanLink.this.broadcastPresence();
                    if (i < 2) {
                        try {
                            Thread.sleep(i == 0 ? 40L : 60L);
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                    i++;
                }
            }
        }, "RootClicker-lan-send").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTcpCommand() {
        if (this.outbound.isEmpty()) {
            return;
        }
        String strHelloMessage = helloMessage();
        for (Socket socket : this.outbound.values()) {
            if (socket != null && !socket.isClosed() && socket.isConnected()) {
                writeLine(socket, strHelloMessage);
            }
        }
    }

    public String helloMessage() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", "hello");
            jSONObject.put("id", this.selfId);
            jSONObject.put("name", this.selfName);
            return jSONObject.toString();
        } catch (Exception unused) {
            return "{\"t\":\"hello\",\"id\":\"" + this.selfId + "\"}";
        }
    }

    private void startBroadcastThread() {
        Thread thread = new Thread(new Runnable() { // from class: com.rootclicker.app.LanLink.4
            @Override // java.lang.Runnable
            public void run() {
                while (LanLink.this.started) {
                    LanLink.this.broadcastPresence();
                    LanLink.this.prunePeers();
                    try {
                        Thread.sleep(1500L);
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
            }
        }, "RootClicker-lan-broadcast");
        this.broadcastThread = thread;
        thread.start();
    }

    public void broadcastPresence() {
        DatagramSocket datagramSocket = this.udpSocket;
        if (datagramSocket == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", "hello");
            jSONObject.put("id", this.selfId);
            jSONObject.put("name", this.selfName);
            if (!this.outbound.isEmpty()) {
                jSONObject.put("m", 1);
                jSONObject.put("g", this.localTarget);
                jSONObject.put("gs", this.targetSeq);
                jSONObject.put("rs", this.runSeq);
                jSONObject.put("zr", this.resetSeq);
            }
            byte[] bytes = jSONObject.toString().getBytes(StandardCharsets.UTF_8);
            Iterator<InetAddress> it = broadcastAddresses().iterator();
            while (it.hasNext()) {
                try {
                    datagramSocket.send(new DatagramPacket(bytes, bytes.length, it.next(), DISCOVERY_PORT));
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    private List<InetAddress> broadcastAddresses() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(InetAddress.getByName("255.255.255.255"));
        } catch (Exception unused) {
        }
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.isUp() && !networkInterface.isLoopback()) {
                    Iterator<InterfaceAddress> it = networkInterface.getInterfaceAddresses().iterator();
                    while (it.hasNext()) {
                        InetAddress broadcast = it.next().getBroadcast();
                        if (broadcast != null) {
                            arrayList.add(broadcast);
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return arrayList;
    }

    private void startReceiveThread() {
        Thread thread = new Thread(new Runnable() { // from class: com.rootclicker.app.LanLink.5
            @Override // java.lang.Runnable
            public void run() {
                DatagramSocket datagramSocket;
                DatagramPacket datagramPacket = new DatagramPacket(new byte[512], 512);
                while (LanLink.this.started && (datagramSocket = LanLink.this.udpSocket) != null) {
                    try {
                        datagramSocket.receive(datagramPacket);
                        LanLink.this.handleAnnouncement(new String(datagramPacket.getData(), 0, datagramPacket.getLength(), StandardCharsets.UTF_8), datagramPacket.getAddress().getHostAddress());
                    } catch (Exception unused) {
                        if (!LanLink.this.started) {
                            return;
                        }
                    }
                }
            }
        }, "RootClicker-lan-receive");
        this.receiveThread = thread;
        thread.start();
    }

    public void handleAnnouncement(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if ("hello".equals(jSONObject.optString("t"))) {
                String strOptString = jSONObject.optString("id", "");
                String strOptString2 = jSONObject.optString("name", "");
                if (strOptString.isEmpty() || strOptString.equals(this.selfId)) {
                    return;
                }
                if (strOptString2.trim().isEmpty()) {
                    strOptString2 = "冲榜小能手";
                }
                String str3 = strOptString2;
                Peer peer = this.peers.get(strOptString);
                if (peer == null) {
                    this.peers.put(strOptString, new Peer(strOptString, str3, str2, System.currentTimeMillis()));
                } else {
                    peer.lastSeen = System.currentTimeMillis();
                    if (!peer.name.equals(str3) || !peer.ip.equals(str2)) {
                        this.peers.put(strOptString, new Peer(strOptString, str3, str2, peer.lastSeen));
                    }
                }
                updateConnectedFlags();
                signalPeers(false);
                if (this.inbound.containsKey(strOptString)) {
                    applyMasterState(jSONObject);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void applyMasterState(JSONObject jSONObject) {
        if (jSONObject.optInt("m", 0) != 1) {
            return;
        }
        int iOptInt = jSONObject.optInt("gs", -1);
        if (iOptInt >= 0 && iOptInt != this.masterTargetSeq) {
            this.masterTargetSeq = iOptInt;
            final int iOptInt2 = jSONObject.optInt("g", -1);
            if (iOptInt2 > 0) {
                this.main.post(new Runnable(this) { // from class: com.rootclicker.app.LanLink.6
                    final /* synthetic */ LanLink this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Listener listener = this.this$0.listener;
                        if (listener != null) {
                            listener.onRemoteTarget(iOptInt2);
                        }
                    }
                });
            }
        }
        int iOptInt3 = jSONObject.optInt("rs", 0);
        if (this.masterRunSeq < 0) {
            this.masterRunSeq = iOptInt3;
        } else if (iOptInt3 > this.masterRunSeq) {
            this.masterRunSeq = iOptInt3;
            this.main.post(new Runnable() { // from class: com.rootclicker.app.LanLink.7
                @Override // java.lang.Runnable
                public void run() {
                    Listener listener = LanLink.this.listener;
                    if (listener != null) {
                        listener.onRemoteRun();
                    }
                }
            });
        }
        int iOptInt4 = jSONObject.optInt("zr", 0);
        if (this.masterResetSeq < 0) {
            this.masterResetSeq = iOptInt4;
        } else if (iOptInt4 > this.masterResetSeq) {
            this.masterResetSeq = iOptInt4;
            this.main.post(new Runnable() { // from class: com.rootclicker.app.LanLink.8
                @Override // java.lang.Runnable
                public void run() {
                    Listener listener = LanLink.this.listener;
                    if (listener != null) {
                        listener.onRemoteReset();
                    }
                }
            });
        }
    }

    public void prunePeers() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (Map.Entry<String, Socket> entry : this.inbound.entrySet()) {
            Peer peer = this.peers.get(entry.getKey());
            if (peer != null && jCurrentTimeMillis - peer.lastSeen > PEER_TIMEOUT) {
                closeQuietly(entry.getValue());
            }
        }
        for (Map.Entry<String, Socket> entry2 : this.outbound.entrySet()) {
            Peer peer2 = this.peers.get(entry2.getKey());
            if (peer2 != null && jCurrentTimeMillis - peer2.lastSeen > PEER_TIMEOUT) {
                closeQuietly(entry2.getValue());
            }
        }
        boolean z = false;
        for (Map.Entry<String, Peer> entry3 : this.peers.entrySet()) {
            Peer value = entry3.getValue();
            if (!isConnected(value.id) && jCurrentTimeMillis - value.lastSeen > PEER_TIMEOUT) {
                this.peers.remove(entry3.getKey());
                z = true;
            }
        }
        if (z) {
            signalPeers(true);
        }
    }

    private void startAcceptThread() {
        Thread thread = new Thread(new Runnable() { // from class: com.rootclicker.app.LanLink.9
            @Override // java.lang.Runnable
            public void run() {
                ServerSocket serverSocket;
                Socket socketAccept;
                while (LanLink.this.started && (serverSocket = LanLink.this.tcpServer) != null) {
                    try {
                        socketAccept = serverSocket.accept();
                    } catch (Exception unused) {
                        socketAccept = null;
                    }
                    try {
                        socketAccept.setKeepAlive(true);
                        LanLink.this.handleInbound(socketAccept);
                    } catch (Exception unused2) {
                        LanLink.this.closeQuietly(socketAccept);
                        if (!LanLink.this.started) {
                            return;
                        }
                    }
                }
            }
        }, "RootClicker-lan-accept");
        this.acceptThread = thread;
        thread.start();
    }

    public void handleInbound(Socket socket) throws Exception {
        String line;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
        String line2 = bufferedReader.readLine();
        if (line2 == null) {
            closeQuietly(socket);
            return;
        }
        JSONObject jSONObject = new JSONObject(line2);
        if (!"hello".equals(jSONObject.optString("t"))) {
            closeQuietly(socket);
            return;
        }
        String strOptString = jSONObject.optString("id", "");
        if (strOptString.isEmpty() || strOptString.equals(this.selfId)) {
            closeQuietly(socket);
            return;
        }
        String strOptString2 = jSONObject.optString("name", "主机");
        Peer peer = this.peers.get(strOptString);
        if (peer == null) {
            this.peers.put(strOptString, new Peer(strOptString, strOptString2, socket.getInetAddress().getHostAddress(), System.currentTimeMillis()));
        } else {
            peer.lastSeen = System.currentTimeMillis();
        }
        this.inbound.put(strOptString, socket);
        this.masterTargetSeq = -1;
        this.masterRunSeq = -1;
        this.masterResetSeq = -1;
        updateConnectedFlags();
        signalPeers(true);
        postRole();
        applyMasterState(jSONObject);
        while (this.started && (line = bufferedReader.readLine()) != null) {
            try {
                try {
                    try {
                        JSONObject jSONObject2 = new JSONObject(line);
                        if ("hello".equals(jSONObject2.optString("t"))) {
                            applyMasterState(jSONObject2);
                        }
                    } catch (Exception unused) {
                    }
                } finally {
                    this.inbound.remove(strOptString);
                    closeQuietly(socket);
                    dropPeerIfStale(strOptString);
                    updateConnectedFlags();
                    signalPeers(true);
                    postRole();
                }
            } catch (Exception unused2) {
            }
        }
    }

    public void dropPeerIfStale(String str) {
        Peer peer;
        if (isConnected(str) || (peer = this.peers.get(str)) == null || System.currentTimeMillis() - peer.lastSeen <= 2500) {
            return;
        }
        this.peers.remove(str);
    }

    private boolean isConnected(String str) {
        return this.outbound.containsKey(str) || this.inbound.containsKey(str);
    }

    public void updateConnectedFlags() {
        for (Peer peer : this.peers.values()) {
            peer.connected = isConnected(peer.id);
        }
    }

    public void postRole() {
        if (this.started) {
            this.main.post(new Runnable() { // from class: com.rootclicker.app.LanLink.10
                @Override // java.lang.Runnable
                public void run() {
                    Listener listener = LanLink.this.listener;
                    if (listener == null || !LanLink.this.started) {
                        return;
                    }
                    if (!LanLink.this.inbound.isEmpty()) {
                        listener.onRoleChanged(2, LanLink.this.inbound.size());
                    } else if (!LanLink.this.outbound.isEmpty()) {
                        listener.onRoleChanged(1, LanLink.this.outbound.size());
                    } else {
                        listener.onRoleChanged(0, 0);
                    }
                }
            });
        }
    }

    public void signalPeers(boolean z) {
        if (this.started) {
            List<Peer> peers = getPeers();
            StringBuilder sb = new StringBuilder();
            for (Peer peer : peers) {
                sb.append(peer.id);
                sb.append('|');
                sb.append(peer.name);
                sb.append('|');
                sb.append(peer.ip);
                sb.append('|');
                sb.append(peer.connected ? '1' : '0');
                sb.append(';');
            }
            String string = sb.toString();
            if (z || !string.equals(this.lastPeerSignature)) {
                this.lastPeerSignature = string;
                this.main.post(new Runnable() { // from class: com.rootclicker.app.LanLink.11
                    @Override // java.lang.Runnable
                    public void run() {
                        Listener listener = LanLink.this.listener;
                        if (listener == null || !LanLink.this.started) {
                            return;
                        }
                        listener.onPeers(LanLink.this.getPeers());
                    }
                });
            }
        }
    }

    public void notifyNotice(final String str) {
        this.main.post(new Runnable(this) { // from class: com.rootclicker.app.LanLink.12
            final /* synthetic */ LanLink this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                Listener listener = this.this$0.listener;
                if (listener != null) {
                    listener.onNotice(str);
                }
            }
        });
    }

    public void writeLine(Socket socket, String str) {
        if (socket == null) {
            return;
        }
        try {
            synchronized (socket) {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write((str + "\n").getBytes(StandardCharsets.UTF_8));
                outputStream.flush();
            }
        } catch (Exception unused) {
        }
    }

    private void acquireMulticastLock() {
        try {
            WifiManager wifiManager = (WifiManager) this.context.getSystemService("wifi");
            if (wifiManager == null) {
                return;
            }
            WifiManager.MulticastLock multicastLockCreateMulticastLock = wifiManager.createMulticastLock("RootClicker-lan");
            this.multicastLock = multicastLockCreateMulticastLock;
            multicastLockCreateMulticastLock.setReferenceCounted(false);
            this.multicastLock.acquire();
        } catch (Exception unused) {
            this.multicastLock = null;
        }
    }

    private void releaseMulticastLock() {
        try {
            WifiManager.MulticastLock multicastLock = this.multicastLock;
            if (multicastLock != null && multicastLock.isHeld()) {
                this.multicastLock.release();
            }
        } catch (Exception unused) {
        }
        this.multicastLock = null;
    }

    public void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Exception unused) {
            }
        }
    }

    private void closeQuietly(DatagramSocket datagramSocket) {
        if (datagramSocket != null) {
            try {
                datagramSocket.close();
            } catch (Exception unused) {
            }
        }
    }

    private void closeQuietly(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Exception unused) {
            }
        }
    }
}
