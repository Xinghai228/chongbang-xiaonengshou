.class Lcom/rootclicker/app/RootClient$1;
.super Ljava/lang/Object;
.source "RootClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/RootClient;->start(Landroid/content/Context;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/RootClient;

.field final synthetic val$bufferedReader:Ljava/io/BufferedReader;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$strArr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/RootClient;Ljava/io/BufferedReader;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$bufferedReader",
            "val$countDownLatch",
            "val$strArr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p2, p0, Lcom/rootclicker/app/RootClient$1;->val$bufferedReader:Ljava/io/BufferedReader;

    iput-object p3, p0, Lcom/rootclicker/app/RootClient$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/rootclicker/app/RootClient$1;->val$strArr:[Ljava/lang/String;

    iput-object p1, p0, Lcom/rootclicker/app/RootClient$1;->this$0:Lcom/rootclicker/app/RootClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/rootclicker/app/RootClient$1;->this$0:Lcom/rootclicker/app/RootClient;

    iget-object v1, p0, Lcom/rootclicker/app/RootClient$1;->val$bufferedReader:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/rootclicker/app/RootClient$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/rootclicker/app/RootClient$1;->val$strArr:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/rootclicker/app/RootClient;->m60lambda$start$0$comrootclickerappRootClient(Ljava/io/BufferedReader;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/String;)V

    return-void
.end method
