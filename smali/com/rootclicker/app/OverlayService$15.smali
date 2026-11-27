.class Lcom/rootclicker/app/OverlayService$15;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->smallSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$dp:I

.field final synthetic val$dp2:I

.field final synthetic val$dp3:I

.field final synthetic val$frameLayout:Landroid/widget/FrameLayout;

.field final synthetic val$i:I

.field final synthetic val$viewArr:[Landroid/view/View;

.field final synthetic val$zArr:[Z


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;[Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$zArr",
            "val$viewArr",
            "val$dp",
            "val$i",
            "val$dp3",
            "val$frameLayout",
            "val$dp2",
            "val$consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 853
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$15;->val$zArr:[Z

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$15;->val$viewArr:[Landroid/view/View;

    iput p4, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp:I

    iput p5, p0, Lcom/rootclicker/app/OverlayService$15;->val$i:I

    iput p6, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp3:I

    iput-object p7, p0, Lcom/rootclicker/app/OverlayService$15;->val$frameLayout:Landroid/widget/FrameLayout;

    iput p8, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp2:I

    iput-object p9, p0, Lcom/rootclicker/app/OverlayService$15;->val$consumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$15;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view2"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$15;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$15;->val$zArr:[Z

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$15;->val$viewArr:[Landroid/view/View;

    iget v3, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp:I

    iget v4, p0, Lcom/rootclicker/app/OverlayService$15;->val$i:I

    iget v5, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp3:I

    iget-object v6, p0, Lcom/rootclicker/app/OverlayService$15;->val$frameLayout:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/rootclicker/app/OverlayService$15;->val$dp2:I

    iget-object v8, p0, Lcom/rootclicker/app/OverlayService$15;->val$consumer:Ljava/util/function/Consumer;

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/rootclicker/app/OverlayService;->m49lambda$smallSwitch$0$comrootclickerappOverlayService([Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method
