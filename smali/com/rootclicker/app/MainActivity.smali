.class public final Lcom/rootclicker/app/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rootclicker/app/MainActivity$TapButton;
    }
.end annotation


# static fields
.field private static final BLUE:I

.field private static final GREEN:I

.field private static final RED:I

.field private static launched:Z

.field private static pendingExternalReset:Z

.field private static resumeInstance:Lcom/rootclicker/app/MainActivity;

.field private static volatile visible:Z


# instance fields
.field private aboutButton:Landroid/widget/TextView;

.field private aboutCard:Landroid/widget/LinearLayout;

.field private blueTapButton:Lcom/rootclicker/app/MainActivity$TapButton;

.field private blueTapCount:I

.field private final clock:Ljava/text/SimpleDateFormat;

.field private dialogStatus:Landroid/widget/TextView;

.field private lastTapAt:J

.field private final logColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private logList:Landroid/widget/LinearLayout;

.field private logScroll:Landroid/widget/ScrollView;

.field private logSeq:I

.field private final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionPanel:Landroid/widget/LinearLayout;

.field private permissionStatus:Landroid/widget/TextView;

.field private rootOk:Ljava/lang/Boolean;

.field private tapButton:Lcom/rootclicker/app/MainActivity$TapButton;

.field private tapCount:I

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc1

    const/16 v1, 0x60

    const/4 v2, 0x7

    .line 40
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/rootclicker/app/MainActivity;->GREEN:I

    const/16 v0, 0x76

    const/16 v1, 0xd2

    const/16 v2, 0x19

    .line 41
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/rootclicker/app/MainActivity;->BLUE:I

    const/16 v0, 0x39

    const/16 v1, 0x35

    const/16 v2, 0xe5

    .line 42
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/rootclicker/app/MainActivity;->RED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->clock:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/rootclicker/app/MainActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/rootclicker/app/MainActivity;->blueTapCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/rootclicker/app/MainActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/rootclicker/app/MainActivity;->tapCount:I

    return p0
.end method

.method private actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "str",
            "runnable"
        }
    .end annotation

    .line 870
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 872
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 874
    new-instance v1, Lcom/rootclicker/app/MainActivity$28;

    invoke-direct {v1, p0, p2}, Lcom/rootclicker/app/MainActivity$28;-><init>(Lcom/rootclicker/app/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 881
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    invoke-virtual {p2, p1, v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 882
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private autoDetectPermissions()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$1;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "RootClicker-autodetect"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private buildAboutCard()Landroid/widget/LinearLayout;
    .locals 9

    .line 170
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 173
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xe0

    .line 174
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 179
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {p0, v8}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v4, v6, v7, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 180
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u4f7f\u7528\u8bf4\u660e"

    .line 181
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 182
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x19

    .line 183
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "1\u3001\u4f5c\u8005@\u8d1d\u5409\u5854\uff0c\u5982\u6709\u95ee\u9898\u6216\u6709\u66f4\u597d\u7684\u601d\u8def\uff0c\u8bf7\u8054\u7cfb\u5c0f\u7ea2\u4e66leiya_e\u3002\n\n2\u3001\u7ed9\u4e88\u8f6f\u4ef6root\u6743\u9650\u6216\u65e0\u969c\u788d\u6743\u9650\u624d\u53ef\u4f7f\u7528\uff0c\u540c\u65f6\u4e5f\u8981\u6253\u5f00\u60ac\u6d6e\u7a97\u6743\u9650\u3002\n\n3\u3001\u70b9\u51fb\u901f\u5ea6\uff1a\u6839\u636e\u6d4b\u8bd5\u8fdb\u884c\u8c03\u6574\uff0c\u5efa\u8bae\u5728\u8f6f\u4ef6\u4e3b\u9875\u6d4b\u8bd5\u6216\u76f4\u64ad\u95f4\u4ee51g\u8fdb\u884c\u6d4b\u8bd5\uff0c\u56e0\u624b\u673a\u6027\u80fd\u5dee\u5f02\u5316\u95ee\u9898\uff0c\u5728\u76f4\u64ad\u95f4\u4e2d\u53ef\u80fd\u4f1a\u591a\u70b91~2\u6b21\uff0c\u5efa\u8bae\u591a\u591a\u6d4b\u8bd5\u8bbe\u7f6e\u597d\u70b9\u51fb\u901f\u5ea6\u3002\n\n4\u3001\u8c03\u6574\u5750\u6807\u70b9\uff1a\u5b57\u9762\u610f\u601d\uff0c\u9009\u53d6\u4f60\u8981\u70b9\u51fb\u7684\u4f4d\u7f6e\u540e\u70b9\u5b8c\u6210\u5373\u53ef\uff0c\u6bcf\u6b21\u6253\u5f00\u8f6f\u4ef6\u4f1a\u6309\u7167\u4e0a\u6b21\u8bbe\u7f6e\u7684\u4f4d\u7f6e\u9ed8\u8ba4\u9009\u62e9\u3002\n\n5\u3001\u70b9\u51fb\u8bbe\u7f6e\uff1a\u70b9\u51fb\u662f\u630910x1888=18880(\u5411\u4e0a\u53d6\u65741.89w)\u8ba1\u7b97\u3002\u5f53\u524d\u5c31\u662f\u4f60\u73b0\u5728\u5df2\u7ecf\u8d21\u732e\u6570\u91cf\uff0c\u6bd4\u5982\u5df2\u8d21\u732e1.89w\uff0c\u5f53\u524d\u8bbe\u4e3a1.89w\uff1b\u5982\u679c\u4f60\u5df2\u8d21\u732e\u7684\u6570\u91cf\u662f2.3w\uff0c\u90a3\u4e48\u6309\u4e2a\u4eba\u611f\u89c9\u9009\u62e9\u662f1.88w\u6216 3.78w\u3002\u4e3e\u4f8b:\u5f53\u524d\u503c\u4e3a5\u65f6\uff0c\u9009\u62e9\u76ee\u680710\u6b21\u6309\u94ae\uff0c\u6267\u884c\u65f6\u5c31\u4f1a\u70b9\u51fb5\u6b21\u3002(\u53cc\u51fb\u76ee\u6807\u5904\u7684\u6b21\u6570\u5373\u53ef\u6267\u884c\u70b9\u51fb)\u3002\n\n6\u3001\u53ef\u81ea\u884c\u5728\u672c\u8f6f\u4ef6\u4e3b\u9875\u9762\u6d4b\u8bd5\uff0c\u719f\u6089\u4e4b\u540e\u518d\u8fdb\u884c\u5b9e\u9645\u64cd\u4f5c\uff0c\u5982\u679c\u4e2d\u9014\u60f3\u8981\u505c\u6b62\u70b9\u51fb\u64cd\u4f5c\uff0c\u97f3\u91cf+\u6216\u97f3\u91cf-\u5373\u53ef\u505c\u6b62\u64cd\u4f5c\u3002"

    .line 187
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 188
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x46

    .line 189
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x40400000    # 3.0f

    .line 190
    invoke-virtual {p0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 191
    invoke-virtual {p0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildBottomBar()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 225
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, -0x1

    .line 227
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 228
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xe0

    .line 229
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u6e05\u9664"

    .line 233
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 234
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0x58

    .line 235
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x11

    .line 236
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 237
    invoke-virtual {v0, v10}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v11

    const/high16 v12, 0x41100000    # 9.0f

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v0, v10}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v14

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v15

    invoke-virtual {v5, v11, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v11, 0xea

    .line 238
    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/high16 v14, 0x41b00000    # 22.0f

    invoke-direct {v0, v13, v14}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    new-instance v13, Lcom/rootclicker/app/MainActivity$3;

    invoke-direct {v13, v0}, Lcom/rootclicker/app/MainActivity$3;-><init>(Lcom/rootclicker/app/MainActivity;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const v15, 0x800013

    const/4 v3, -0x2

    invoke-direct {v13, v3, v3, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v15, 0x41800000    # 16.0f

    .line 246
    invoke-virtual {v0, v15}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    invoke-virtual {v4, v5, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v5, Lcom/rootclicker/app/MainActivity$TapButton;

    sget v13, Lcom/rootclicker/app/MainActivity;->RED:I

    const/4 v14, 0x0

    invoke-direct {v5, v0, v13, v14}, Lcom/rootclicker/app/MainActivity$TapButton;-><init>(Lcom/rootclicker/app/MainActivity;IZ)V

    iput-object v5, v0, Lcom/rootclicker/app/MainActivity;->tapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    .line 249
    new-instance v5, Lcom/rootclicker/app/MainActivity$TapButton;

    sget v13, Lcom/rootclicker/app/MainActivity;->BLUE:I

    invoke-direct {v5, v0, v13, v2}, Lcom/rootclicker/app/MainActivity$TapButton;-><init>(Lcom/rootclicker/app/MainActivity;IZ)V

    iput-object v5, v0, Lcom/rootclicker/app/MainActivity;->blueTapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    .line 250
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 252
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 253
    iget-object v5, v0, Lcom/rootclicker/app/MainActivity;->tapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x42480000    # 50.0f

    invoke-virtual {v0, v14}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v15

    invoke-virtual {v0, v14}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v11

    invoke-direct {v13, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42100000    # 36.0f

    invoke-virtual {v0, v13}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v13

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v11, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v5, v0, Lcom/rootclicker/app/MainActivity;->blueTapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v14}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v11

    invoke-virtual {v0, v14}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v13

    invoke-direct {v6, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    const-string v5, "\u4f7f\u7528\u8bf4\u660e"

    .line 259
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    invoke-virtual {v0, v10}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    const/16 v5, 0xea

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-direct {v0, v5, v6}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    new-instance v5, Lcom/rootclicker/app/MainActivity$4;

    invoke-direct {v5, v0}, Lcom/rootclicker/app/MainActivity$4;-><init>(Lcom/rootclicker/app/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x800015

    invoke-direct {v2, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 272
    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 273
    iget-object v3, v0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private buildHeader()Landroid/view/View;
    .locals 4

    .line 213
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xed

    .line 214
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 215
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63a7\u5236\u4e2d\u5fc3"

    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x19

    .line 218
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "str",
            "runnable",
            "i",
            "i2"
        }
    .end annotation

    .line 673
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 674
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 675
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x44

    const/16 v1, 0x4c

    .line 676
    invoke-static {p1, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 677
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 678
    invoke-virtual {v0, p3, p4, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, -0x1

    const/high16 p3, 0x41200000    # 10.0f

    .line 679
    invoke-direct {p0, p1, p3}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 680
    new-instance p1, Lcom/rootclicker/app/MainActivity$18;

    invoke-direct {p1, p0, p2}, Lcom/rootclicker/app/MainActivity$18;-><init>(Lcom/rootclicker/app/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private buildPermissionPanel(Landroid/widget/LinearLayout;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linearLayout"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 401
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 402
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 403
    iget-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0xf2

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 404
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6743\u9650\u68c0\u6d4b\u4e2d\u5fc3"

    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 406
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x2c

    const/16 v4, 0x35

    const/16 v5, 0x2b

    .line 407
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 409
    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    iget-object v4, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    .line 412
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    iget-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    const/16 v4, 0x66

    const/16 v5, 0x71

    const/16 v6, 0x64

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 415
    iget-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v0, v8}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 416
    iget-object v1, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    .line 418
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xe0

    .line 419
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 420
    iget-object v4, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {v0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/high16 v4, 0x40e00000    # 7.0f

    .line 422
    invoke-virtual {v0, v4}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    .line 423
    invoke-virtual {v0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    .line 424
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$6;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$6;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 429
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 424
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$7;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$7;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u6253\u5f00\u60ac\u6d6e\u7a97"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 435
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 430
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$8;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$8;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u5173\u95ed\u60ac\u6d6e\u7a97"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 441
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 436
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$9;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$9;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u68c0\u6d4b Root \u6743\u9650"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 447
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 442
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$10;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$10;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u8df3\u8f6c\u6253\u5f00\u65e0\u969c\u788d"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 453
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 448
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$11;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$11;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u68c0\u6d4b\u65e0\u969c\u788d\u6743\u9650"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 459
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 454
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$12;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$12;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "GitHub \u6e90\u7801"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    .line 465
    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 460
    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v7, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, v0}, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v10, "\u5173\u4e8e"

    invoke-direct {v0, v10, v8, v1, v4}, Lcom/rootclicker/app/MainActivity;->buildPanelButton(Ljava/lang/String;Ljava/lang/Runnable;II)Landroid/widget/TextView;

    move-result-object v8

    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\u7248\u672c "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/MainActivity;->currentVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0x44

    const/16 v10, 0x4c

    .line 470
    invoke-static {v8, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    .line 471
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 472
    invoke-virtual {v7, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v12, 0x41200000    # 10.0f

    .line 473
    invoke-direct {v0, v9, v12}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget-object v13, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    .line 476
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x10

    .line 477
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 478
    invoke-virtual {v7, v1, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 479
    invoke-direct {v0, v9, v12}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u4e3b\u9875\u70b9\u51fb\u9707\u52a8"

    .line 481
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    invoke-static {v8, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v13, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getMainTapVibrate(Landroid/content/Context;)Z

    move-result v9

    new-instance v15, Lcom/rootclicker/app/MainActivity$13;

    invoke-direct {v15, v0}, Lcom/rootclicker/app/MainActivity$13;-><init>(Lcom/rootclicker/app/MainActivity;)V

    invoke-direct {v0, v9, v15}, Lcom/rootclicker/app/MainActivity;->panelSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object v9

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41d00000    # 26.0f

    .line 491
    invoke-virtual {v0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v11

    invoke-virtual {v0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    invoke-direct {v15, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 486
    invoke-virtual {v7, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v6, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 494
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 495
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 496
    invoke-virtual {v6, v1, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v7, -0x1

    .line 497
    invoke-direct {v0, v7, v12}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 498
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u7ed3\u675f\u65f6\u9707\u52a8"

    .line 499
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 501
    invoke-static {v8, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x11

    .line 502
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 503
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getEndVibrate(Landroid/content/Context;)Z

    move-result v7

    new-instance v9, Lcom/rootclicker/app/MainActivity$14;

    invoke-direct {v9, v0}, Lcom/rootclicker/app/MainActivity$14;-><init>(Lcom/rootclicker/app/MainActivity;)V

    invoke-direct {v0, v7, v9}, Lcom/rootclicker/app/MainActivity;->panelSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41d00000    # 26.0f

    .line 509
    invoke-virtual {v0, v11}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v11

    invoke-virtual {v0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-direct {v9, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8bbe\u5907\u540d\u79f0\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 514
    invoke-static {v8, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    .line 515
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 516
    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 517
    invoke-direct {v0, v1, v12}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    new-instance v3, Lcom/rootclicker/app/MainActivity$15;

    invoke-direct {v3, v0, v2}, Lcom/rootclicker/app/MainActivity$15;-><init>(Lcom/rootclicker/app/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v3, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/rootclicker/app/MainActivity;->marginParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v2, v0, Lcom/rootclicker/app/MainActivity;->permissionPanel:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v13, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private circle(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 997
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 998
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private currentVersionName()Ljava/lang/String;
    .locals 3

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method static isVisible()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/rootclicker/app/MainActivity;->visible:Z

    return v0
.end method

.method private marginParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 667
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 668
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private panelSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "z",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/high16 v0, 0x41d00000    # 26.0f

    .line 615
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    const/high16 v0, 0x41600000    # 14.0f

    .line 616
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v9

    const/high16 v0, 0x40000000    # 2.0f

    .line 617
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    mul-int/lit8 v0, v7, 0x2

    sub-int v6, v9, v0

    .line 619
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v3, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v3, v2

    .line 621
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 622
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 623
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 624
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 625
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 626
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setElevation(F)V

    .line 627
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v4

    .line 628
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800013

    .line 629
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_0

    sub-int v8, v5, v6

    sub-int/2addr v8, v7

    goto :goto_0

    :cond_0
    move v8, v7

    .line 630
    :goto_0
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 631
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    const/16 p1, 0x5b

    const/16 v1, 0xa5

    const/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const/16 p1, 0xc7

    const/16 v1, 0xce

    const/16 v2, 0xc6

    .line 632
    :goto_1
    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    div-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    new-instance p1, Lcom/rootclicker/app/MainActivity$17;

    move-object v1, p1

    move-object v2, p0

    move-object v8, v0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/rootclicker/app/MainActivity$17;-><init>(Lcom/rootclicker/app/MainActivity;[Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private refreshPermissionStatus()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->permissionStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private renderLogs()V
    .locals 10

    .line 348
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6682\u65e0\u70b9\u51fb\u65e5\u5fd7\n\u70b9\u51fb\u4e0b\u65b9\u6309\u94ae\u5f00\u59cb\u8bb0\u5f55"

    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x96

    .line 356
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const v2, 0x3fa66666    # 1.3f

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 358
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 359
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 364
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const/high16 v5, 0x41400000    # 12.0f

    .line 365
    invoke-direct {p0, v4, v5}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    invoke-virtual {p0, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v9

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 367
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 368
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 370
    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 371
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x1e

    .line 372
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 376
    aget-object v2, v2, v7

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x60

    .line 378
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 379
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 380
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 383
    iget-object v6, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    sget v6, Lcom/rootclicker/app/MainActivity;->RED:I

    :goto_1
    invoke-direct {p0, v6}, Lcom/rootclicker/app/MainActivity;->circle(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    const v9, 0x800035

    invoke-direct {v6, v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 386
    invoke-virtual {p0, v4}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v2, v0, v0, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 387
    iget-object v4, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 391
    new-instance v1, Lcom/rootclicker/app/MainActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/rootclicker/app/MainActivity$5;-><init>(Lcom/rootclicker/app/MainActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method static requestExternalReset()V
    .locals 2

    .line 161
    sget-object v0, Lcom/rootclicker/app/MainActivity;->resumeInstance:Lcom/rootclicker/app/MainActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    sput-boolean v0, Lcom/rootclicker/app/MainActivity;->pendingExternalReset:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 165
    invoke-direct {v0, v1}, Lcom/rootclicker/app/MainActivity;->resetLogs(Z)V

    :goto_0
    return-void
.end method

.method private resetLogs()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->resetLogs(Z)V

    return-void
.end method

.method private resetLogs(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/rootclicker/app/MainActivity;->tapCount:I

    .line 330
    iput v0, p0, Lcom/rootclicker/app/MainActivity;->blueTapCount:I

    .line 331
    iput v0, p0, Lcom/rootclicker/app/MainActivity;->logSeq:I

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lcom/rootclicker/app/MainActivity;->lastTapAt:J

    .line 333
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->renderLogs()V

    .line 334
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->tapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/rootclicker/app/MainActivity$TapButton;->invalidate()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->blueTapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/rootclicker/app/MainActivity$TapButton;->invalidate()V

    :cond_1
    if-eqz p1, :cond_2

    .line 341
    invoke-static {p0}, Lcom/rootclicker/app/OverlayService;->resetCountDefaults(Landroid/content/Context;)V

    const/16 p1, 0x28

    .line 342
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->vibrate(I)V

    const-string p1, "\u5df2\u6e05\u9664\u6b21\u6570\u548c\u65e5\u5fd7"

    .line 343
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private roundDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alertDialog"
        }
    .end annotation

    .line 853
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 856
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    .line 857
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 858
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 859
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 862
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 863
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private roundRect(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "f"
        }
    .end annotation

    .line 990
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 991
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 992
    invoke-virtual {p0, p2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private showControlDialog()V
    .locals 5

    .line 696
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 697
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 698
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 699
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    .line 700
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 701
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 703
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    new-instance v1, Lcom/rootclicker/app/MainActivity$19;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$19;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 711
    new-instance v1, Lcom/rootclicker/app/MainActivity$20;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$20;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u68c0\u6d4b Root \u6743\u9650"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 717
    new-instance v1, Lcom/rootclicker/app/MainActivity$21;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$21;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u8df3\u8f6c\u6253\u5f00\u65e0\u969c\u788d"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 723
    new-instance v1, Lcom/rootclicker/app/MainActivity$22;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$22;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u68c0\u6d4b\u65e0\u969c\u788d\u6743\u9650"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    new-instance v1, Lcom/rootclicker/app/MainActivity$23;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$23;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u6253\u5f00\u60ac\u6d6e\u7a97"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    new-instance v1, Lcom/rootclicker/app/MainActivity$24;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$24;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u5173\u95ed\u60ac\u6d6e\u7a97"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 741
    new-instance v1, Lcom/rootclicker/app/MainActivity$25;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$25;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u5728 GitHub \u67e5\u770b\u6e90\u7801"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    new-instance v1, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "\u5173\u4e8e"

    invoke-direct {p0, v2, v1}, Lcom/rootclicker/app/MainActivity;->actionButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6743\u9650\u68c0\u6d4b\u4e2d\u5fc3"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u5173\u95ed"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 749
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->roundDialog(Landroid/app/AlertDialog;)V

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showDeviceNameDialog(Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "textView"
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 591
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 592
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 593
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 594
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 595
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 596
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u4fee\u6539\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/rootclicker/app/MainActivity$16;

    invoke-direct {v2, p0, v0, p1}, Lcom/rootclicker/app/MainActivity$16;-><init>(Lcom/rootclicker/app/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    const-string p1, "\u4fdd\u5b58"

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private statusText()Ljava/lang/CharSequence;
    .locals 9

    .line 887
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->rootOk:Ljava/lang/Boolean;

    const-string v2, "\u5df2\u6388\u6743"

    const-string v3, "\u672a\u6388\u6743"

    if-nez v1, :cond_0

    const-string v1, "\u672a\u68c0\u6d4b"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 889
    :goto_0
    invoke-static {p0}, Lcom/rootclicker/app/ClickAccessibilityService;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "\u5df2\u5f00\u542f"

    goto :goto_1

    :cond_2
    const-string v5, "\u672a\u5f00\u542f"

    .line 891
    :goto_1
    invoke-static {}, Lcom/rootclicker/app/OverlayService;->isRunning()Z

    move-result v6

    .line 892
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/rootclicker/app/MainActivity;->rootOk:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 893
    :goto_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v8, "\u60ac\u6d6e\u7a97\u6743\u9650\uff1a"

    .line 894
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v2, "\nRoot \u6743\u9650\uff1a"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n\u65e0\u969c\u788d\u670d\u52a1\uff1a"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n\u60ac\u6d6e\u7a97\u670d\u52a1\uff1a"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v6, :cond_6

    const-string v1, "\u8fd0\u884c\u4e2d"

    goto :goto_5

    :cond_6
    const-string v1, "\u672a\u8fd0\u884c"

    :goto_5
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n\u53ef\u4f7f\u7528\u72b6\u6001\uff1a"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_7

    const-string v0, "\u2714"

    goto :goto_6

    :cond_7
    const-string v0, "\u2716"

    .line 896
    :goto_6
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 897
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 898
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v4, :cond_8

    const/16 v2, 0xa0

    const/16 v3, 0x43

    const/16 v4, 0x2e

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    goto :goto_7

    :cond_8
    const/16 v2, 0xdc

    const/16 v3, 0x3c

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    :goto_7
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v7
.end method

.method private toast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    return-void
.end method

.method private toggleAbout()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->aboutCard:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/rootclicker/app/MainActivity;->aboutCard:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->aboutButton:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 205
    sget v2, Lcom/rootclicker/app/MainActivity;->GREEN:I

    goto :goto_2

    :cond_3
    const/16 v2, 0x58

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz v0, :cond_5

    const/16 v0, 0xa

    .line 208
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->vibrate(I)V

    :cond_5
    return-void
.end method

.method private vibrate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 p1, -0x1

    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkAccessibility()V
    .locals 3

    .line 904
    invoke-static {p0}, Lcom/rootclicker/app/ClickAccessibilityService;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 905
    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "\u65e0\u969c\u788d\u670d\u52a1\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_1
    const-string v0, "\u65e0\u969c\u788d\u670d\u52a1\u672a\u5f00\u542f\uff0c\u8bf7\u5148\u5728\u8bbe\u7f6e\u4e2d\u542f\u7528"

    .line 908
    :goto_0
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public checkRoot()V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u6b63\u5728\u68c0\u6d4b Root\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rootclicker/app/MainActivity$29;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$29;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-string v2, "RootClicker-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dp(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method m10lambda$buildPermissionPanel$4$comrootclickerappMainActivity()V
    .locals 2

    .line 558
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u65e0\u969c\u788d\u8bbe\u7f6e"

    .line 560
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method m11lambda$buildPermissionPanel$5$comrootclickerappMainActivity()V
    .locals 0

    .line 566
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->checkAccessibility()V

    .line 567
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method m12lambda$buildPermissionPanel$6$comrootclickerappMainActivity()V
    .locals 3

    .line 573
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://github.com/leiya228/RootClicker"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u6d4f\u89c8\u5668"

    .line 575
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method m13lambda$buildPermissionPanel$7$comrootclickerappMainActivity(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bool"
        }
    .end annotation

    .line 581
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setMainTapVibrate(Landroid/content/Context;Z)V

    return-void
.end method

.method m14lambda$buildPermissionPanel$8$comrootclickerappMainActivity(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "view"
        }
    .end annotation

    .line 586
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->showDeviceNameDialog(Landroid/widget/TextView;)V

    return-void
.end method

.method m15lambda$checkRoot$0$comrootclickerappMainActivity()V
    .locals 2

    .line 935
    invoke-static {}, Lcom/rootclicker/app/RootClient;->isRooted()Z

    move-result v0

    .line 936
    new-instance v1, Lcom/rootclicker/app/MainActivity$30;

    invoke-direct {v1, p0, v0}, Lcom/rootclicker/app/MainActivity$30;-><init>(Lcom/rootclicker/app/MainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method m16lambda$checkRoot$1$comrootclickerappMainActivity(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 946
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->rootOk:Ljava/lang/Boolean;

    .line 947
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "Root \u5df2\u6388\u6743"

    goto :goto_0

    :cond_1
    const-string p1, "\u672a\u83b7\u53d6\u5230 Root \u6743\u9650"

    .line 950
    :goto_0
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method m17lambda$panelSwitch$0$comrootclickerappMainActivity([Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zArr",
            "viewArr",
            "i",
            "i2",
            "i3",
            "frameLayout",
            "i4",
            "consumer",
            "view"
        }
    .end annotation

    const/4 p9, 0x0

    .line 644
    aget-boolean v0, p1, p9

    xor-int/lit8 v0, v0, 0x1

    aput-boolean v0, p1, p9

    .line 645
    aget-object v0, p2, p9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 646
    aget-boolean v1, p1, p9

    if-eqz v1, :cond_0

    sub-int/2addr p3, p4

    sub-int p5, p3, p5

    .line 649
    :cond_0
    iput p5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 650
    aget-object p2, p2, p9

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    aget-boolean p2, p1, p9

    if-eqz p2, :cond_1

    const/16 p2, 0x5b

    const/16 p3, 0xa5

    const/16 p4, 0x4b

    goto :goto_0

    :cond_1
    const/16 p2, 0xc7

    const/16 p3, 0xce

    const/16 p4, 0xc6

    :goto_0
    invoke-static {p4, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    div-int/lit8 p7, p7, 0x2

    int-to-float p3, p7

    invoke-direct {p0, p2, p3}, Lcom/rootclicker/app/MainActivity;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 652
    aget-boolean p2, p1, p9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p8, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 653
    aget-boolean p1, p1, p9

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    .line 654
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->vibrate(I)V

    :cond_2
    return-void
.end method

.method m18lambda$showControlDialog$0$comrootclickerappMainActivity()V
    .locals 2

    .line 756
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u65e0\u969c\u788d\u8bbe\u7f6e"

    .line 758
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method m19lambda$showControlDialog$1$comrootclickerappMainActivity()V
    .locals 4

    .line 764
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rootclicker/app/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->stopService(Landroid/content/Intent;)Z

    const-string v0, "\u60ac\u6d6e\u7a97\u5df2\u5173\u95ed"

    .line 765
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 767
    new-instance v1, Lcom/rootclicker/app/MainActivity$26;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$26;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method m20lambda$showControlDialog$2$comrootclickerappMainActivity()V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method m21lambda$showControlDialog$3$comrootclickerappMainActivity()V
    .locals 3

    .line 784
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://github.com/leiya228/RootClicker"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u6d4f\u89c8\u5668"

    .line 786
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method m22lambda$showDeviceNameDialog$0$comrootclickerappMainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editText",
            "textView",
            "dialogInterface",
            "i"
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u8bbe\u5907\u540d\u79f0\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-static {}, Lcom/rootclicker/app/OverlayService;->updateDeviceName()V

    const/16 p1, 0xa

    .line 610
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->vibrate(I)V

    const-string p1, "\u8bbe\u5907\u540d\u79f0\u5df2\u4fee\u6539"

    .line 611
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method m23lambda$startOverlay$0$comrootclickerappMainActivity()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->statusText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method m2lambda$autoDetectPermissions$0$comrootclickerappMainActivity()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/rootclicker/app/RootClient;->isRooted()Z

    move-result v0

    .line 121
    new-instance v1, Lcom/rootclicker/app/MainActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/rootclicker/app/MainActivity$2;-><init>(Lcom/rootclicker/app/MainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method m3lambda$autoDetectPermissions$1$comrootclickerappMainActivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/rootclicker/app/MainActivity;->rootOk:Ljava/lang/Boolean;

    .line 132
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method m4lambda$buildBottomBar$0$comrootclickerappMainActivity(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->resetLogs()V

    return-void
.end method

.method m5lambda$buildBottomBar$1$comrootclickerappMainActivity(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->toggleAbout()V

    return-void
.end method

.method m6lambda$buildPermissionPanel$0$comrootclickerappMainActivity()V
    .locals 0

    .line 530
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->requestOverlay()V

    .line 531
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method m7lambda$buildPermissionPanel$1$comrootclickerappMainActivity()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->startOverlay()V

    .line 537
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method m8lambda$buildPermissionPanel$2$comrootclickerappMainActivity()V
    .locals 2

    const/4 v0, 0x0

    .line 542
    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->setRequestedRunning(Z)V

    .line 543
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rootclicker/app/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->stopService(Landroid/content/Intent;)Z

    const-string v0, "\u60ac\u6d6e\u7a97\u5df2\u5173\u95ed"

    .line 545
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method m9lambda$buildPermissionPanel$3$comrootclickerappMainActivity()V
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->checkRoot()V

    .line 552
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "vibrator"

    .line 72
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/rootclicker/app/MainActivity;->vibrator:Landroid/os/Vibrator;

    .line 73
    sget-boolean p1, Lcom/rootclicker/app/MainActivity;->launched:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 74
    sput-boolean v1, Lcom/rootclicker/app/MainActivity;->launched:Z

    .line 75
    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 76
    invoke-static {}, Lcom/rootclicker/app/OverlayService;->resetCurrentCount()V

    .line 78
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf2

    .line 80
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/MainActivity;->setContentView(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->buildHeader()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-virtual {p0, v5}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 89
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/rootclicker/app/MainActivity;->logScroll:Landroid/widget/ScrollView;

    .line 90
    invoke-virtual {v5, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {p0, v8}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity;->logList:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logScroll:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xe0

    .line 97
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-direct {p0, v3}, Lcom/rootclicker/app/MainActivity;->buildPermissionPanel(Landroid/widget/LinearLayout;)V

    .line 100
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->buildAboutCard()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/MainActivity;->aboutCard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->aboutCard:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43be0000    # 380.0f

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->buildBottomBar()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->renderLogs()V

    .line 105
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->autoDetectPermissions()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/rootclicker/app/MainActivity;->visible:Z

    .line 151
    sget-object v0, Lcom/rootclicker/app/MainActivity;->resumeInstance:Lcom/rootclicker/app/MainActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/rootclicker/app/MainActivity;->resumeInstance:Lcom/rootclicker/app/MainActivity;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    sput-object p0, Lcom/rootclicker/app/MainActivity;->resumeInstance:Lcom/rootclicker/app/MainActivity;

    const/4 v0, 0x1

    .line 139
    sput-boolean v0, Lcom/rootclicker/app/MainActivity;->visible:Z

    .line 140
    sget-boolean v0, Lcom/rootclicker/app/MainActivity;->pendingExternalReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    sput-boolean v0, Lcom/rootclicker/app/MainActivity;->pendingExternalReset:Z

    .line 142
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->resetLogs(Z)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    return-void
.end method

.method public recordTap(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "j"
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, p2, v0}, Lcom/rootclicker/app/MainActivity;->recordTap(JZ)V

    return-void
.end method

.method public recordTap(JZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "j",
            "blue"
        }
    .end annotation

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    iget-wide v2, p0, Lcom/rootclicker/app/MainActivity;->lastTapAt:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    .line 297
    :goto_0
    iput-wide v0, p0, Lcom/rootclicker/app/MainActivity;->lastTapAt:J

    if-eqz p3, :cond_1

    .line 299
    iget v0, p0, Lcom/rootclicker/app/MainActivity;->blueTapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/MainActivity;->blueTapCount:I

    goto :goto_1

    .line 301
    :cond_1
    iget v0, p0, Lcom/rootclicker/app/MainActivity;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/MainActivity;->tapCount:I

    .line 303
    :goto_1
    iget v0, p0, Lcom/rootclicker/app/MainActivity;->logSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/MainActivity;->logSeq:I

    .line 304
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u7b2c "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/rootclicker/app/MainActivity;->logSeq:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u6b21\n\u6309\u538b "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms \uff5c \u95f4\u9694 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    const-string p1, "\u2014"

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    if-eqz p3, :cond_3

    sget p2, Lcom/rootclicker/app/MainActivity;->BLUE:I

    goto :goto_3

    :cond_3
    sget p2, Lcom/rootclicker/app/MainActivity;->RED:I

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_4
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-le p1, p2, :cond_4

    .line 307
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->logs:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->logColors:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 310
    :cond_4
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->renderLogs()V

    .line 311
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->tapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    if-eqz p1, :cond_5

    .line 312
    invoke-virtual {p1}, Lcom/rootclicker/app/MainActivity$TapButton;->invalidate()V

    .line 314
    :cond_5
    iget-object p1, p0, Lcom/rootclicker/app/MainActivity;->blueTapButton:Lcom/rootclicker/app/MainActivity$TapButton;

    if-eqz p1, :cond_6

    .line 315
    invoke-virtual {p1}, Lcom/rootclicker/app/MainActivity$TapButton;->invalidate()V

    .line 317
    :cond_6
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getMainTapVibrate(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xc

    .line 318
    invoke-direct {p0, p1}, Lcom/rootclicker/app/MainActivity;->vibrate(I)V

    :cond_7
    return-void
.end method

.method public requestOverlay()V
    .locals 3

    .line 913
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u60ac\u6d6e\u7a97\u6743\u9650\u5df2\u6388\u6743"

    .line 914
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public showTermsDialog()V
    .locals 11

    const/high16 v0, 0x41800000    # 16.0f

    .line 792
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    .line 793
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 794
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 795
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v5, -0x1

    .line 796
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    .line 797
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 798
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 799
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u4f7f\u7528\u6761\u6b3e"

    .line 800
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x19

    .line 802
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 804
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v6

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 805
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xe4

    .line 807
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 808
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-direct {v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 810
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 811
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 812
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {p0, v8}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v0

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {p0, v9}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v9

    invoke-virtual {v6, v3, v8, v0, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 813
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u672c\u9879\u76ee\u4ec5\u4f9b\u5b66\u4e60\u4e0e\u7814\u7a76\u4f7f\u7528\uff0c\u4e0d\u5f97\u7528\u4e8e\u4efb\u4f55\u5f62\u5f0f\u7684\u5546\u4e1a\u884c\u4e3a\u3002\n\u4f7f\u7528\u8005\u56e0\u8fdd\u53cd\u672c\u58f0\u660e\u89c4\u5b9a\u800c\u89e6\u72af\u6cd5\u5f8b\u7684\uff0c\u540e\u679c\u81ea\u8d1f\uff0c\u4f5c\u8005\u4e0d\u627f\u62c5\u8d23\u4efb\u3002\n\u672c\u9879\u76ee\u5b8c\u5168\u514d\u8d39\u5f00\u6e90\uff0c\u8bf7\u52ff\u4e8c\u6b21\u8d29\u5356\u3002\n\u672cAPP\u662f\u4e3a\u4e86\u5b66\u4e60\u7814\u7a76\u7528\uff0c\u4e0d\u5f97\u8fdb\u884c\u4efb\u4f55\u5f62\u5f0f\u7684\u8f6c\u53d1\u3001\u53d1\u5e03\u3001\u4f20\u64ad\u3002\u8bf7\u4e8e24\u5c0f\u65f6\u5185\u5378\u8f7d\u672cAPP\u3002\n\u82e5\u4f7f\u7528\u671f\u95f4\u9020\u6210\u4efb\u4f55\u635f\u5931\uff0c\u4f5c\u8005\u4e0d\u8d1f\u4efb\u4f55\u8d23\u4efb\u3002\n\u672cAPP\u4e0d\u7be1\u6539\u3001\u4e0d\u4fee\u6539\u3001\u4e0d\u83b7\u53d6\u4efb\u4f55\u4e2a\u4eba\u4fe1\u606f\u53ca\u5176\u5b83app\u4fe1\u606f\u3002\n\u672cAPP\u4f7f\u7528\u8005\u56e0\u4e3a\u8fdd\u53cd\u672c\u58f0\u660e\u7684\u89c4\u5b9a\u800c\u89e6\u72af\u4e2d\u534e\u4eba\u6c11\u5171\u548c\u56fd\u6cd5\u5f8b\u7684\uff0c\u4e00\u5207\u540e\u679c\u81ea\u8d1f\uff0c\u4f5c\u8005\u4e0d\u627f\u62c5\u4efb\u4f55\u8d23\u4efb\u3002\n\u51e1\u4ee5\u4efb\u4f55\u65b9\u5f0f\u76f4\u63a5\u3001\u95f4\u63a5\u4f7f\u7528APP\u8005\uff0c\u89c6\u4e3a\u81ea\u613f\u63a5\u53d7\u672c\u58f0\u660e\u7684\u7ea6\u675f\u3002\n\u672cAPP\u5982\u65e0\u610f\u4e2d\u4fb5\u72af\u4e86\u67d0\u4e2a\u5a92\u4f53\u6216\u4e2a\u4eba\u7684\u77e5\u8bc6\u4ea7\u6743\uff0c\u8bf7\u6765\u4fe1\u6216\u6765\u7535\u544a\u4e4b\uff0c\u4f5c\u8005\u5c06\u7acb\u5373\u5220\u9664\u3002"

    .line 814
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 815
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x3c

    .line 816
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 817
    invoke-virtual {p0, v3}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v3, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 818
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 819
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 821
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 822
    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 824
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 825
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6211\u5df2\u9605\u8bfb"

    .line 827
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 828
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x5b

    const/16 v4, 0xa5

    const/16 v7, 0x4b

    .line 829
    invoke-static {v7, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 830
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 831
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v4

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v8

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v9

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v10

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 832
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 833
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v3, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 834
    invoke-virtual {p0, v7}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/MainActivity;->dp(F)I

    move-result v1

    invoke-virtual {v8, v6, v6, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 835
    invoke-virtual {v4, v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 838
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 839
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 840
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 843
    :cond_0
    new-instance v2, Lcom/rootclicker/app/MainActivity$27;

    invoke-direct {v2, p0, v1}, Lcom/rootclicker/app/MainActivity$27;-><init>(Lcom/rootclicker/app/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startOverlay()V
    .locals 4

    .line 955
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 956
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/rootclicker/app/MainActivity;->requestOverlay()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 960
    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->setRequestedRunning(Z)V

    .line 961
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rootclicker/app/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 962
    invoke-direct {p0}, Lcom/rootclicker/app/MainActivity;->refreshPermissionStatus()V

    const-string v0, "\u60ac\u6d6e\u7a97\u5df2\u542f\u52a8"

    .line 963
    invoke-direct {p0, v0}, Lcom/rootclicker/app/MainActivity;->toast(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity;->dialogStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 965
    new-instance v1, Lcom/rootclicker/app/MainActivity$31;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/MainActivity$31;-><init>(Lcom/rootclicker/app/MainActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
