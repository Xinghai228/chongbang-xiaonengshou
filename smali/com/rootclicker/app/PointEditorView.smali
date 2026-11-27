.class public final Lcom/rootclicker/app/PointEditorView;
.super Landroid/view/View;
.source "PointEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rootclicker/app/PointEditorView$Callback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/rootclicker/app/PointEditorView$Callback;

.field private final cross:Landroid/graphics/Paint;

.field private final density:F

.field private final doneRect:Landroid/graphics/RectF;

.field private final draft:Lcom/rootclicker/app/ClickPoint;

.field private dragging:Z

.field private final fill:Landroid/graphics/Paint;

.field private final hintRect:Landroid/graphics/RectF;

.field private final label:Ljava/lang/String;

.field private final panel:Landroid/graphics/Paint;

.field private pendingDone:Z

.field private final stroke:Landroid/graphics/Paint;

.field private final text:Landroid/graphics/Paint;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/rootclicker/app/ClickPoint;Ljava/lang/String;Lcom/rootclicker/app/PointEditorView$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "clickPoint",
            "str",
            "callback"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rootclicker/app/PointEditorView;->fill:Landroid/graphics/Paint;

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/rootclicker/app/PointEditorView;->stroke:Landroid/graphics/Paint;

    .line 38
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    .line 39
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/rootclicker/app/PointEditorView;->panel:Landroid/graphics/Paint;

    .line 40
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/rootclicker/app/PointEditorView;->cross:Landroid/graphics/Paint;

    .line 41
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    .line 42
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/rootclicker/app/PointEditorView;->hintRect:Landroid/graphics/RectF;

    .line 43
    iput v1, p0, Lcom/rootclicker/app/PointEditorView;->viewWidth:I

    .line 44
    iput v1, p0, Lcom/rootclicker/app/PointEditorView;->viewHeight:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/rootclicker/app/PointEditorView;->density:F

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2}, Lcom/rootclicker/app/ClickPoint;->copy()Lcom/rootclicker/app/ClickPoint;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/rootclicker/app/ClickPoint;

    const-string p2, "\u5750\u6807\u70b91"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p1, v1, v1, p2}, Lcom/rootclicker/app/ClickPoint;-><init>(FFLjava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    .line 47
    iput-object p3, p0, Lcom/rootclicker/app/PointEditorView;->label:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/rootclicker/app/PointEditorView;->callback:Lcom/rootclicker/app/PointEditorView$Callback;

    const/16 p1, 0x56

    const/16 p2, 0xb5

    const/16 p3, 0xe1

    const/16 p4, 0x5a

    .line 49
    invoke-static {p3, p1, p2, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, -0x1

    .line 50
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 52
    invoke-direct {p0, p2}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 p1, 0xfc

    const/16 p2, 0xfa

    .line 56
    invoke-static {p2, p2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x3d

    const/16 p2, 0x46

    const/16 p3, 0x3c

    .line 57
    invoke-static {p4, p3, p1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    invoke-direct {p0, p1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result p1

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/PointEditorView;->setWillNotDraw(Z)V

    return-void
.end method

.method private dp(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/rootclicker/app/PointEditorView;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "str",
            "f",
            "f2"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p4, v0

    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private movePoint(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "f2"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    iget v1, p0, Lcom/rootclicker/app/PointEditorView;->viewWidth:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Lcom/rootclicker/app/ClickPoint;->nx:F

    .line 143
    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    iget v0, p0, Lcom/rootclicker/app/PointEditorView;->viewHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/rootclicker/app/ClickPoint;->ny:F

    .line 144
    invoke-virtual {p0}, Lcom/rootclicker/app/PointEditorView;->invalidate()V

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

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    iget v0, v0, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v1, p0, Lcom/rootclicker/app/PointEditorView;->viewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    iget v1, v1, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v2, p0, Lcom/rootclicker/app/PointEditorView;->viewHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v4, 0x0

    .line 82
    iget v2, p0, Lcom/rootclicker/app/PointEditorView;->viewWidth:I

    int-to-float v6, v2

    iget-object v8, p0, Lcom/rootclicker/app/PointEditorView;->cross:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget v2, p0, Lcom/rootclicker/app/PointEditorView;->viewHeight:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/rootclicker/app/PointEditorView;->cross:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 84
    invoke-direct {p0, v2}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v3

    iget-object v4, p0, Lcom/rootclicker/app/PointEditorView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    invoke-direct {p0, v2}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v2

    iget-object v3, p0, Lcom/rootclicker/app/PointEditorView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    iget-object v2, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v2, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/rootclicker/app/PointEditorView;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    const/high16 v4, 0x40e00000    # 7.0f

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/rootclicker/app/PointEditorView;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41200000    # 10.0f

    :goto_0
    invoke-direct {p0, v4}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v2, p0, Lcom/rootclicker/app/PointEditorView;->label:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/rootclicker/app/PointEditorView;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 89
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v2

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v1

    iget-object v4, p0, Lcom/rootclicker/app/PointEditorView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const-string v2, "\u5b8c\u6210"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/rootclicker/app/PointEditorView;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 92
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->hintRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v2

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v1

    iget-object v4, p0, Lcom/rootclicker/app/PointEditorView;->panel:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    const/16 v1, 0x47

    const/16 v2, 0x52

    const/16 v4, 0x46

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/rootclicker/app/PointEditorView;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const-string v2, "\u62d6\u52a8\u5706\u7403\u5230\u70b9\u51fb\u4f4d\u7f6e\uff0c\u7136\u540e\u70b9\u5b8c\u6210"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/rootclicker/app/PointEditorView;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 97
    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i2",
            "i3",
            "i4"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p3, 0x1

    .line 69
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/rootclicker/app/PointEditorView;->viewWidth:I

    .line 70
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/rootclicker/app/PointEditorView;->viewHeight:I

    const/high16 p2, 0x41800000    # 16.0f

    .line 71
    invoke-direct {p0, p2}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 73
    iget-object p3, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    const/high16 p4, 0x42b00000    # 88.0f

    invoke-direct {p0, p4}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result p4

    sub-float p4, p1, p4

    const/high16 v0, 0x42100000    # 36.0f

    invoke-direct {p0, v0}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-direct {p0, v1}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v1

    invoke-virtual {p3, p4, v0, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    iget-object p3, p0, Lcom/rootclicker/app/PointEditorView;->hintRect:Landroid/graphics/RectF;

    const/high16 p4, 0x42b80000    # 92.0f

    invoke-direct {p0, p4}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result p4

    const/high16 v0, 0x43040000    # 132.0f

    invoke-direct {p0, v0}, Lcom/rootclicker/app/PointEditorView;->dp(F)F

    move-result v0

    invoke-virtual {p3, p2, p4, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

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

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iput-boolean v3, p0, Lcom/rootclicker/app/PointEditorView;->pendingDone:Z

    .line 135
    iput-boolean v3, p0, Lcom/rootclicker/app/PointEditorView;->dragging:Z

    goto :goto_0

    .line 128
    :cond_1
    iget-boolean p1, p0, Lcom/rootclicker/app/PointEditorView;->dragging:Z

    if-eqz p1, :cond_6

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/rootclicker/app/PointEditorView;->movePoint(FF)V

    goto :goto_0

    .line 120
    :cond_2
    iget-boolean p1, p0, Lcom/rootclicker/app/PointEditorView;->pendingDone:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->callback:Lcom/rootclicker/app/PointEditorView$Callback;

    iget-object v0, p0, Lcom/rootclicker/app/PointEditorView;->draft:Lcom/rootclicker/app/ClickPoint;

    invoke-virtual {v0}, Lcom/rootclicker/app/ClickPoint;->copy()Lcom/rootclicker/app/ClickPoint;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rootclicker/app/PointEditorView$Callback;->onComplete(Lcom/rootclicker/app/ClickPoint;)V

    .line 123
    :cond_3
    iput-boolean v3, p0, Lcom/rootclicker/app/PointEditorView;->pendingDone:Z

    .line 124
    iput-boolean v3, p0, Lcom/rootclicker/app/PointEditorView;->dragging:Z

    .line 125
    invoke-virtual {p0}, Lcom/rootclicker/app/PointEditorView;->invalidate()V

    goto :goto_0

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/rootclicker/app/PointEditorView;->doneRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 112
    iput-boolean v2, p0, Lcom/rootclicker/app/PointEditorView;->pendingDone:Z

    goto :goto_0

    .line 115
    :cond_5
    iput-boolean v2, p0, Lcom/rootclicker/app/PointEditorView;->dragging:Z

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/rootclicker/app/PointEditorView;->movePoint(FF)V

    :cond_6
    :goto_0
    return v2
.end method
