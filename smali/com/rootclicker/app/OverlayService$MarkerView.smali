.class final Lcom/rootclicker/app/OverlayService$MarkerView;
.super Landroid/view/View;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MarkerView"
.end annotation


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private final label:Ljava/lang/String;

.field private final stroke:Landroid/graphics/Paint;

.field private final text:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "str"
        }
    .end annotation

    .line 2557
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->this$0:Lcom/rootclicker/app/OverlayService;

    .line 2558
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2559
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->label:Ljava/lang/String;

    .line 2560
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->fill:Landroid/graphics/Paint;

    .line 2561
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->stroke:Landroid/graphics/Paint;

    .line 2562
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->text:Landroid/graphics/Paint;

    const/16 v0, 0xb5

    const/16 v3, 0x5a

    const/16 v4, 0xdc

    const/16 v5, 0x56

    .line 2563
    invoke-static {v4, v5, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, -0x1

    .line 2564
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2565
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2566
    invoke-virtual {p1, v0}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2567
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2568
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2569
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 2574
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2575
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService$MarkerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2576
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService$MarkerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 2577
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2578
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v3, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2579
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->text:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->this$0:Lcom/rootclicker/app/OverlayService;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2580
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->text:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    iget-object v5, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->text:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$MarkerView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
