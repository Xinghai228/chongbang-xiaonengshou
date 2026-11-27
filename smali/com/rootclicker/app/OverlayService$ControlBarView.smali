.class final Lcom/rootclicker/app/OverlayService$ControlBarView;
.super Landroid/view/View;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ControlBarView"
.end annotation


# instance fields
.field private downRawX:F

.field private downRawY:F

.field private longFired:Z

.field private final longPressAction:Ljava/lang/Runnable;

.field private moved:Z

.field private final paint:Landroid/graphics/Paint;

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2475
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    .line 2476
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2477
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->paint:Landroid/graphics/Paint;

    .line 2478
    new-instance v1, Lcom/rootclicker/app/OverlayService$ControlBarView$1;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$ControlBarView$1;-><init>(Lcom/rootclicker/app/OverlayService$ControlBarView;)V

    iput-object v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longPressAction:Ljava/lang/Runnable;

    const/16 v1, 0x3d

    const/16 v2, 0x46

    const/16 v3, 0x3c

    .line 2484
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xfa

    const/16 v1, 0xfc

    .line 2485
    invoke-static {v0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService$ControlBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "\u51b2\u699c\u5c0f\u80fd\u624b \u63a7\u5236\u6761"

    .line 2486
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService$ControlBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method m58lambda$new$0$comrootclickerappOverlayService$ControlBarView()V
    .locals 2

    const/4 v0, 0x1

    .line 2469
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longFired:Z

    .line 2470
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->vibrate(I)V

    .line 2471
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    const-string v1, "\u5df2\u957f\u6309\u5173\u95ed\u60ac\u6d6e\u7a97"

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->closeFloatingWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2491
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2492
    invoke-virtual/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService$ControlBarView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2493
    invoke-virtual/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService$ControlBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2494
    iget-object v4, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2495
    iget-object v4, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 2496
    iget-object v5, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_0

    add-float v10, v4, v5

    div-float v11, v5, v2

    add-int/lit8 v12, v9, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v12, v1

    add-float v14, v12, v11

    add-int/lit8 v12, v7, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v12, v3

    add-float v15, v12, v11

    add-float v16, v14, v4

    add-float v17, v15, v4

    .line 2503
    iget-object v10, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v10, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v11, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/rootclicker/app/OverlayService$ControlBarView;->paint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .line 2510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2543
    :cond_0
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->moved:Z

    .line 2544
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longPressAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2528
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->downRawX:F

    sub-float/2addr v0, v1

    .line 2529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->downRawY:F

    sub-float/2addr p1, v1

    .line 2530
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v3, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v3, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 2531
    :cond_2
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->moved:Z

    .line 2532
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longPressAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2534
    :cond_3
    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->moved:Z

    if-eqz v1, :cond_6

    .line 2535
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->startX:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2536
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->startY:I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2537
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2600(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2538
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->positionCountPanel()V

    goto :goto_0

    .line 2521
    :cond_4
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longPressAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2522
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->moved:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longFired:Z

    if-nez p1, :cond_6

    .line 2523
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->toggleCountPanel()V

    goto :goto_0

    .line 2512
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->downRawX:F

    .line 2513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->downRawY:F

    .line 2514
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->startX:I

    .line 2515
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->startY:I

    .line 2516
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->moved:Z

    .line 2517
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longFired:Z

    .line 2518
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$ControlBarView;->longPressAction:Ljava/lang/Runnable;

    const-wide/16 v3, 0x514

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return v2
.end method
