.class Lcom/rootclicker/app/OverlayService$41$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService$41;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rootclicker/app/OverlayService$41;

.field final synthetic val$progress:I

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService$41;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$session",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1967
    iput p2, p0, Lcom/rootclicker/app/OverlayService$41$1;->val$session:I

    iput p3, p0, Lcom/rootclicker/app/OverlayService$41$1;->val$progress:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1970
    iget v0, p0, Lcom/rootclicker/app/OverlayService$41$1;->val$session:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v1, v1, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1300(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1400(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$41$1;->val$progress:I

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$902(Lcom/rootclicker/app/OverlayService;I)I

    .line 1974
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v1, v1, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$900(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 1975
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$41$1;->this$1:Lcom/rootclicker/app/OverlayService$41;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1600(Lcom/rootclicker/app/OverlayService;)V

    :cond_1
    :goto_0
    return-void
.end method
