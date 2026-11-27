package com.rootclicker.app;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class KeyInterruptMonitor {
    public static final int POWER = 116;
    public static final int VOLUME_DOWN = 114;
    public static final int VOLUME_UP = 115;
    private volatile boolean active;
    private final Callback callback;
    private Process process;
    private final String tempDir = "/data/local/tmp/rk_keys_" + Long.toHexString(System.nanoTime());
    private final AtomicBoolean reported = new AtomicBoolean();

    public interface Callback {
        void onInterrupt(int i);
    }

    public KeyInterruptMonitor(Callback callback) {
        this.callback = callback;
    }

    public synchronized void start() {
        stop();
        this.reported.set(false);
        String str = this.tempDir + "/pids";
        try {
            this.process = new ProcessBuilder("su", "-c", "mkdir -p " + this.tempDir + "; : > " + str + "; for f in /dev/input/event*; do [ -e \"$f\" ] || continue; cat \"$f\" 2>/dev/null & echo $! >> " + str + "; done; wait").start();
            this.active = true;
            final InputStream inputStream = this.process.getInputStream();
            Thread thread = new Thread(new Runnable(this) { // from class: com.rootclicker.app.KeyInterruptMonitor.1
                final /* synthetic */ KeyInterruptMonitor this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m0lambda$start$0$comrootclickerappKeyInterruptMonitor(inputStream);
                }
            }, "RootClicker-keys");
            thread.setDaemon(true);
            thread.start();
        } catch (IOException unused) {
            this.active = false;
            this.process = null;
        }
    }

    public void m0lambda$start$0$comrootclickerappKeyInterruptMonitor(InputStream inputStream) {
        byte[] bArr = new byte[24];
        while (this.active && readFully(inputStream, bArr)) {
            try {
                int iU16 = u16(bArr, 16);
                int iU17 = u16(bArr, 18);
                int iS32 = s32(bArr, 20);
                if (iU16 == 1 && iS32 == 1 && (iU17 == 114 || iU17 == 115 || iU17 == 116)) {
                    if (this.reported.compareAndSet(false, true)) {
                        this.callback.onInterrupt(iU17);
                    } else {
                        continue;
                    }
                }
            } catch (IOException unused) {
                return;
            }
        }
    }

    private static boolean readFully(InputStream inputStream, byte[] bArr) throws IOException {
        int i = 0;
        while (i < bArr.length) {
            int i2 = inputStream.read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                return false;
            }
            i += i2;
        }
        return true;
    }

    private static int u16(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    private static int s32(byte[] bArr, int i) {
        return ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    public synchronized void stop() {
        try {
            this.active = false;
            Process process = this.process;
            Process processStart = null;
            this.process = null;
            try {
                String str = this.tempDir + "/pids";
                processStart = new ProcessBuilder("su", "-c", "if [ -f " + str + " ]; then while read p; do kill $p 2>/dev/null; done < " + str + "; fi; rm -rf " + this.tempDir).start();
                processStart.waitFor(2L, TimeUnit.SECONDS);
                if (processStart != null) {
                    processStart.destroy();
                }
                if (processStart != null) {
                    processStart.destroy();
                }
                if (process != null) {
                    process.destroy();
                }
            } catch (Throwable th) {
                if (processStart != null) {
                    processStart.destroy();
                }
                if (process != null) {
                    process.destroy();
                }
                throw th;
            }
        } catch (Exception unused) {
        }
    }
}
