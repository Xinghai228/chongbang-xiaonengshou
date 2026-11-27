.class public final Lcom/rootclicker/app/KeyInterruptMonitor;
.super Ljava/lang/Object;
.source "KeyInterruptMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rootclicker/app/KeyInterruptMonitor$Callback;
    }
.end annotation


# static fields
.field public static final POWER:I = 0x74

.field public static final VOLUME_DOWN:I = 0x72

.field public static final VOLUME_UP:I = 0x73


# instance fields
.field private volatile active:Z

.field private final callback:Lcom/rootclicker/app/KeyInterruptMonitor$Callback;

.field private process:Ljava/lang/Process;

.field private final reported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tempDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rootclicker/app/KeyInterruptMonitor$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/local/tmp/rk_keys_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->tempDir:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    iput-object p1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->callback:Lcom/rootclicker/app/KeyInterruptMonitor$Callback;

    return-void
.end method

.method private static readFully(Ljava/io/InputStream;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "bArr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 70
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 71
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static s32([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bArr",
            "i"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x3

    .line 85
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static u16([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bArr",
            "i"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 81
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public m0lambda$start$0$comrootclickerappKeyInterruptMonitor(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 54
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->active:Z

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lcom/rootclicker/app/KeyInterruptMonitor;->readFully(Ljava/io/InputStream;[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    .line 55
    invoke-static {v0, v1}, Lcom/rootclicker/app/KeyInterruptMonitor;->u16([BI)I

    move-result v1

    const/16 v2, 0x12

    .line 56
    invoke-static {v0, v2}, Lcom/rootclicker/app/KeyInterruptMonitor;->u16([BI)I

    move-result v2

    const/16 v3, 0x14

    .line 57
    invoke-static {v0, v3}, Lcom/rootclicker/app/KeyInterruptMonitor;->s32([BI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    const/16 v1, 0x72

    if-eq v2, v1, :cond_1

    const/16 v1, 0x73

    if-eq v2, v1, :cond_1

    const/16 v1, 0x74

    if-ne v2, v1, :cond_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->callback:Lcom/rootclicker/app/KeyInterruptMonitor$Callback;

    invoke-interface {v1, v2}, Lcom/rootclicker/app/KeyInterruptMonitor$Callback;->onInterrupt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 7

    const-string v0, "mkdir -p "

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/rootclicker/app/KeyInterruptMonitor;->stop()V

    .line 29
    iget-object v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->tempDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/pids"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "su"

    aput-object v5, v4, v2

    const-string v5, "-c"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->tempDir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; : > "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; for f in /dev/input/event*; do [ -e \"$f\" ] || continue; cat \"$f\" 2>/dev/null & echo $! >> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; done; wait"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->process:Ljava/lang/Process;

    .line 33
    iput-boolean v6, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->active:Z

    .line 34
    iget-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/rootclicker/app/KeyInterruptMonitor$1;

    invoke-direct {v3, p0, v0}, Lcom/rootclicker/app/KeyInterruptMonitor$1;-><init>(Lcom/rootclicker/app/KeyInterruptMonitor;Ljava/io/InputStream;)V

    const-string v0, "RootClicker-keys"

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->active:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->process:Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 8

    const-string v0, "if [ -f "

    monitor-enter p0

    const/4 v1, 0x0

    .line 89
    :try_start_0
    iput-boolean v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->active:Z

    .line 90
    iget-object v2, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->process:Ljava/lang/Process;

    const/4 v3, 0x0

    .line 92
    iput-object v3, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->process:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->tempDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/pids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "su"

    aput-object v7, v6, v1

    const-string v1, "-c"

    const/4 v7, 0x1

    aput-object v1, v6, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]; then while read p; do kill $p 2>/dev/null; done < "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; fi; rm -rf "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor;->tempDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_1
    if-eqz v2, :cond_4

    .line 106
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 103
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_2
    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 108
    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :catch_0
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
