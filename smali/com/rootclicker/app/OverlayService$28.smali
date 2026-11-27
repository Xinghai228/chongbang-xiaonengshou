.class Lcom/rootclicker/app/OverlayService$28;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$linearLayout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1540
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$28;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$28;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1543
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$28;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$28;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->m48lambda$scrollTargetRowToTop$0$comrootclickerappOverlayService(Landroid/view/View;)V

    return-void
.end method
