.class Lcom/rootclicker/app/LanLink$9;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->startAcceptThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/LanLink;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/LanLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$500(Lcom/rootclicker/app/LanLink;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    .line 531
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 532
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1, v0}, Lcom/rootclicker/app/LanLink;->handleInbound(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 534
    :catch_1
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1, v0}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V

    .line 535
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$9;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method
