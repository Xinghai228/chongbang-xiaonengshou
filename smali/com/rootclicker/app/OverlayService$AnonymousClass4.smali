.class Lcom/rootclicker/app/OverlayService$AnonymousClass4;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass4"
.end annotation


# instance fields
.field private downX:F

.field private downY:F

.field private longPressed:Z

.field private final resetRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1444
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    new-instance p1, Lcom/rootclicker/app/OverlayService$AnonymousClass4$1;

    invoke-direct {p1, p0}, Lcom/rootclicker/app/OverlayService$AnonymousClass4$1;-><init>(Lcom/rootclicker/app/OverlayService$AnonymousClass4;)V

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->resetRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method m57lambda$new$0$comrootclickerappOverlayService$4()V
    .locals 3

    .line 1449
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 1450
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/rootclicker/app/Prefs;->setTarget(Landroid/content/Context;I)V

    .line 1451
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$902(Lcom/rootclicker/app/OverlayService;I)I

    .line 1452
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0, v2}, Lcom/rootclicker/app/OverlayService;->access$202(Lcom/rootclicker/app/OverlayService;I)I

    .line 1453
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$1002(Lcom/rootclicker/app/OverlayService;Z)Z

    .line 1454
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$1102(Lcom/rootclicker/app/OverlayService;Z)Z

    .line 1455
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    .line 1456
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    .line 1457
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V

    .line 1458
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    const-string v1, "\u5df2\u91cd\u7f6e\uff1a\u5f53\u524d 0 \u6b21 / \u76ee\u6807 10 \u6b21"

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Lcom/rootclicker/app/MainActivity;->requestExternalReset()V

    .line 1460
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->sendReset()V

    :cond_0
    const/4 v0, 0x1

    .line 1463
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->longPressed:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    .line 1468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 1480
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->downX:F

    sub-float/2addr p1, v0

    .line 1481
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->downY:F

    sub-float/2addr p2, v0

    .line 1482
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p2, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 1483
    :cond_1
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1477
    :cond_2
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1470
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->longPressed:Z

    .line 1471
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->downX:F

    .line 1472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->downY:F

    .line 1473
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->resetRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x514

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1488
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$AnonymousClass4;->longPressed:Z

    return p1
.end method
