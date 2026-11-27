.class Lcom/rootclicker/app/LanLink$10;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->postRole()V
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

    .line 624
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$400(Lcom/rootclicker/app/LanLink;)Lcom/rootclicker/app/LanLink$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$600(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$600(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/rootclicker/app/LanLink$Listener;->onRoleChanged(II)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$10;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/rootclicker/app/LanLink$Listener;->onRoleChanged(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 634
    invoke-interface {v0, v1, v1}, Lcom/rootclicker/app/LanLink$Listener;->onRoleChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method
