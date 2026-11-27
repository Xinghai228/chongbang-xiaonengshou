.class Lcom/rootclicker/app/OverlayService$41;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->startSequentialClock(IJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$progress:I

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$session",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1964
    iput p2, p0, Lcom/rootclicker/app/OverlayService$41;->val$session:I

    iput p3, p0, Lcom/rootclicker/app/OverlayService$41;->val$progress:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1967
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$41;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rootclicker/app/OverlayService$41$1;

    iget v2, p0, Lcom/rootclicker/app/OverlayService$41;->val$session:I

    iget v3, p0, Lcom/rootclicker/app/OverlayService$41;->val$progress:I

    invoke-direct {v1, p0, v2, v3}, Lcom/rootclicker/app/OverlayService$41$1;-><init>(Lcom/rootclicker/app/OverlayService$41;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
