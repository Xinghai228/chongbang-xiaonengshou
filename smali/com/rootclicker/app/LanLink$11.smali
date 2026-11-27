.class Lcom/rootclicker/app/LanLink$11;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->signalPeers(Z)V
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

    .line 656
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$11;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$11;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$400(Lcom/rootclicker/app/LanLink;)Lcom/rootclicker/app/LanLink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$11;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$11;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->getPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rootclicker/app/LanLink$Listener;->onPeers(Ljava/util/List;)V

    :cond_0
    return-void
.end method
