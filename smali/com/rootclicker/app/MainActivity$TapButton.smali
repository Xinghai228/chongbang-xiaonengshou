.class final Lcom/rootclicker/app/MainActivity$TapButton;
.super Landroid/view/View;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TapButton"
.end annotation


# instance fields
.field private final blue:Z

.field private final circle:Landroid/graphics/Paint;

.field private downAt:J

.field private downX:F

.field private downY:F

.field private final label:Landroid/graphics/Paint;

.field private moved:Z

.field private final number:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/rootclicker/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/MainActivity;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "color",
            "blue"
        }
    .end annotation

    .line 1018
    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    .line 1019
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1020
    iput-boolean p3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->blue:Z

    .line 1021
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->circle:Landroid/graphics/Paint;

    .line 1022
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/rootclicker/app/MainActivity$TapButton;->number:Landroid/graphics/Paint;

    .line 1023
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->label:Landroid/graphics/Paint;

    .line 1024
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, -0x1

    .line 1025
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1026
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1027
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1028
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 1030
    invoke-virtual {p1, p2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p3, :cond_0

    const-string p1, "\u84dd\u8272\u70b9\u51fb\u8ba1\u6570\u6309\u94ae"

    goto :goto_0

    :cond_0
    const-string p1, "\u7ea2\u8272\u70b9\u51fb\u8ba1\u6570\u6309\u94ae"

    .line 1031
    :goto_0
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/MainActivity$TapButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1037
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1038
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity$TapButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1039
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity$TapButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 1040
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity$TapButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity$TapButton;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-virtual {v4, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/rootclicker/app/MainActivity$TapButton;->circle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1041
    iget-boolean v3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->blue:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-static {v3}, Lcom/rootclicker/app/MainActivity;->access$000(Lcom/rootclicker/app/MainActivity;)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-static {v3}, Lcom/rootclicker/app/MainActivity;->access$100(Lcom/rootclicker/app/MainActivity;)I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1042
    iget-object v4, p0, Lcom/rootclicker/app/MainActivity$TapButton;->number:Landroid/graphics/Paint;

    .line 1043
    iget-object v5, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    .line 1044
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    const/high16 v6, 0x41600000    # 14.0f

    goto :goto_1

    .line 1047
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    const/high16 v6, 0x41880000    # 17.0f

    goto :goto_1

    :cond_2
    const/high16 v6, 0x41a00000    # 20.0f

    .line 1049
    :goto_1
    invoke-virtual {v5, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1050
    iget-object v4, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {v4, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/rootclicker/app/MainActivity$TapButton;->number:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    iget-object v6, p0, Lcom/rootclicker/app/MainActivity$TapButton;->number:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->number:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1051
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v1, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->label:Landroid/graphics/Paint;

    const-string v3, "\u70b9\u51fb"

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    iput-boolean v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    goto :goto_0

    .line 1070
    :cond_1
    iget-boolean v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 1071
    :cond_2
    iput-boolean v2, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    goto :goto_0

    .line 1064
    :cond_3
    iget-boolean p1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    if-nez p1, :cond_4

    .line 1065
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downAt:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-boolean v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->blue:Z

    invoke-virtual {p1, v3, v4, v0}, Lcom/rootclicker/app/MainActivity;->recordTap(JZ)V

    .line 1067
    :cond_4
    iput-boolean v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    goto :goto_0

    .line 1058
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downAt:J

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downX:F

    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->downY:F

    .line 1061
    iput-boolean v1, p0, Lcom/rootclicker/app/MainActivity$TapButton;->moved:Z

    :cond_6
    :goto_0
    return v2
.end method
