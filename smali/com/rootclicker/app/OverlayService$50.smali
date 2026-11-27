.class Lcom/rootclicker/app/OverlayService$50;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->m31lambda$clockRelease$0$comrootclickerappOverlayService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2153
    iput p2, p0, Lcom/rootclicker/app/OverlayService$50;->val$i:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2156
    iget v0, p0, Lcom/rootclicker/app/OverlayService$50;->val$i:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1300(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1400(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$1102(Lcom/rootclicker/app/OverlayService;Z)Z

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u8fbe\u5230\u76ee\u6807 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$200(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6b21\uff0c\u81ea\u52a8\u505c\u6b62"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1, v0}, Lcom/rootclicker/app/OverlayService;->access$1900(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V

    .line 2162
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1, v0}, Lcom/rootclicker/app/OverlayService;->access$2000(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V

    .line 2164
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/Prefs;->getShowAfterRun(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2100(Lcom/rootclicker/app/OverlayService;)V

    goto :goto_0

    .line 2169
    :cond_1
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2200(Lcom/rootclicker/app/OverlayService;)V

    .line 2171
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rootclicker/app/OverlayService$50$1;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$50$1;-><init>(Lcom/rootclicker/app/OverlayService$50;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2177
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rootclicker/app/OverlayService$50$2;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$50$2;-><init>(Lcom/rootclicker/app/OverlayService$50;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
