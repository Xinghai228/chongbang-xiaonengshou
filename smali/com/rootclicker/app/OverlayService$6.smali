.class Lcom/rootclicker/app/OverlayService$6;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Lcom/rootclicker/app/LanLink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->startLanLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotice(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onPeers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rootclicker/app/LanLink$Peer;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->refreshRelationPanel()V

    return-void
.end method

.method public onRemoteReset()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->applyRemoteReset()V

    return-void
.end method

.method public onRemoteRun()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->startRun(Z)V

    return-void
.end method

.method public onRemoteTarget(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0, p1}, Lcom/rootclicker/app/OverlayService;->applyRemoteTarget(I)V

    return-void
.end method

.method public onRoleChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i2"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const-string p2, "\u5f53\u524d\u5173\u7cfb\uff1a\u4ece"

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "\u6ca1\u6709\u4ece\u5c5e\u5173\u7cfb"

    .line 258
    :goto_0
    invoke-static {v0, p2}, Lcom/rootclicker/app/OverlayService;->access$002(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p2}, Lcom/rootclicker/app/OverlayService;->updateRelationStatus()V

    .line 260
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p2}, Lcom/rootclicker/app/OverlayService;->refreshRelationPanel()V

    if-ne p1, v2, :cond_2

    .line 261
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;

    move-result-object p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$6;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$200(Lcom/rootclicker/app/OverlayService;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rootclicker/app/LanLink;->sendTarget(I)V

    :cond_2
    return-void
.end method
