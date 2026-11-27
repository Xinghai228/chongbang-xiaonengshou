.class Lcom/rootclicker/app/OverlayService$30;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->startRun(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$copies:Ljava/util/ArrayList;

.field final synthetic val$displaySize:[I

.field final synthetic val$i:I

.field final synthetic val$z2:Z


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Z[IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$z2",
            "val$displaySize",
            "val$i",
            "val$copies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1752
    iput-boolean p2, p0, Lcom/rootclicker/app/OverlayService$30;->val$z2:Z

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$30;->val$displaySize:[I

    iput p4, p0, Lcom/rootclicker/app/OverlayService$30;->val$i:I

    iput-object p5, p0, Lcom/rootclicker/app/OverlayService$30;->val$copies:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$30;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1755
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$30;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService$30;->val$z2:Z

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$30;->val$displaySize:[I

    iget v3, p0, Lcom/rootclicker/app/OverlayService$30;->val$i:I

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$30;->val$copies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rootclicker/app/OverlayService;->m52lambda$startRun$0$comrootclickerappOverlayService(Z[IILjava/util/List;)V

    return-void
.end method
