package com.rootclicker.app;

import android.content.Context;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public final class RootClient {
    private static final String TMP_BIN = "/data/local/tmp/rk_clicker";
    private volatile String lastError;
    private OutputStream os;
    private Process proc;
    private BufferedReader reader;
    private Thread readerThread;
    private volatile boolean ready;

    public static boolean isRooted() {
        try {
            Process processStart = new ProcessBuilder("su", "-c", "id").redirectErrorStream(true).start();
            if (processStart.waitFor(5L, TimeUnit.SECONDS)) {
                boolean zContains = readAll(processStart.getInputStream()).contains("uid=0");
                if (processStart != null) {
                    processStart.destroy();
                }
                return zContains;
            }
            processStart.destroy();
            if (processStart != null) {
                processStart.destroy();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toString("UTF-8");
            }
        }
    }

    private static String resolveBinary(Context context) throws IOException {
        ZipEntry nextEntry;
        File file = new File(context.getApplicationInfo().nativeLibraryDir, "librootclick.so");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        File file2 = new File(context.getCacheDir(), "librootclick.so");
        if (file2.exists() && file2.length() > 0) {
            return file2.getAbsolutePath();
        }
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(context.getApplicationInfo().sourceDir));
        do {
            try {
                nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    throw new IOException("APK 中缺少 arm64-v8a/librootclick.so");
                }
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (!nextEntry.getName().endsWith("lib/arm64-v8a/librootclick.so"));
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[8192];
        while (true) {
            int i = zipInputStream.read(bArr);
            if (i != -1) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                fileOutputStream.close();
                String absolutePath = file2.getAbsolutePath();
                zipInputStream.close();
                return absolutePath;
            }
        }
    }

    public synchronized boolean start(Context context, int i, int i2) {
        stop();
        this.lastError = null;
        try {
            Process processStart = new ProcessBuilder("su", "-c", "cp '" + resolveBinary(context) + "' /data/local/tmp/rk_clicker && chmod 755 /data/local/tmp/rk_clicker").redirectErrorStream(true).start();
            if (!processStart.waitFor(10L, TimeUnit.SECONDS)) {
                processStart.destroy();
                this.lastError = "复制注入器超时（可能未授权 Root）";
                return false;
            }
            String all = readAll(processStart.getInputStream());
            if (processStart.exitValue() != 0) {
                this.lastError = "复制注入器失败: " + all.trim();
                return false;
            }
            Process processStart2 = new ProcessBuilder("su", "-c", "exec /data/local/tmp/rk_clicker " + i + " " + i2).redirectErrorStream(true).start();
            this.proc = processStart2;
            this.os = processStart2.getOutputStream();
            final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.proc.getInputStream(), StandardCharsets.UTF_8));
            this.reader = bufferedReader;
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            final String[] strArr = new String[1];
            Thread thread = new Thread(new Runnable(this) { // from class: com.rootclicker.app.RootClient.1
                final /* synthetic */ RootClient this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m60lambda$start$0$comrootclickerappRootClient(bufferedReader, countDownLatch, strArr);
                }
            }, "RootClicker-native");
            this.readerThread = thread;
            thread.setDaemon(true);
            this.readerThread.start();
            if (countDownLatch.await(10L, TimeUnit.SECONDS) && this.ready) {
                return true;
            }
            String str = strArr[0];
            if (str == null) {
                str = "注入进程未就绪（请检查 Root 和 uinput 支持）";
            }
            this.lastError = str;
            stop();
            return false;
        } catch (Exception e) {
            this.lastError = e.toString();
            stop();
            return false;
        }
    }

    void m60lambda$start$0$comrootclickerappRootClient(BufferedReader bufferedReader, CountDownLatch countDownLatch, String[] strArr) {
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    if (line.startsWith("READY")) {
                        this.ready = true;
                        countDownLatch.countDown();
                    } else if (line.startsWith("ERR")) {
                        strArr[0] = line;
                        countDownLatch.countDown();
                    }
                } else {
                    countDownLatch.countDown();
                    return;
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                countDownLatch.countDown();
                throw th;
            }
        }
    }

    public synchronized void send(String str) {
        try {
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                outputStream.write((str + "\n").getBytes(StandardCharsets.UTF_8));
                this.os.flush();
            }
        } catch (IOException unused) {
        }
    }

    public synchronized void configure(int i, int i2, List<ClickPoint> list, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("CFG ");
        sb.append(i);
        sb.append(' ');
        sb.append(i2);
        sb.append(' ');
        sb.append(list.size());
        for (ClickPoint clickPoint : list) {
            sb.append(' ');
            sb.append(Math.max(0, Math.min(i3 - 1, Math.round(clickPoint.nx * i3))));
            sb.append(' ');
            sb.append(Math.max(0, Math.min(i4 - 1, Math.round(clickPoint.ny * i4))));
        }
        send(sb.toString());
    }

    public synchronized boolean isAlive() {
        Process process;
        process = this.proc;
        return process != null && process.isAlive();
    }

    public synchronized void stop() {
        send("QUIT");
        Process process = this.proc;
        if (process != null) {
            process.destroy();
        }
        try {
            BufferedReader bufferedReader = this.reader;
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        } catch (IOException unused) {
        }
        this.os = null;
        this.reader = null;
        this.proc = null;
        this.readerThread = null;
        this.ready = false;
    }

    public String getLastError() {
        return this.lastError;
    }
}
