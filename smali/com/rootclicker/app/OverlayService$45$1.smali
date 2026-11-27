.class Lcom/rootclicker/app/OverlayService$45$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rootclicker/app/OverlayService$45;

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService$45;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2042
    iput p2, p0, Lcom/rootclicker/app/OverlayService$45$1;->val$session:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2045
    iget v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->val$session:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v1, v1, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1300(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1400(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v1, v1, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$200(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$902(Lcom/rootclicker/app/OverlayService;I)I

    .line 2049
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v1, v1, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$900(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 2050
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1600(Lcom/rootclicker/app/OverlayService;)V

    .line 2051
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$45$1;->this$1:Lcom/rootclicker/app/OverlayService$45;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$45;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$45$1;->val$session:I

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->m31lambda$clockRelease$0$comrootclickerappOverlayService(I)V

    :cond_1
    :goto_0
    return-void
.end method
