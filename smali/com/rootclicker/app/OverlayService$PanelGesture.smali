.class final Lcom/rootclicker/app/OverlayService$PanelGesture;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanelGesture"
.end annotation


# instance fields
.field private active:Z

.field private downRawX:F

.field private downRawY:F

.field private final enable:Ljava/lang/Runnable;

.field private moved:Z

.field private final resize:Z

.field private startHeight:I

.field private startWidth:I

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "z"
        }
    .end annotation

    .line 2345
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    new-instance p1, Lcom/rootclicker/app/OverlayService$PanelGesture$1;

    invoke-direct {p1, p0}, Lcom/rootclicker/app/OverlayService$PanelGesture$1;-><init>(Lcom/rootclicker/app/OverlayService$PanelGesture;)V

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->enable:Ljava/lang/Runnable;

    .line 2346
    iput-boolean p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->resize:Z

    return-void
.end method


# virtual methods
.method m59lambda$new$0$comrootclickerappOverlayService$PanelGesture()V
    .locals 2

    const/4 v0, 0x1

    .line 2341
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    .line 2342
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->vibrate(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
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

    .line 2351
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2354
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto/16 :goto_1

    .line 2412
    :cond_1
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->enable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2413
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    goto/16 :goto_1

    .line 2385
    :cond_2
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    if-eqz p1, :cond_b

    .line 2386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->downRawX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->downRawY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2388
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    if-le v0, v3, :cond_3

    .line 2389
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->moved:Z

    .line 2391
    :cond_3
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v0

    .line 2392
    iget-boolean v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->resize:Z

    if-eqz v3, :cond_4

    .line 2393
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v5, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startWidth:I

    add-int/2addr v5, p1

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {v4, p1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p1

    aget v1, v0, v1

    iget-object v6, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v4, v5, p1, v1}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result p1

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2394
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startHeight:I

    add-int/2addr v3, p2

    const/high16 p2, 0x43700000    # 240.0f

    invoke-virtual {v1, p2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p2

    aget v0, v0, v2

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, p2, v0}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2395
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$2500(Lcom/rootclicker/app/OverlayService;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p2, v0}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 2396
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p1, p2}, Lcom/rootclicker/app/OverlayService;->access$2502(Lcom/rootclicker/app/OverlayService;I)I

    .line 2397
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    goto :goto_0

    .line 2400
    :cond_4
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v5, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startX:I

    add-int/2addr v5, p1

    aget p1, v0, v1

    invoke-static {v4}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p1, v6

    invoke-virtual {v4, v5, v1, p1}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result p1

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2401
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v4, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startY:I

    add-int/2addr v4, p2

    aget p2, v0, v2

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr p2, v0

    invoke-virtual {v3, v4, v1, p2}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2404
    :cond_5
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2600(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2372
    :cond_6
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->enable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2373
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->moved:Z

    if-eqz p1, :cond_8

    .line 2374
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1, v2}, Lcom/rootclicker/app/OverlayService;->access$2402(Lcom/rootclicker/app/OverlayService;Z)Z

    .line 2375
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->resize:Z

    if-eqz p1, :cond_7

    .line 2376
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p1, p2}, Lcom/rootclicker/app/OverlayService;->access$2502(Lcom/rootclicker/app/OverlayService;I)I

    .line 2377
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    .line 2379
    :cond_7
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v4}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p1, p2, v0, v3, v4}, Lcom/rootclicker/app/Prefs;->saveCountPanelRect(Landroid/content/Context;IIII)V

    .line 2380
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/rootclicker/app/OverlayService;->vibrate(I)V

    .line 2382
    :cond_8
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    goto :goto_1

    .line 2356
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->downRawX:F

    .line 2357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->downRawY:F

    .line 2358
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startX:I

    .line 2359
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startY:I

    .line 2360
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startWidth:I

    .line 2361
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p2}, Lcom/rootclicker/app/OverlayService;->access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->startHeight:I

    .line 2362
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->moved:Z

    .line 2363
    iget-boolean p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->resize:Z

    if-eqz p2, :cond_a

    .line 2364
    iput-boolean v1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    .line 2365
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->enable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2368
    :cond_a
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService$PanelGesture;->active:Z

    :catch_0
    :cond_b
    :goto_1
    return v2

    :cond_c
    :goto_2
    return v1
.end method
