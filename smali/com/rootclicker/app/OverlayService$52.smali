.class Lcom/rootclicker/app/OverlayService$52;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->reconfigureRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$copies:Ljava/util/ArrayList;

.field final synthetic val$displaySize:[I

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Ljava/util/ArrayList;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$copies",
            "val$sub",
            "val$displaySize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2245
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$52;->val$copies:Ljava/util/ArrayList;

    iput p3, p0, Lcom/rootclicker/app/OverlayService$52;->val$sub:I

    iput-object p4, p0, Lcom/rootclicker/app/OverlayService$52;->val$displaySize:[I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$52;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2248
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$52;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$52;->val$copies:Ljava/util/ArrayList;

    iget v2, p0, Lcom/rootclicker/app/OverlayService$52;->val$sub:I

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$52;->val$displaySize:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rootclicker/app/OverlayService;->m45lambda$reconfigureRunning$0$comrootclickerappOverlayService(Ljava/util/List;I[I)V

    return-void
.end method
