.class public final Lcom/rootclicker/app/LanLink;
.super Ljava/lang/Object;
.source "LanLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rootclicker/app/LanLink$Listener;,
        Lcom/rootclicker/app/LanLink$Peer;
    }
.end annotation


# static fields
.field private static final BROADCAST_INTERVAL:J = 0x9c4L

.field private static final DISCOVERY_PORT:I = 0xb26e

.field private static final LINK_PORT:I = 0xb26f

.field private static final PEER_QUICK_DROP:J = 0x9c4L

.field private static final PEER_TIMEOUT:J = 0x1770L

.field public static final ROLE_MASTER:I = 0x1

.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SLAVE:I = 0x2


# instance fields
.field private acceptThread:Ljava/lang/Thread;

.field private broadcastThread:Ljava/lang/Thread;

.field private final context:Landroid/content/Context;

.field private final inbound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private lastPeerSignature:Ljava/lang/String;

.field private volatile listener:Lcom/rootclicker/app/LanLink$Listener;

.field private volatile localTarget:I

.field private final main:Landroid/os/Handler;

.field private volatile masterResetSeq:I

.field private volatile masterRunSeq:I

.field private volatile masterTargetSeq:I

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final outbound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final peers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rootclicker/app/LanLink$Peer;",
            ">;"
        }
    .end annotation
.end field

.field private receiveThread:Ljava/lang/Thread;

.field private volatile resetSeq:I

.field private volatile runSeq:I

.field private final selfId:Ljava/lang/String;

.field private volatile selfName:Ljava/lang/String;

.field private volatile started:Z

.field private volatile targetSeq:I

.field private tcpServer:Ljava/net/ServerSocket;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->lastPeerSignature:Ljava/lang/String;

    const/16 v0, 0xa

    .line 58
    iput v0, p0, Lcom/rootclicker/app/LanLink;->localTarget:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterTargetSeq:I

    .line 60
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    .line 61
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/rootclicker/app/LanLink;->context:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/rootclicker/app/Prefs;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/rootclicker/app/Prefs;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rootclicker/app/LanLink;->selfName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rootclicker/app/LanLink;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    return p0
.end method

.method static synthetic access$200(Lcom/rootclicker/app/LanLink;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->sendTcpCommand()V

    return-void
.end method

.method static synthetic access$300(Lcom/rootclicker/app/LanLink;)Ljava/net/DatagramSocket;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rootclicker/app/LanLink;)Lcom/rootclicker/app/LanLink$Listener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/rootclicker/app/LanLink;->listener:Lcom/rootclicker/app/LanLink$Listener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rootclicker/app/LanLink;)Ljava/net/ServerSocket;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    return-object p0
.end method

.method private acquireMulticastLock()V
    .locals 2

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "RootClicker-lan"

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    .line 702
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 703
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :goto_0
    return-void
.end method

.method private applyMasterState(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jSONObject"
        }
    .end annotation

    const-string v0, "m"

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const-string v0, "gs"

    const/4 v2, -0x1

    .line 442
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 443
    iget v3, p0, Lcom/rootclicker/app/LanLink;->masterTargetSeq:I

    if-eq v0, v3, :cond_1

    .line 444
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterTargetSeq:I

    const-string v0, "g"

    .line 445
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 447
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v3, Lcom/rootclicker/app/LanLink$6;

    invoke-direct {v3, p0, v0}, Lcom/rootclicker/app/LanLink$6;-><init>(Lcom/rootclicker/app/LanLink;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const-string v0, "rs"

    .line 458
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 459
    iget v2, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    if-gez v2, :cond_2

    .line 460
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    goto :goto_0

    .line 461
    :cond_2
    iget v2, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    if-le v0, v2, :cond_3

    .line 462
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    .line 463
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v2, Lcom/rootclicker/app/LanLink$7;

    invoke-direct {v2, p0}, Lcom/rootclicker/app/LanLink$7;-><init>(Lcom/rootclicker/app/LanLink;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    const-string v0, "zr"

    .line 473
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 474
    iget v0, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    if-gez v0, :cond_4

    .line 475
    iput p1, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    goto :goto_1

    .line 476
    :cond_4
    iget v0, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    if-le p1, v0, :cond_5

    .line 477
    iput p1, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    .line 478
    iget-object p1, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/rootclicker/app/LanLink$8;

    invoke-direct {v0, p0}, Lcom/rootclicker/app/LanLink$8;-><init>(Lcom/rootclicker/app/LanLink;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private broadcastAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "255.255.255.255"

    .line 361
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 366
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 368
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 370
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_2
    return-object v0
.end method

.method private broadcastNow()V
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/LanLink$3;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$3;-><init>(Lcom/rootclicker/app/LanLink;)V

    const-string v2, "RootClicker-lan-send"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private closeQuietly(Ljava/net/DatagramSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datagramSocket"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 732
    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeQuietly(Ljava/net/ServerSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverSocket"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 741
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private isConnected(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private releaseMulticastLock()V
    .locals 1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 716
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-void
.end method

.method private sendTcpCommand()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->helloMessage()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/rootclicker/app/LanLink;->writeLine(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private startAcceptThread()V
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/LanLink$9;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$9;-><init>(Lcom/rootclicker/app/LanLink;)V

    const-string v2, "RootClicker-lan-accept"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->acceptThread:Ljava/lang/Thread;

    .line 542
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startBroadcastThread()V
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/LanLink$4;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$4;-><init>(Lcom/rootclicker/app/LanLink;)V

    const-string v2, "RootClicker-lan-broadcast"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->broadcastThread:Ljava/lang/Thread;

    .line 325
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startReceiveThread()V
    .locals 3

    .line 384
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/LanLink$5;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$5;-><init>(Lcom/rootclicker/app/LanLink;)V

    const-string v2, "RootClicker-lan-receive"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->receiveThread:Ljava/lang/Thread;

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public broadcastPresence()V
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "t"

    const-string v3, "hello"

    .line 336
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    .line 337
    iget-object v3, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 338
    iget-object v3, p0, Lcom/rootclicker/app/LanLink;->selfName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "m"

    const/4 v3, 0x1

    .line 340
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "g"

    .line 341
    iget v3, p0, Lcom/rootclicker/app/LanLink;->localTarget:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "gs"

    .line 342
    iget v3, p0, Lcom/rootclicker/app/LanLink;->targetSeq:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rs"

    .line 343
    iget v3, p0, Lcom/rootclicker/app/LanLink;->runSeq:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "zr"

    .line 344
    iget v3, p0, Lcom/rootclicker/app/LanLink;->resetSeq:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 347
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->broadcastAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 348
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 350
    :try_start_1
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    const v6, 0xb26e

    invoke-direct {v3, v1, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_2
    return-void
.end method

.method public closeQuietly(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 723
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public connect(Lcom/rootclicker/app/LanLink$Peer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "peer"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 204
    iget-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    iget-object v1, p1, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/LanLink$2;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/LanLink$2;-><init>(Lcom/rootclicker/app/LanLink;Lcom/rootclicker/app/LanLink$Peer;)V

    const-string p1, "RootClicker-lan-connect"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 243
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->postRole()V

    return-void
.end method

.method public dropPeerIfStale(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 603
    invoke-direct {p0, p1}, Lcom/rootclicker/app/LanLink;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/LanLink$Peer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x9c4

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getPeers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rootclicker/app/LanLink$Peer;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/LanLink$Peer;

    .line 117
    invoke-virtual {v2}, Lcom/rootclicker/app/LanLink$Peer;->copy()Lcom/rootclicker/app/LanLink$Peer;

    move-result-object v3

    .line 118
    iget-wide v4, v2, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    iput-wide v4, v3, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/rootclicker/app/LanLink$1;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$1;-><init>(Lcom/rootclicker/app/LanLink;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public handleAnnouncement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "str2"
        }
    .end annotation

    const-string v0, ""

    .line 408
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "hello"

    const-string v2, "t"

    .line 409
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "id"

    .line 410
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    .line 411
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "\u51b2\u699c\u5c0f\u80fd\u624b"

    goto :goto_0

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/LanLink$Peer;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    new-instance v8, Lcom/rootclicker/app/LanLink$Peer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/rootclicker/app/LanLink$Peer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 422
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    .line 423
    iget-object v2, v0, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/rootclicker/app/LanLink$Peer;->ip:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 424
    :cond_2
    iget-object v8, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    new-instance v9, Lcom/rootclicker/app/LanLink$Peer;

    iget-wide v6, v0, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    move-object v2, v9

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/rootclicker/app/LanLink$Peer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    const/4 p2, 0x0

    .line 428
    invoke-virtual {p0, p2}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 429
    iget-object p2, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 430
    invoke-direct {p0, v1}, Lcom/rootclicker/app/LanLink;->applyMasterState(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public handleInbound(Ljava/net/Socket;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 548
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    return-void

    .line 553
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "t"

    .line 554
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hello"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :cond_1
    const-string v3, "id"

    const-string v5, ""

    .line 558
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v5, "name"

    const-string v6, "\u4e3b\u673a"

    .line 563
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 564
    iget-object v5, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rootclicker/app/LanLink$Peer;

    if-nez v5, :cond_3

    .line 566
    iget-object v5, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    new-instance v12, Lcom/rootclicker/app/LanLink$Peer;

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v6, v12

    move-object v7, v3

    invoke-direct/range {v6 .. v11}, Lcom/rootclicker/app/LanLink$Peer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v5, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 568
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    .line 570
    :goto_0
    iget-object v5, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x1

    .line 571
    iput v5, p0, Lcom/rootclicker/app/LanLink;->masterTargetSeq:I

    .line 572
    iput v5, p0, Lcom/rootclicker/app/LanLink;->masterRunSeq:I

    .line 573
    iput v5, p0, Lcom/rootclicker/app/LanLink;->masterResetSeq:I

    .line 574
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    const/4 v5, 0x1

    .line 575
    invoke-virtual {p0, v5}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->postRole()V

    .line 577
    invoke-direct {p0, v2}, Lcom/rootclicker/app/LanLink;->applyMasterState(Lorg/json/JSONObject;)V

    .line 580
    :catch_0
    :cond_4
    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lcom/rootclicker/app/LanLink;->started:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 582
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 584
    invoke-direct {p0, v6}, Lcom/rootclicker/app/LanLink;->applyMasterState(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 591
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    .line 593
    invoke-virtual {p0, v3}, Lcom/rootclicker/app/LanLink;->dropPeerIfStale(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 595
    invoke-virtual {p0, v5}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->postRole()V

    .line 597
    throw v0

    .line 591
    :catch_1
    :cond_5
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    .line 593
    invoke-virtual {p0, v3}, Lcom/rootclicker/app/LanLink;->dropPeerIfStale(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 595
    invoke-virtual {p0, v5}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->postRole()V

    return-void

    .line 560
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public helloMessage()Ljava/lang/String;
    .locals 3

    .line 300
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    const-string v2, "hello"

    .line 301
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 302
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 303
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->selfName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"t\":\"hello\",\"id\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMaster()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSlave()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyNotice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/LanLink$12;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/LanLink$12;-><init>(Lcom/rootclicker/app/LanLink;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRole()V
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/LanLink$10;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/LanLink$10;-><init>(Lcom/rootclicker/app/LanLink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prunePeers()V
    .locals 10

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 493
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x1770

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 494
    iget-object v6, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rootclicker/app/LanLink$Peer;

    if-eqz v6, :cond_0

    .line 495
    iget-wide v6, v6, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    sub-long v6, v0, v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    .line 496
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 500
    iget-object v6, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rootclicker/app/LanLink$Peer;

    if-eqz v6, :cond_2

    .line 501
    iget-wide v6, v6, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    sub-long v6, v0, v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    .line 502
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    .line 506
    :cond_3
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 507
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rootclicker/app/LanLink$Peer;

    .line 508
    iget-object v9, v8, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/rootclicker/app/LanLink;->isConnected(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-wide v8, v8, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    sub-long v8, v0, v8

    cmp-long v8, v8, v4

    if-lez v8, :cond_4

    .line 509
    iget-object v3, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 514
    invoke-virtual {p0, v7}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    :cond_6
    return-void
.end method

.method public resyncMasterTarget()V
    .locals 1

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/rootclicker/app/LanLink;->masterTargetSeq:I

    return-void
.end method

.method public sendReset()V
    .locals 1

    .line 258
    iget v0, p0, Lcom/rootclicker/app/LanLink;->resetSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/LanLink;->resetSeq:I

    .line 259
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->broadcastNow()V

    return-void
.end method

.method public sendRun()V
    .locals 1

    .line 253
    iget v0, p0, Lcom/rootclicker/app/LanLink;->runSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/LanLink;->runSeq:I

    .line 254
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->broadcastNow()V

    return-void
.end method

.method public sendTarget(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 247
    iput p1, p0, Lcom/rootclicker/app/LanLink;->localTarget:I

    .line 248
    iget p1, p0, Lcom/rootclicker/app/LanLink;->targetSeq:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/rootclicker/app/LanLink;->targetSeq:I

    .line 249
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->broadcastNow()V

    return-void
.end method

.method public setListener(Lcom/rootclicker/app/LanLink$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/rootclicker/app/LanLink;->listener:Lcom/rootclicker/app/LanLink$Listener;

    return-void
.end method

.method public signalPeers(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 643
    iget-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->getPeers()Ljava/util/List;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/LanLink$Peer;

    .line 649
    iget-object v3, v2, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/rootclicker/app/LanLink$Peer;->ip:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/rootclicker/app/LanLink$Peer;->connected:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto :goto_1

    :cond_1
    const/16 v2, 0x30

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 651
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_3

    .line 652
    iget-object p1, p0, Lcom/rootclicker/app/LanLink;->lastPeerSignature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 655
    :cond_3
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->lastPeerSignature:Ljava/lang/String;

    .line 656
    iget-object p1, p0, Lcom/rootclicker/app/LanLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/rootclicker/app/LanLink$11;

    invoke-direct {v0, p0}, Lcom/rootclicker/app/LanLink$11;-><init>(Lcom/rootclicker/app/LanLink;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 143
    iget-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    .line 147
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->acquireMulticastLock()V

    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    move-object v3, v1

    check-cast v3, Ljava/net/SocketAddress;

    invoke-direct {v2, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    .line 150
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 151
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 152
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0xb26e

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    iget-object v2, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {p0, v2}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/DatagramSocket;)V

    .line 155
    iput-object v1, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    .line 158
    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    .line 159
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 160
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const v3, 0xb26f

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 163
    iput-object v1, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    .line 165
    :goto_1
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->startBroadcastThread()V

    .line 166
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->startReceiveThread()V

    .line 167
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->startAcceptThread()V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/rootclicker/app/LanLink;->started:Z

    .line 172
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    invoke-direct {p0, v0}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/DatagramSocket;)V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->udpSocket:Ljava/net/DatagramSocket;

    .line 174
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    invoke-direct {p0, v1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 175
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->tcpServer:Ljava/net/ServerSocket;

    .line 176
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->outbound:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->inbound:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 186
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 187
    invoke-direct {p0}, Lcom/rootclicker/app/LanLink;->releaseMulticastLock()V

    .line 188
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->broadcastThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 190
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->broadcastThread:Ljava/lang/Thread;

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->receiveThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 194
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->receiveThread:Ljava/lang/Thread;

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/rootclicker/app/LanLink;->acceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 198
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->acceptThread:Ljava/lang/Thread;

    .line 200
    :cond_4
    iput-object v0, p0, Lcom/rootclicker/app/LanLink;->listener:Lcom/rootclicker/app/LanLink$Listener;

    return-void
.end method

.method public updateConnectedFlags()V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/rootclicker/app/LanLink;->peers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rootclicker/app/LanLink$Peer;

    .line 615
    iget-object v2, v1, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/rootclicker/app/LanLink;->isConnected(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/rootclicker/app/LanLink$Peer;->connected:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rootclicker/app/LanLink;->selfName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public writeLine(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "socket",
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 686
    :cond_0
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 689
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 690
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
