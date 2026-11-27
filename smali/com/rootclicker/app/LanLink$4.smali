.class Lcom/rootclicker/app/LanLink$4;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->startBroadcastThread()V
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

    .line 311
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$4;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$4;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$4;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->broadcastPresence()V

    .line 316
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$4;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->prunePeers()V

    const-wide/16 v0, 0x5dc

    .line 318
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
