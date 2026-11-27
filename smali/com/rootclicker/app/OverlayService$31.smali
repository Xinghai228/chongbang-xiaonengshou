.class Lcom/rootclicker/app/OverlayService$31;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->m52lambda$startRun$0$comrootclickerappOverlayService(Z[IILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$i:I

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$i",
            "val$ok"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1773
    iput p2, p0, Lcom/rootclicker/app/OverlayService$31;->val$i:I

    iput-boolean p3, p0, Lcom/rootclicker/app/OverlayService$31;->val$ok:Z

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$31;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1776
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$31;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$31;->val$i:I

    iget-boolean v2, p0, Lcom/rootclicker/app/OverlayService$31;->val$ok:Z

    invoke-virtual {v0, v1, v2}, Lcom/rootclicker/app/OverlayService;->m53lambda$startRun$1$comrootclickerappOverlayService(IZ)V

    return-void
.end method
