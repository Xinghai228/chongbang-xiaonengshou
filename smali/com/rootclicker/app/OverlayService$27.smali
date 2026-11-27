.class Lcom/rootclicker/app/OverlayService$27;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$value:I


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
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1396
    iput p2, p0, Lcom/rootclicker/app/OverlayService$27;->val$value:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$27;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$27;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$27;->val$value:I

    invoke-virtual {v0, v1, p1}, Lcom/rootclicker/app/OverlayService;->m46lambda$refreshCountGrid$0$comrootclickerappOverlayService(ILandroid/view/View;)V

    return-void
.end method
