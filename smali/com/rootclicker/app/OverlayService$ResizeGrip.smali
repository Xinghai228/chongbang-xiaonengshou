.class final Lcom/rootclicker/app/OverlayService$ResizeGrip;
.super Landroid/view/View;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResizeGrip"
.end annotation


# instance fields
.field private final grip:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2423
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->this$0:Lcom/rootclicker/app/OverlayService;

    .line 2424
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2425
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->grip:Landroid/graphics/Paint;

    const/16 v2, 0xa0

    const/16 v3, 0xac

    const/16 v4, 0x9e

    .line 2426
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2427
    invoke-virtual {p1, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2428
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2429
    new-instance v0, Lcom/rootclicker/app/OverlayService$PanelGesture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/rootclicker/app/OverlayService$PanelGesture;-><init>(Lcom/rootclicker/app/OverlayService;Z)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService$ResizeGrip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p1, "\u8c03\u6574\u7a97\u53e3\u5927\u5c0f"

    .line 2430
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService$ResizeGrip;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 2435
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2436
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService$ResizeGrip;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2437
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService$ResizeGrip;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v7, v1

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_0

    .line 2439
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    mul-int/2addr v1, v8

    int-to-float v1, v1

    sub-float v2, v0, v1

    sub-float v5, v7, v1

    .line 2440
    iget-object v6, p0, Lcom/rootclicker/app/OverlayService$ResizeGrip;->grip:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v7

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
