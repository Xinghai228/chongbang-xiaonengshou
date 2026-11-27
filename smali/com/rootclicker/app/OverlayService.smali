.class public final Lcom/rootclicker/app/OverlayService;
.super Landroid/app/Service;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rootclicker/app/OverlayService$ControlBarView;,
        Lcom/rootclicker/app/OverlayService$PanelGesture;,
        Lcom/rootclicker/app/OverlayService$ResizeGrip;,
        Lcom/rootclicker/app/OverlayService$AnonymousClass4;,
        Lcom/rootclicker/app/OverlayService$MarkerView;
    }
.end annotation


# static fields
.field public static final ACTION_STOP:Ljava/lang/String; = "com.rootclicker.app.action.STOP"

.field private static final FGS_TYPE_SPECIAL_USE:I = 0x40000000

.field private static instance:Lcom/rootclicker/app/OverlayService;

.field private static volatile requestedRunning:Z


# instance fields
.field private a11yMode:Z

.field private final activeIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addPointButton:Landroid/widget/TextView;

.field private cellLockedBg:Landroid/graphics/drawable/GradientDrawable;

.field private cellLockedSelectedBg:Landroid/graphics/drawable/GradientDrawable;

.field private cellNormalBg:Landroid/graphics/drawable/GradientDrawable;

.field private cellSelectedBg:Landroid/graphics/drawable/GradientDrawable;

.field private clock:Landroid/os/Handler;

.field private clockThread:Landroid/os/HandlerThread;

.field private confirmParams:Landroid/view/WindowManager$LayoutParams;

.field private confirmView:Landroid/view/View;

.field private controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

.field private controlBarShown:Z

.field private controlParams:Landroid/view/WindowManager$LayoutParams;

.field private countGrid:Landroid/widget/GridLayout;

.field private countPanel:Landroid/view/View;

.field private countPanelParams:Landroid/view/WindowManager$LayoutParams;

.field private countPanelPinned:Z

.field private countPanelWidth:I

.field private countScroll:Landroid/widget/ScrollView;

.field private countSummary:Landroid/widget/TextView;

.field private crossIntervalMs:I

.field private current:I

.field private currentTab:Landroid/widget/TextView;

.field private dimFrozen:Z

.field private editingCurrent:Z

.field private editor:Lcom/rootclicker/app/PointEditorView;

.field private final gridCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private helperHeight:I

.field private helperWidth:I

.field private holdMs:I

.field private intervalMs:I

.field private final keys:Lcom/rootclicker/app/KeyInterruptMonitor;

.field private lanLink:Lcom/rootclicker/app/LanLink;

.field private lastCellTapAt:J

.field private lastCellTapValue:I

.field private lastCellTapWasTarget:Z

.field private lastRunMs:J

.field private final markerParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final markers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rootclicker/app/OverlayService$MarkerView;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTrim:Z

.field private final pointItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rootclicker/app/ClickPoint;",
            ">;"
        }
    .end annotation
.end field

.field private pointsList:Landroid/widget/LinearLayout;

.field private pointsUiSync:Z

.field private relationList:Landroid/widget/LinearLayout;

.field private relationStatus:Landroid/widget/TextView;

.field private relationText:Ljava/lang/String;

.field private relationTitle:Landroid/widget/TextView;

.field private reopenCountAfterEdit:Z

.field private final root:Lcom/rootclicker/app/RootClient;

.field private runHeight:I

.field private runHold:I

.field private runNeeded:I

.field private runPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rootclicker/app/ClickPoint;",
            ">;"
        }
    .end annotation
.end field

.field private runSequential:Z

.field private volatile runSession:I

.field private runStart:I

.field private runStartedAt:J

.field private runSubInterval:I

.field private runWidth:I

.field private running:Z

.field private sequentialGapMs:I

.field private starting:Z

.field private statusView:Landroid/widget/TextView;

.field private final tapLock:Ljava/lang/Object;

.field private target:I

.field private targetTab:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;

.field private vibrator:Landroid/os/Vibrator;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->markers:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->markerParamsList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/rootclicker/app/RootClient;

    invoke-direct {v0}, Lcom/rootclicker/app/RootClient;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    .line 109
    new-instance v0, Lcom/rootclicker/app/KeyInterruptMonitor;

    new-instance v1, Lcom/rootclicker/app/OverlayService$1;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$1;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-direct {v0, v1}, Lcom/rootclicker/app/KeyInterruptMonitor;-><init>(Lcom/rootclicker/app/KeyInterruptMonitor$Callback;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->helperWidth:I

    .line 116
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->helperHeight:I

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    const/16 v0, 0x64

    .line 121
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runSubInterval:I

    const/16 v0, 0x32

    .line 122
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runHold:I

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->tapLock:Ljava/lang/Object;

    const-string v0, "\u6ca1\u6709\u4ece\u5c5e\u5173\u7cfb"

    .line 125
    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lcom/rootclicker/app/OverlayService;->lastRunMs:J

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/rootclicker/app/OverlayService;)Lcom/rootclicker/app/LanLink;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/rootclicker/app/OverlayService;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/rootclicker/app/OverlayService;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/rootclicker/app/OverlayService;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    return p0
.end method

.method static synthetic access$1400(Lcom/rootclicker/app/OverlayService;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/ClickPoint;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->tapPointByShellSync(Lcom/rootclicker/app/ClickPoint;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/rootclicker/app/OverlayService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/rootclicker/app/OverlayService;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->tapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->runStart:I

    return p0
.end method

.method static synthetic access$1900(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->successToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->target:I

    return p0
.end method

.method static synthetic access$2000(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->stopRun(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    return p1
.end method

.method static synthetic access$2100(Lcom/rootclicker/app/OverlayService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->buildCountPanel()V

    return-void
.end method

.method static synthetic access$2200(Lcom/rootclicker/app/OverlayService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/rootclicker/app/OverlayService;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->countPanelPinned:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->countPanelWidth:I

    return p0
.end method

.method static synthetic access$2502(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->countPanelWidth:I

    return p1
.end method

.method static synthetic access$2600(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/rootclicker/app/OverlayService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rootclicker/app/OverlayService;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    return p0
.end method

.method static synthetic access$402(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    return p1
.end method

.method static synthetic access$500(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    return p0
.end method

.method static synthetic access$502(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    return p1
.end method

.method static synthetic access$600(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    return p0
.end method

.method static synthetic access$602(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    return p1
.end method

.method static synthetic access$700(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->sequentialGapMs:I

    return p0
.end method

.method static synthetic access$702(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->sequentialGapMs:I

    return p1
.end method

.method static synthetic access$800(Lcom/rootclicker/app/OverlayService;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/rootclicker/app/OverlayService;->pointsUiSync:Z

    return p0
.end method

.method static synthetic access$900(Lcom/rootclicker/app/OverlayService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    return p0
.end method

.method static synthetic access$902(Lcom/rootclicker/app/OverlayService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    return p1
.end method

.method private activeOrderOf(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method private activePoint()Lcom/rootclicker/app/ClickPoint;
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 419
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/ClickPoint;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private activePoints()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rootclicker/app/ClickPoint;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 437
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 438
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/ClickPoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private addCollapsible(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "str",
            "linearLayout2",
            "z"
        }
    .end annotation

    .line 510
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rootclicker/app/OverlayService;->sectionHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)Landroid/widget/TextView;

    .line 511
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addPointClicked()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/rootclicker/app/Prefs;->getMaxPoints()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6700\u591a\u4fdd\u5b58"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rootclicker/app/Prefs;->getMaxPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u5750\u6807\uff0c\u8bf7\u5148\u5220\u9664\u4e00\u4e2a\u5750\u6807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->enterEdit()V

    :goto_0
    return-void
.end method

.method private buildCoordinateBlock()Landroid/widget/LinearLayout;
    .locals 7

    .line 884
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 885
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 886
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0xf0

    const/16 v3, 0xf4

    const/16 v4, 0xef

    .line 887
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v2, v3}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 888
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    const-string v4, "\u65b0\u589e\u5750\u6807\u70b9"

    .line 889
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 891
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 892
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 893
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 894
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 895
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    const/16 v4, 0x5b

    const/16 v5, 0xa5

    const/16 v6, 0x4b

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v4, v5}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 896
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    new-instance v4, Lcom/rootclicker/app/OverlayService$16;

    invoke-direct {v4, p0}, Lcom/rootclicker/app/OverlayService$16;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {p0, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    .line 904
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 905
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildCountPanel()V
    .locals 16

    move-object/from16 v1, p0

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v0

    .line 1150
    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getCountPanelRect(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x2

    .line 1151
    aget v3, v2, v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/high16 v5, 0x43560000    # 214.0f

    invoke-virtual {v1, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    aget v6, v0, v4

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v3, v5, v6}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43680000    # 232.0f

    invoke-virtual {v1, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    const/high16 v5, 0x43a60000    # 332.0f

    invoke-virtual {v1, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    aget v6, v0, v4

    const/high16 v7, 0x429c0000    # 78.0f

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    const/4 v5, 0x3

    .line 1152
    aget v5, v2, v5

    const/4 v11, 0x1

    if-lez v5, :cond_1

    const/high16 v6, 0x43820000    # 260.0f

    invoke-virtual {v1, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    aget v7, v0, v11

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v1, v8}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v5, v6, v7}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v5

    goto :goto_1

    :cond_1
    const/high16 v5, 0x43f60000    # 492.0f

    invoke-virtual {v1, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    aget v6, v0, v11

    int-to-float v6, v6

    const v7, 0x3f147ae1    # 0.58f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    move v12, v5

    .line 1153
    iput v3, v1, Lcom/rootclicker/app/OverlayService;->countPanelWidth:I

    .line 1154
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1155
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v13, 0x40000000    # 2.0f

    .line 1156
    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0xfc

    const/16 v8, 0xfa

    .line 1157
    invoke-static {v8, v8, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v1, v6, v8}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1159
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xce

    const/16 v10, 0xd7

    const/16 v14, 0xcf

    .line 1160
    invoke-static {v9, v14, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-virtual {v1, v9, v10}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x42380000    # 46.0f

    invoke-virtual {v1, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v1, v15}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    invoke-direct {v9, v10, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 1162
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1163
    invoke-virtual {v6, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    new-instance v8, Lcom/rootclicker/app/OverlayService$PanelGesture;

    invoke-direct {v8, v1, v4}, Lcom/rootclicker/app/OverlayService$PanelGesture;-><init>(Lcom/rootclicker/app/OverlayService;Z)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1165
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v1, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 1167
    invoke-virtual {v1, v8}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v1, v15}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    invoke-virtual {v6, v14, v4, v13, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/high16 v13, 0x41700000    # 15.0f

    const/16 v14, 0x2b

    const/16 v7, 0x2c

    const/16 v9, 0x35

    .line 1168
    invoke-static {v14, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    const-string v7, "\u8bbe\u7f6e"

    invoke-direct {v1, v7, v13, v15}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v7

    .line 1169
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1170
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1171
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    const v4, 0x800013

    invoke-direct {v13, v15, v15, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    const/16 v13, 0xa5

    const/16 v4, 0x4b

    const/16 v9, 0x5b

    invoke-static {v4, v9, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-direct {v1, v7, v8, v13}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    .line 1173
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1174
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1175
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v1, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    invoke-virtual {v7, v4, v9, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1177
    iget-object v4, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    const/16 v7, 0xec

    const/16 v8, 0xf8

    const/16 v9, 0xee

    invoke-static {v7, v9, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual {v1, v7, v8}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    iget-object v4, v1, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v15, v15, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u2715"

    const/16 v7, 0x35

    const/16 v8, 0x2c

    .line 1179
    invoke-static {v14, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/high16 v7, 0x41600000    # 14.0f

    invoke-direct {v1, v4, v7, v13}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v4

    .line 1180
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x0

    .line 1181
    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    invoke-virtual {v4, v8, v10, v13, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1182
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1183
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v8, 0xe7

    const/16 v10, 0xe8

    .line 1184
    invoke-static {v8, v10, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1185
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41d00000    # 26.0f

    .line 1186
    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    .line 1187
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const v10, 0x800015

    invoke-direct {v8, v7, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 1188
    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v7, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1189
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    new-instance v7, Lcom/rootclicker/app/OverlayService$23;

    invoke-direct {v7, v1}, Lcom/rootclicker/app/OverlayService$23;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1197
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1199
    iput-object v4, v1, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    .line 1200
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1201
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 1202
    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    invoke-virtual {v6, v8, v10, v13, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v7, "\u4ece\u5c5e\u5173\u7cfb"

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->buildRelationBody()Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v1, v6, v7, v8, v10}, Lcom/rootclicker/app/OverlayService;->addCollapsible(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)V

    const-string v7, "\u2460 \u7a97\u53e3\u8bbe\u7f6e"

    .line 1204
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->buildWindowSettingsBody()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8, v10}, Lcom/rootclicker/app/OverlayService;->addCollapsible(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)V

    const-string v7, "\u2461 \u70b9\u51fb\u901f\u5ea6"

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->buildTimingBody()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8, v10}, Lcom/rootclicker/app/OverlayService;->addCollapsible(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)V

    const-string v7, "\u2462 \u70b9\u51fb\u5750\u6807\uff08\u6700\u591a4\u4e2a\uff09"

    .line 1206
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->buildCoordinateBlock()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8, v10}, Lcom/rootclicker/app/OverlayService;->addCollapsible(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)V

    .line 1207
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1208
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    .line 1209
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v8, 0x41300000    # 11.0f

    const/16 v10, 0x35

    const/16 v11, 0x2c

    .line 1210
    invoke-static {v14, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    const-string v11, "\u2463 \u70b9\u51fb\u8bbe\u7f6e"

    invoke-direct {v1, v11, v8, v10}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v8

    .line 1211
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x41000000    # 8.0f

    .line 1212
    invoke-virtual {v1, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    invoke-virtual {v1, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    const/high16 v13, 0x40800000    # 4.0f

    invoke-virtual {v1, v13}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual {v1, v14}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    invoke-virtual {v8, v11, v10, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1213
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v10, v13, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1215
    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getSequential(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "\u70b9\u4f4d\u987a\u5e8f\u6267\u884c"

    goto :goto_2

    :cond_2
    const-string v10, "\u70b9\u4f4d\u4ea4\u53c9\u6267\u884c"

    :goto_2
    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41200000    # 10.0f

    .line 1216
    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setTextSize(F)V

    const/16 v10, 0x38

    const/16 v13, 0x41

    const/16 v14, 0x37

    .line 1217
    invoke-static {v14, v10, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setTextColor(I)V

    const v10, 0x10100a0

    .line 1218
    filled-new-array {v10}, [I

    move-result-object v10

    const/4 v13, 0x0

    new-array v14, v13, [I

    filled-new-array {v10, v14}, [[I

    move-result-object v10

    .line 1219
    new-instance v13, Landroid/content/res/ColorStateList;

    const/16 v14, 0xa5

    const/16 v11, 0x4b

    const/16 v15, 0x5b

    invoke-static {v11, v15, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    const/16 v14, 0xff

    invoke-static {v14, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    filled-new-array {v11, v14}, [I

    move-result-object v11

    invoke-direct {v13, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v8, v13}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1220
    new-instance v11, Landroid/content/res/ColorStateList;

    const/16 v13, 0xc9

    const/16 v14, 0xe8

    const/16 v15, 0xcf

    invoke-static {v13, v15, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0xe3

    const/16 v15, 0xe5

    invoke-static {v14, v15, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    filled-new-array {v13, v9}, [I

    move-result-object v9

    invoke-direct {v11, v10, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1221
    invoke-static/range {p0 .. p0}, Lcom/rootclicker/app/Prefs;->getSequential(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1222
    new-instance v9, Lcom/rootclicker/app/OverlayService$24;

    invoke-direct {v9, v1}, Lcom/rootclicker/app/OverlayService$24;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1229
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1230
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1231
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 1232
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v8, "\u5f53\u524d"

    .line 1233
    invoke-direct {v1, v8}, Lcom/rootclicker/app/OverlayService;->tab(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v1, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    const-string v8, "\u76ee\u6807"

    .line 1234
    invoke-direct {v1, v8}, Lcom/rootclicker/app/OverlayService;->tab(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v1, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    .line 1235
    iget-object v8, v1, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    new-instance v9, Lcom/rootclicker/app/OverlayService$25;

    invoke-direct {v9, v1}, Lcom/rootclicker/app/OverlayService$25;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    iget-object v8, v1, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    new-instance v9, Lcom/rootclicker/app/OverlayService$26;

    invoke-direct {v9, v1}, Lcom/rootclicker/app/OverlayService$26;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1247
    iget-object v8, v1, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41e80000    # 29.0f

    invoke-virtual {v1, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v9, v13, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v8, v1, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41e80000    # 29.0f

    invoke-virtual {v1, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-direct {v9, v13, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1250
    new-instance v7, Landroid/widget/GridLayout;

    invoke-direct {v7, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    const/4 v8, 0x4

    .line 1251
    invoke-virtual {v7, v8}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 1252
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 1253
    iget-object v7, v1, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x7a

    const/16 v7, 0x85

    const/16 v8, 0x78

    .line 1257
    invoke-static {v8, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const-string v7, "\u672a\u6267\u884c"

    const/high16 v8, 0x41400000    # 12.0f

    invoke-direct {v1, v7, v8, v6}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v1, Lcom/rootclicker/app/OverlayService;->statusView:Landroid/widget/TextView;

    .line 1258
    invoke-virtual {v1, v8}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1259
    iget-object v6, v1, Lcom/rootclicker/app/OverlayService;->statusView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1260
    iget-object v6, v1, Lcom/rootclicker/app/OverlayService;->statusView:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const v8, 0x800013

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v10, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    new-instance v6, Lcom/rootclicker/app/OverlayService$ResizeGrip;

    invoke-direct {v6, v1}, Lcom/rootclicker/app/OverlayService$ResizeGrip;-><init>(Lcom/rootclicker/app/OverlayService;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {v1, v8}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v1, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    const v10, 0x800015

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v1, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    .line 1263
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1264
    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    iput-object v5, v1, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    .line 1266
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->overlayType()I

    move-result v8

    const/16 v9, 0x28

    const/4 v10, -0x3

    move-object v5, v4

    move v6, v3

    move v7, v12

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    .line 1267
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 1268
    aget v5, v2, v4

    if-ltz v5, :cond_3

    const/4 v6, 0x1

    aget v7, v2, v6

    if-ltz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iput-boolean v6, v1, Lcom/rootclicker/app/OverlayService;->countPanelPinned:Z

    if-eqz v6, :cond_4

    .line 1270
    iget-object v6, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    aget v7, v0, v4

    sub-int/2addr v7, v3

    invoke-virtual {v1, v5, v4, v7}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v3

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1271
    iget-object v3, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x1

    aget v2, v2, v5

    aget v0, v0, v5

    sub-int/2addr v0, v12

    invoke-virtual {v1, v2, v4, v0}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 1273
    :cond_4
    iget-object v2, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v6, v0, v4

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v5, v4, v3}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1274
    iget-object v2, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v1, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, v1, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int/2addr v0, v12

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1277
    :goto_4
    :try_start_0
    iget-object v0, v1, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v2, v1, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    iget-object v3, v1, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    invoke-direct {v1, v4}, Lcom/rootclicker/app/OverlayService;->setControlBarVisible(Z)V

    .line 1279
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->refreshCoordinateViews()V

    const-wide/16 v2, 0x0

    .line 1281
    iput-wide v2, v1, Lcom/rootclicker/app/OverlayService;->lastCellTapAt:J

    .line 1282
    iget-boolean v0, v1, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    invoke-direct {v1, v0}, Lcom/rootclicker/app/OverlayService;->selectCountMode(Z)V

    .line 1283
    iget-object v0, v1, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->isSlave()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1284
    iget-object v0, v1, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->resyncMasterTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 1287
    iput-object v2, v1, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u6b21\u6570\u9762\u677f: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-void
.end method

.method private buildRelationBody()Landroid/widget/LinearLayout;
    .locals 7

    .line 515
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 517
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0xf0

    const/16 v3, 0xf4

    const/16 v4, 0xef

    .line 518
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v2, v3}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    const/16 v4, 0x32

    const/16 v5, 0x3b

    const/16 v6, 0x31

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    .line 520
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 521
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 522
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x7a

    const/16 v3, 0x85

    const/16 v4, 0x78

    .line 523
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v3, "\u540c\u4e00 WiFi \u4e0b\u6253\u5f00\u672c\u8f6f\u4ef6\u7684\u8bbe\u5907\u4f1a\u81ea\u52a8\u51fa\u73b0\u5728\u8fd9\u91cc\uff0c\u6253\u5f00\u5f00\u5173\u5373\u53ef\u8fde\u63a5\uff0c\u5bf9\u65b9\u65e0\u9700\u540c\u610f\u3002"

    const/high16 v4, 0x41300000    # 11.0f

    invoke-direct {p0, v3, v4, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 524
    invoke-virtual {p0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f933333    # 1.15f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 525
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    .line 527
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 528
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshRelationPanel()V

    return-object v0
.end method

.method private buildTimingBody()Landroid/widget/LinearLayout;
    .locals 12

    .line 623
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 624
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 625
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 626
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    invoke-direct {p0, v1}, Lcom/rootclicker/app/OverlayService;->numberInput(I)Landroid/widget/EditText;

    move-result-object v1

    .line 627
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    invoke-direct {p0, v2}, Lcom/rootclicker/app/OverlayService;->numberInput(I)Landroid/widget/EditText;

    move-result-object v8

    .line 628
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    invoke-direct {p0, v2}, Lcom/rootclicker/app/OverlayService;->numberInput(I)Landroid/widget/EditText;

    move-result-object v9

    .line 629
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->sequentialGapMs:I

    invoke-direct {p0, v2}, Lcom/rootclicker/app/OverlayService;->numberInput(I)Landroid/widget/EditText;

    move-result-object v10

    const-string v2, "\u70b9\u51fb\u95f4\u9694"

    const-string v3, "\u6beb\u79d2"

    .line 630
    invoke-direct {p0, v2, v3, v1}, Lcom/rootclicker/app/OverlayService;->inputRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u6309\u538b\u65f6\u95f4"

    .line 631
    invoke-direct {p0, v2, v3, v8}, Lcom/rootclicker/app/OverlayService;->inputRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u4ea4\u53c9\u95f4\u9694"

    .line 632
    invoke-direct {p0, v2, v3, v9}, Lcom/rootclicker/app/OverlayService;->inputRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u987a\u5e8f\u70b9\u4f4d\u95f4\u9694"

    .line 633
    invoke-direct {p0, v2, v3, v10}, Lcom/rootclicker/app/OverlayService;->inputRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    new-instance v11, Lcom/rootclicker/app/OverlayService$9;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/rootclicker/app/OverlayService$9;-><init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 675
    invoke-virtual {v1, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 676
    invoke-virtual {v8, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 677
    invoke-virtual {v9, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 678
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method private buildWindowSettingsBody()Landroid/widget/LinearLayout;
    .locals 5

    .line 788
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 789
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 790
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0xf0

    const/16 v2, 0xf4

    const/16 v3, 0xef

    .line 791
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v1, v2}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getShowDuringRun(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/rootclicker/app/OverlayService$13;

    invoke-direct {v2, p0}, Lcom/rootclicker/app/OverlayService$13;-><init>(Lcom/rootclicker/app/OverlayService;)V

    const-string v3, "\u6267\u884c\u65f6\u663e\u793a\u7a97\u53e3"

    invoke-direct {p0, v3, v1, v2}, Lcom/rootclicker/app/OverlayService;->switchRow(Ljava/lang/String;ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 798
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getShowAfterRun(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/rootclicker/app/OverlayService$14;

    invoke-direct {v2, p0}, Lcom/rootclicker/app/OverlayService$14;-><init>(Lcom/rootclicker/app/OverlayService;)V

    const-string v3, "\u6267\u884c\u5b8c\u6210\u540e\u663e\u793a\u7a97\u53e3"

    invoke-direct {p0, v3, v1, v2}, Lcom/rootclicker/app/OverlayService;->switchRow(Ljava/lang/String;ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private clearPanelFocus()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, v0}, Lcom/rootclicker/app/OverlayService;->setPanelFocusable(Z)V

    return-void
.end method

.method private confirmDeletePoint(I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->confirmView:Landroid/view/View;

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/ClickPoint;

    .line 1050
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x66000000

    .line 1051
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1053
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1054
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1055
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0xfc

    const/16 v4, 0xfa

    .line 1056
    invoke-static {v4, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0, v2, v4}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x43820000    # 260.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    const/4 v5, -0x2

    const/16 v7, 0x11

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x2c

    const/16 v4, 0x35

    const/16 v8, 0x2b

    .line 1058
    invoke-static {v8, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v4, "\u5220\u9664\u5750\u6807\u70b9"

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct {p0, v4, v8, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    .line 1059
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1060
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u786e\u5b9a\u5220\u9664 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5417\uff1f\u5220\u9664\u540e\u4e0d\u53ef\u6062\u590d\u3002"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7a

    const/16 v4, 0x85

    const/16 v8, 0x78

    invoke-static {v8, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-direct {p0, v0, v4, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    .line 1062
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1063
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1064
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1065
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x38

    const/16 v6, 0x41

    const/16 v9, 0x37

    .line 1066
    invoke-static {v9, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v6, "\u53d6\u6d88"

    invoke-direct {p0, v6, v4, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    .line 1067
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0xe5

    const/16 v9, 0xeb

    const/16 v10, 0xe4

    .line 1068
    invoke-static {v10, v6, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {p0, v6, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    new-instance v6, Lcom/rootclicker/app/OverlayService$21;

    invoke-direct {v6, p0}, Lcom/rootclicker/app/OverlayService$21;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42180000    # 38.0f

    invoke-virtual {p0, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u5220\u9664"

    const/4 v6, -0x1

    .line 1076
    invoke-direct {p0, v2, v4, v6}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    .line 1077
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1078
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0xc4

    const/16 v7, 0x3c

    .line 1079
    invoke-static {v4, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p0, v4, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    new-instance v4, Lcom/rootclicker/app/OverlayService$22;

    invoke-direct {v4, p0, p1}, Lcom/rootclicker/app/OverlayService$22;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-direct {p1, v8, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 1087
    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {p1, v4, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1088
    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->confirmView:Landroid/view/View;

    .line 1091
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->overlayType()I

    move-result v10

    const/16 v11, 0x8

    const/4 v12, -0x3

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService;->confirmParams:Landroid/view/WindowManager$LayoutParams;

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 1095
    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->confirmView:Landroid/view/View;

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u6cd5\u663e\u793a\u786e\u8ba4\u7a97\u53e3: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private deletePoint(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/ClickPoint;

    .line 1126
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1127
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1128
    :goto_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 1130
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_2
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->persistPoints()V

    .line 1134
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->refreshCoordinateViews()V

    .line 1135
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V

    .line 1136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u5220\u9664\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private dispatchAccessibilityTap(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "i",
            "pointIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    .line 2089
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rootclicker/app/ClickPoint;

    .line 2093
    invoke-static {}, Lcom/rootclicker/app/ClickAccessibilityService;->get()Lcom/rootclicker/app/ClickAccessibilityService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2095
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$47;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/OverlayService$47;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0

    .line 2103
    :cond_1
    iget v0, p2, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p2, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runHold:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/rootclicker/app/ClickAccessibilityService;->tap(FFJ)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2104
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v2, Lcom/rootclicker/app/OverlayService$48;

    invoke-direct {v2, p0, p1, p2}, Lcom/rootclicker/app/OverlayService$48;-><init>(Lcom/rootclicker/app/OverlayService;ILcom/rootclicker/app/ClickPoint;)V

    const-wide/16 p1, 0x23

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private ensureHelper(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i2"
        }
    .end annotation

    .line 2261
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    invoke-virtual {v0}, Lcom/rootclicker/app/RootClient;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->helperWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->helperHeight:I

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    invoke-virtual {v0}, Lcom/rootclicker/app/RootClient;->stop()V

    .line 2265
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/rootclicker/app/RootClient;->start(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->helperWidth:I

    .line 2268
    iput p2, p0, Lcom/rootclicker/app/OverlayService;->helperHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 2270
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->helperWidth:I

    .line 2271
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->helperHeight:I

    :goto_0
    return v0
.end method

.method private enterEdit()V
    .locals 10

    .line 1604
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    if-eqz v0, :cond_0

    return-void

    .line 1607
    :cond_0
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_2

    .line 1608
    :cond_1
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->stopRun()V

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->reopenCountAfterEdit:Z

    .line 1611
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    .line 1612
    new-instance v0, Lcom/rootclicker/app/PointEditorView;

    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->activePoint()Lcom/rootclicker/app/ClickPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/rootclicker/app/OverlayService$29;

    invoke-direct {v3, p0}, Lcom/rootclicker/app/OverlayService$29;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/rootclicker/app/PointEditorView;-><init>(Landroid/content/Context;Lcom/rootclicker/app/ClickPoint;Ljava/lang/String;Lcom/rootclicker/app/PointEditorView$Callback;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    .line 1618
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->overlayType()I

    move-result v7

    const/16 v8, 0x308

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x800033

    .line 1619
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1621
    :try_start_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1622
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1624
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u663e\u793a\u9009\u70b9\u5c42: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static get()Lcom/rootclicker/app/OverlayService;
    .locals 1

    .line 153
    sget-object v0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    return-object v0
.end method

.method private hideCountPanel()V
    .locals 3

    .line 1308
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1310
    :try_start_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :catch_0
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    .line 1314
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    const/4 v0, 0x1

    .line 1316
    invoke-direct {p0, v0}, Lcom/rootclicker/app/OverlayService;->setControlBarVisible(Z)V

    .line 1317
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->countSummary:Landroid/widget/TextView;

    .line 1318
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    .line 1319
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    .line 1320
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    .line 1321
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    .line 1322
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->statusView:Landroid/widget/TextView;

    .line 1323
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1324
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    .line 1325
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    .line 1326
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    .line 1327
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    .line 1328
    iput-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    return-void
.end method

.method private inputRow(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "str2",
            "editText"
        }
    .end annotation

    .line 706
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 707
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 708
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x7a

    const/16 v4, 0x85

    const/16 v5, 0x78

    .line 709
    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, p1, v4, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 711
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 712
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "\u2212"

    const/4 v5, -0x1

    .line 713
    invoke-direct {p0, v2, p3, v5}, Lcom/rootclicker/app/OverlayService;->stepButton(Ljava/lang/String;Landroid/widget/EditText;I)Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {p0, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42680000    # 58.0f

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-virtual {p0, v8}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40c00000    # 6.0f

    .line 715
    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    invoke-virtual {v2, v8, v3, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 716
    invoke-virtual {p1, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\uff0b"

    .line 717
    invoke-direct {p0, v2, p3, v1}, Lcom/rootclicker/app/OverlayService;->stepButton(Ljava/lang/String;Landroid/widget/EditText;I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {p0, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p3, -0x777778

    .line 718
    invoke-direct {p0, p2, v4, p3}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    .line 719
    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p3

    invoke-virtual {p2, p3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 720
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static interruptByKey(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 2213
    sget-object v0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x18

    if-ne p0, v1, :cond_1

    const/16 p0, 0x73

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    if-ne p0, v1, :cond_2

    const/16 p0, 0x72

    .line 2225
    :goto_0
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/rootclicker/app/OverlayService$51;

    invoke-direct {v2, v0, p0}, Lcom/rootclicker/app/OverlayService$51;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private isPointActive(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isRunning()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/rootclicker/app/OverlayService;->requestedRunning:Z

    return v0
.end method

.method static lambda$resetCountDefaults$0(Lcom/rootclicker/app/OverlayService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlayService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    const/16 v1, 0xa

    .line 184
    iput v1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 185
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 186
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 187
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    .line 188
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    .line 189
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V

    return-void
.end method

.method static lambda$resetCurrentCount$0(Lcom/rootclicker/app/OverlayService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlayService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    .line 207
    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 208
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V

    .line 209
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 210
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    return-void
.end method

.method static lambda$sectionHeader$0(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "textView",
            "str",
            "view"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 701
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p2, "  \u25be"

    goto :goto_2

    :cond_2
    const-string p2, "  \u25b8"

    :goto_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private layoutMargins(IIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i2",
            "i3",
            "i4",
            "i5",
            "i6"
        }
    .end annotation

    .line 2446
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float p1, p3

    .line 2447
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p1

    int-to-float p2, p4

    invoke-virtual {p0, p2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p2

    int-to-float p3, p5

    invoke-virtual {p0, p3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p3

    int-to-float p4, p6

    invoke-virtual {p0, p4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private loadPoints()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 402
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getPoints(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getActiveIndices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 407
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private numberInput(I)Landroid/widget/EditText;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 749
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 751
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 p1, 0x11

    .line 752
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p1, 0x1

    .line 753
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v1, 0x0

    .line 754
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 755
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 756
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 757
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v1, 0x2

    .line 758
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 759
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 760
    new-instance p1, Lcom/rootclicker/app/OverlayService$12;

    invoke-direct {p1, p0}, Lcom/rootclicker/app/OverlayService$12;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method private onCountSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1563
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_1

    .line 1564
    :cond_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->stopRun()V

    :cond_1
    const/4 v0, 0x0

    .line 1566
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 1567
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 1568
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    if-eqz v0, :cond_2

    .line 1569
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    .line 1570
    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    goto :goto_0

    .line 1572
    :cond_2
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 1573
    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setTarget(Landroid/content/Context;I)V

    .line 1574
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/rootclicker/app/LanLink;->isMaster()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1575
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->target:I

    invoke-virtual {p1, v0}, Lcom/rootclicker/app/LanLink;->sendTarget(I)V

    .line 1578
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 1579
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    return-void
.end method

.method private overlayType()I
    .locals 1

    const/16 v0, 0x7f6

    return v0
.end method

.method private pointCard(I)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 931
    iget-object v2, v0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/ClickPoint;

    .line 932
    invoke-direct/range {p0 .. p1}, Lcom/rootclicker/app/OverlayService;->isPointActive(I)Z

    move-result v3

    .line 933
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 934
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 935
    invoke-virtual {v0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v8

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    invoke-virtual {v0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0xf6

    const/4 v7, -0x1

    if-eqz v3, :cond_0

    const/16 v8, 0xe2

    const/16 v9, 0xe6

    .line 936
    invoke-static {v8, v9, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v0, v8, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 937
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 938
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 939
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v5, 0x41300000    # 11.0f

    .line 940
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 941
    iget-object v12, v2, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0xf5

    const/16 v14, 0xf9

    .line 942
    invoke-static {v12, v6, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v0, v12, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 943
    invoke-virtual {v0, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v12

    invoke-virtual {v0, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    invoke-virtual {v8, v12, v13, v14, v13}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 944
    new-instance v12, Lcom/rootclicker/app/OverlayService$17;

    invoke-direct {v12, v0}, Lcom/rootclicker/app/OverlayService$17;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 950
    new-instance v12, Lcom/rootclicker/app/OverlayService$18;

    invoke-direct {v12, v0, v2}, Lcom/rootclicker/app/OverlayService$18;-><init>(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/ClickPoint;)V

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 971
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    invoke-direct {v2, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 973
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0xc4

    const/16 v14, 0x3c

    .line 974
    invoke-static {v8, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    const-string v14, "\u5220\u9664"

    invoke-direct {v0, v14, v5, v8}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v8

    const/16 v14, 0x11

    .line 975
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v15, 0xea

    .line 976
    invoke-static {v6, v15, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 977
    new-instance v6, Lcom/rootclicker/app/OverlayService$19;

    invoke-direct {v6, v0, v1}, Lcom/rootclicker/app/OverlayService$19;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v15

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v13, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_1

    const-string v6, "\u4f7f\u7528\u4e2d"

    goto :goto_1

    :cond_1
    const-string v6, "\u5e94\u7528"

    .line 984
    :goto_1
    invoke-direct {v0, v6, v5, v7}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v5

    .line 985
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 986
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v3, :cond_2

    const/16 v3, 0x86

    const/16 v6, 0xbf

    const/16 v8, 0x7a

    goto :goto_2

    :cond_2
    const/16 v3, 0x5b

    const/16 v6, 0xa5

    const/16 v8, 0x4b

    .line 996
    :goto_2
    invoke-static {v8, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3, v9}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 997
    new-instance v3, Lcom/rootclicker/app/OverlayService$20;

    invoke-direct {v3, v0, v1}, Lcom/rootclicker/app/OverlayService$20;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v12}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-direct {v1, v13, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1004
    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3, v13, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1005
    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

.method private refreshCoordinateViews()V
    .locals 4

    .line 915
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->addPointButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u6dfb\u52a0\u5750\u6807\u70b9"

    goto :goto_0

    :cond_1
    const-string v1, "\u65b0\u589e\u5750\u6807\u70b9"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pointsUiSync:Z

    .line 920
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 921
    :goto_1
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 922
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->pointsList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/rootclicker/app/OverlayService;->pointCard(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 924
    :cond_2
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pointsUiSync:Z

    return-void
.end method

.method private removeAllMarkers()V
    .locals 3

    .line 1660
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rootclicker/app/OverlayService$MarkerView;

    .line 1662
    :try_start_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1667
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->markerParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private removeConfirm()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->confirmView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1117
    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->confirmView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private removeEditor()V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    if-eqz v0, :cond_0

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1655
    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    :cond_0
    return-void
.end method

.method public static resetCountDefaults(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    const/16 v0, 0xa

    .line 166
    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setTarget(Landroid/content/Context;I)V

    .line 167
    sget-object p0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    if-nez p0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$4;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$4;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object p0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    invoke-virtual {p0}, Lcom/rootclicker/app/LanLink;->sendReset()V

    :cond_1
    return-void
.end method

.method public static resetCurrentCount()V
    .locals 3

    .line 193
    sget-object v0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/rootclicker/app/OverlayService$5;

    invoke-direct {v2, v0}, Lcom/rootclicker/app/OverlayService$5;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sectionHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)Landroid/widget/TextView;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "linearLayout",
            "str",
            "linearLayout2",
            "z"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "  \u25be"

    goto :goto_0

    :cond_0
    const-string v1, "  \u25b8"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x35

    const/16 v3, 0x2b

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-direct {p0, v0, v2, v1}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    .line 684
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x10

    .line 685
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 686
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0xe9

    const/16 v2, 0xef

    const/16 v3, 0xe8

    .line 687
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {p0, v1, v2}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 688
    invoke-direct/range {v2 .. v8}, Lcom/rootclicker/app/OverlayService;->layoutMargins(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 689
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    new-instance p1, Lcom/rootclicker/app/OverlayService$10;

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/rootclicker/app/OverlayService$10;-><init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private selectCountMode(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 1353
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    .line 1354
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xa5

    const/16 v2, 0x5b

    const/16 v3, 0x4b

    const/16 v4, 0xee

    const/16 v5, 0xe8

    const/16 v6, 0xe7

    if-eqz p1, :cond_1

    .line 1357
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto :goto_0

    :cond_1
    invoke-static {v6, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    :goto_0
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {p0, v7, v8}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1358
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v6, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1, v8}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1359
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->currentTab:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/16 v2, 0x41

    const/16 v3, 0x38

    const/16 v4, 0x37

    if-eqz p1, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1360
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->targetTab:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    return-void
.end method

.method private setControlBarVisible(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService;->controlBarShown:Z

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 504
    :goto_0
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->controlBarShown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private setPanelFocusable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    or-int/lit8 p1, p1, 0x20

    .line 476
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v0, p1, :cond_2

    return-void

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 481
    :try_start_0
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public static setRequestedRunning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 161
    sput-boolean p0, Lcom/rootclicker/app/OverlayService;->requestedRunning:Z

    return-void
.end method

.method private showControlBar()V
    .locals 7

    .line 386
    new-instance v0, Lcom/rootclicker/app/OverlayService$ControlBarView;

    invoke-direct {v0, p0}, Lcom/rootclicker/app/OverlayService$ControlBarView;-><init>(Lcom/rootclicker/app/OverlayService;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    .line 387
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42780000    # 62.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    const/high16 v1, 0x42500000    # 52.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->overlayType()I

    move-result v4

    const/16 v5, 0x108

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    .line 388
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 389
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 390
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->controlBarShown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u663e\u793a\u60ac\u6d6e\u7a97: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->stopSelf()V

    :goto_0
    return-void
.end method

.method private smallSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;
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

    .line 835
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    const/high16 v0, 0x41600000    # 14.0f

    .line 836
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    const/high16 v0, 0x40000000    # 2.0f

    .line 837
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v7

    mul-int/lit8 v0, v7, 0x2

    sub-int v6, v9, v0

    .line 839
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v3, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v3, v2

    .line 841
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 842
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 843
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 844
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 845
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 846
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setElevation(F)V

    .line 847
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v4

    .line 848
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800013

    .line 849
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_0

    sub-int v8, v5, v6

    sub-int/2addr v8, v7

    goto :goto_0

    :cond_0
    move v8, v7

    .line 850
    :goto_0
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 851
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

    .line 852
    :goto_1
    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    div-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 853
    new-instance p1, Lcom/rootclicker/app/OverlayService$15;

    move-object v1, p1

    move-object v2, p0

    move-object v8, v0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/rootclicker/app/OverlayService$15;-><init>(Lcom/rootclicker/app/OverlayService;[Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private startClock(I)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v1, p1

    .line 1852
    iget-object v0, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1855
    :cond_0
    iget v4, v6, Lcom/rootclicker/app/OverlayService;->runNeeded:I

    .line 1856
    iget-object v0, v6, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v4, :cond_9

    if-gtz v5, :cond_1

    goto/16 :goto_4

    .line 1860
    :cond_1
    iget-wide v2, v6, Lcom/rootclicker/app/OverlayService;->runStartedAt:J

    .line 1861
    iget v0, v6, Lcom/rootclicker/app/OverlayService;->runSubInterval:I

    const/4 v7, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int v8, v4, v5

    .line 1863
    iget-boolean v9, v6, Lcom/rootclicker/app/OverlayService;->runSequential:Z

    if-eqz v9, :cond_2

    if-le v5, v7, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1864
    invoke-direct/range {v0 .. v5}, Lcom/rootclicker/app/OverlayService;->startSequentialClock(IJII)V

    return-void

    .line 1867
    :cond_2
    iget-boolean v4, v6, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    const/4 v11, 0x0

    if-nez v4, :cond_6

    if-gt v8, v7, :cond_3

    .line 1869
    invoke-direct/range {p0 .. p1}, Lcom/rootclicker/app/OverlayService;->tapOnceByShell(I)V

    return-void

    :cond_3
    :goto_0
    if-ge v11, v8, :cond_5

    .line 1873
    rem-int v4, v11, v5

    .line 1874
    div-int v12, v11, v5

    add-int/2addr v12, v7

    int-to-long v13, v11

    int-to-long v9, v0

    mul-long/2addr v13, v9

    add-long/2addr v13, v2

    .line 1876
    iget-object v9, v6, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/rootclicker/app/ClickPoint;

    .line 1877
    iget-object v10, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v15, Lcom/rootclicker/app/OverlayService$33;

    invoke-direct {v15, v6, v1, v9}, Lcom/rootclicker/app/OverlayService$33;-><init>(Lcom/rootclicker/app/OverlayService;ILcom/rootclicker/app/ClickPoint;)V

    invoke-virtual {v10, v15, v13, v14}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v9, v5, -0x1

    if-ne v4, v9, :cond_4

    .line 1887
    iget-object v4, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v9, Lcom/rootclicker/app/OverlayService$34;

    invoke-direct {v9, v6, v1, v12}, Lcom/rootclicker/app/OverlayService$34;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    iget v10, v6, Lcom/rootclicker/app/OverlayService;->runHold:I

    move/from16 v16, v8

    int-to-long v7, v10

    move-wide/from16 v17, v2

    const-wide/16 v2, 0x1

    .line 1892
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v13, v7

    .line 1887
    invoke-virtual {v4, v9, v13, v14}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v2

    move/from16 v16, v8

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move-wide/from16 v2, v17

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move-wide/from16 v17, v2

    move/from16 v16, v8

    .line 1895
    iget-object v2, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v3, Lcom/rootclicker/app/OverlayService$35;

    invoke-direct {v3, v6, v1}, Lcom/rootclicker/app/OverlayService$35;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    move/from16 v4, v16

    int-to-long v4, v4

    int-to-long v0, v0

    mul-long/2addr v4, v0

    add-long v0, v17, v4

    iget v4, v6, Lcom/rootclicker/app/OverlayService;->runHold:I

    int-to-long v4, v4

    const-wide/16 v7, 0x32

    .line 1900
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 1895
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    move-wide/from16 v17, v2

    move v4, v8

    :goto_2
    if-ge v11, v4, :cond_8

    .line 1904
    rem-int v2, v11, v5

    .line 1905
    div-int v3, v11, v5

    const/4 v7, 0x1

    add-int/2addr v3, v7

    int-to-long v8, v11

    int-to-long v12, v0

    mul-long/2addr v8, v12

    add-long v8, v17, v8

    .line 1907
    iget-object v10, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v12, Lcom/rootclicker/app/OverlayService$36;

    invoke-direct {v12, v6, v1, v2}, Lcom/rootclicker/app/OverlayService$36;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    invoke-virtual {v10, v12, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v10, v5, -0x1

    if-ne v2, v10, :cond_7

    .line 1914
    iget-object v2, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v10, Lcom/rootclicker/app/OverlayService$37;

    invoke-direct {v10, v6, v1, v3}, Lcom/rootclicker/app/OverlayService$37;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    iget v3, v6, Lcom/rootclicker/app/OverlayService;->runHold:I

    .line 1919
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v12, v3

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 1914
    invoke-virtual {v2, v10, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    const-wide/16 v14, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1922
    :cond_8
    iget-object v2, v6, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v3, Lcom/rootclicker/app/OverlayService$38;

    invoke-direct {v3, v6, v1}, Lcom/rootclicker/app/OverlayService$38;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    int-to-long v4, v4

    int-to-long v0, v0

    mul-long/2addr v4, v0

    add-long v0, v17, v4

    iget v4, v6, Lcom/rootclicker/app/OverlayService;->runHold:I

    int-to-long v4, v4

    const-wide/16 v7, 0x14

    .line 1927
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 1922
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_4
    return-void
.end method

.method private startForegroundNotification()V
    .locals 5

    const-string v0, "notification"

    .line 370
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "rc"

    if-eqz v0, :cond_0

    .line 372
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "\u51b2\u699c\u5c0f\u80fd\u624b"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 374
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "\u51b2\u699c\u5c0f\u80fd\u624b \u8fd0\u884c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "\u97f3\u91cf\u52a0\u3001\u97f3\u91cf\u51cf\u6216\u7535\u6e90\u952e\u53ef\u4e2d\u65ad\u70b9\u51fb"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080048

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/16 v3, 0x3e9

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    .line 377
    :try_start_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/rootclicker/app/OverlayService;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 382
    :catch_0
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/rootclicker/app/OverlayService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private startLanLink()V
    .locals 2

    .line 242
    new-instance v0, Lcom/rootclicker/app/LanLink;

    invoke-direct {v0, p0}, Lcom/rootclicker/app/LanLink;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    .line 243
    new-instance v1, Lcom/rootclicker/app/OverlayService$6;

    invoke-direct {v1, p0}, Lcom/rootclicker/app/OverlayService$6;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/LanLink;->setListener(Lcom/rootclicker/app/LanLink$Listener;)V

    .line 295
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->start()V

    .line 296
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->updateRelationStatus()V

    return-void
.end method

.method private startRun()V
    .locals 1

    const/4 v0, 0x0

    .line 1702
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->startRun(Z)V

    return-void
.end method

.method private startSequentialClock(IJII)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "session",
            "start",
            "rounds",
            "count"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 1931
    iget v4, v0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1933
    iget-boolean v6, v0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    if-eqz v6, :cond_0

    iget v6, v0, Lcom/rootclicker/app/OverlayService;->runHold:I

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0xa

    :goto_0
    const/4 v8, 0x0

    move-wide/from16 v9, p2

    move-wide v11, v9

    move v13, v8

    :goto_1
    if-ge v13, v3, :cond_4

    .line 1937
    iget-object v9, v0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/rootclicker/app/ClickPoint;

    .line 1938
    iget-boolean v10, v0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    if-eqz v10, :cond_2

    move v9, v8

    :goto_2
    if-ge v9, v2, :cond_1

    int-to-long v14, v9

    move-wide/from16 v16, v6

    int-to-long v5, v4

    mul-long/2addr v14, v5

    add-long/2addr v14, v11

    .line 1941
    iget-object v5, v0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v6, Lcom/rootclicker/app/OverlayService$39;

    invoke-direct {v6, v0, v1, v13}, Lcom/rootclicker/app/OverlayService$39;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v6, v16

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move-wide/from16 v16, v6

    goto :goto_4

    :cond_2
    move-wide/from16 v16, v6

    move v5, v8

    :goto_3
    if-ge v5, v2, :cond_3

    int-to-long v6, v5

    int-to-long v14, v4

    mul-long/2addr v6, v14

    add-long/2addr v6, v11

    .line 1951
    iget-object v10, v0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v14, Lcom/rootclicker/app/OverlayService$40;

    invoke-direct {v14, v0, v1, v9}, Lcom/rootclicker/app/OverlayService$40;-><init>(Lcom/rootclicker/app/OverlayService;ILcom/rootclicker/app/ClickPoint;)V

    invoke-virtual {v10, v14, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v5, v2, -0x1

    int-to-long v5, v5

    int-to-long v9, v4

    mul-long/2addr v5, v9

    add-long v9, v11, v5

    .line 1963
    iget v5, v0, Lcom/rootclicker/app/OverlayService;->target:I

    iget v6, v0, Lcom/rootclicker/app/OverlayService;->runStart:I

    add-int/lit8 v13, v13, 0x1

    mul-int v7, v13, v2

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1964
    iget-object v6, v0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v7, Lcom/rootclicker/app/OverlayService$41;

    invoke-direct {v7, v0, v1, v5}, Lcom/rootclicker/app/OverlayService$41;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    add-long v11, v9, v16

    const-wide/16 v14, 0x5

    add-long/2addr v14, v11

    invoke-virtual {v6, v7, v14, v15}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1980
    iget v5, v0, Lcom/rootclicker/app/OverlayService;->sequentialGapMs:I

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v14, v5

    add-long/2addr v11, v14

    move v5, v6

    move-wide/from16 v6, v16

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v6

    const-wide/16 v3, 0x14

    add-long v6, v16, v3

    const-wide/16 v3, 0x32

    .line 1982
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v9, v3

    .line 1983
    iget-object v3, v0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v4, Lcom/rootclicker/app/OverlayService$42;

    invoke-direct {v4, v0, v1, v2}, Lcom/rootclicker/app/OverlayService$42;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1989
    iget-object v2, v0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    new-instance v3, Lcom/rootclicker/app/OverlayService$43;

    invoke-direct {v3, v0, v1}, Lcom/rootclicker/app/OverlayService$43;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    const-wide/16 v4, 0x5

    add-long/2addr v9, v4

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stepButton(Ljava/lang/String;Landroid/widget/EditText;I)Landroid/widget/TextView;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "str",
            "editText",
            "i"
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 727
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 728
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x38

    const/16 v1, 0x41

    const/16 v2, 0x37

    .line 729
    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 730
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0xe9

    const/16 v1, 0xef

    const/16 v2, 0xe8

    .line 731
    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {p0, p1, v1}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 732
    new-instance p1, Lcom/rootclicker/app/OverlayService$11;

    invoke-direct {p1, p0, p2, p3}, Lcom/rootclicker/app/OverlayService$11;-><init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/EditText;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private stopRun()V
    .locals 1

    .line 1808
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->clearPanelFocus()V

    const/4 v0, 0x0

    .line 1809
    invoke-direct {p0, v0}, Lcom/rootclicker/app/OverlayService;->stopRun(Ljava/lang/String;)V

    return-void
.end method

.method private stopRun(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1813
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 1814
    iget-wide v3, p0, Lcom/rootclicker/app/OverlayService;->runStartedAt:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1815
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/rootclicker/app/OverlayService;->runStartedAt:J

    sub-long/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/rootclicker/app/OverlayService;->lastRunMs:J

    .line 1817
    :cond_2
    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    .line 1818
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    .line 1819
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    .line 1820
    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    if-nez v1, :cond_3

    .line 1821
    iput-boolean v2, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 1823
    :cond_3
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 1824
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1826
    :cond_4
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    invoke-static {p0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 1827
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateControl()V

    .line 1828
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 1829
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1830
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    .line 1832
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/rootclicker/app/OverlayService$32;

    invoke-direct {v2, p0}, Lcom/rootclicker/app/OverlayService$32;-><init>(Lcom/rootclicker/app/OverlayService;)V

    const-string v3, "RootClicker-stop"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 1839
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private successToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$2;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/OverlayService$2;-><init>(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switchRow(Ljava/lang/String;ZLjava/util/function/Consumer;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "z",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 825
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 826
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 827
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 828
    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x32

    const/16 v3, 0x3b

    const/16 v4, 0x31

    .line 829
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, p1, v3, v2}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    invoke-direct {p0, p2, p3}, Lcom/rootclicker/app/OverlayService;->smallSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x41d00000    # 26.0f

    invoke-virtual {p0, p3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p3

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private tab(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/16 v0, 0x38

    const/16 v1, 0x41

    const/16 v2, 0x37

    .line 1346
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v1, v0}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x11

    .line 1347
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1348
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p1
.end method

.method private tapOnceByShell(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    .line 2028
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/ClickPoint;

    .line 2032
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v4, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2033
    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    add-int/lit8 v3, v3, -0x1

    iget v0, v0, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v4, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2034
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/rootclicker/app/OverlayService$45;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/rootclicker/app/OverlayService$45;-><init>(Lcom/rootclicker/app/OverlayService;III)V

    const-string p1, "RootClicker-single"

    invoke-direct {v1, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tapPointByShell(Lcom/rootclicker/app/ClickPoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clickPoint"
        }
    .end annotation

    .line 1998
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1999
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    add-int/lit8 v2, v2, -0x1

    iget p1, p1, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    int-to-float v3, v3

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2000
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/rootclicker/app/OverlayService$44;

    invoke-direct {v2, p0, v0, p1}, Lcom/rootclicker/app/OverlayService$44;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    const-string p1, "RootClicker-tap"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tapPointByShellSync(Lcom/rootclicker/app/ClickPoint;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickPoint"
        }
    .end annotation

    const-string v0, "input tap "

    .line 2017
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p1, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v4, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2018
    iget v4, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    sub-int/2addr v4, v2

    iget p1, p1, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v5, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    int-to-float v5, v5

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2019
    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->tapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2021
    :try_start_0
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "su"

    aput-object v7, v6, v3

    const-string v3, "-c"

    aput-object v3, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v6, v0

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2024
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v4

    return-void

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private text(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "f",
            "i"
        }
    .end annotation

    .line 2290
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2292
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2293
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private togglePoint(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1029
    :cond_0
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_2

    .line 1030
    :cond_1
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->stopRun()V

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rootclicker/app/ClickPoint;

    .line 1033
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->isPointActive(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1034
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1035
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u53d6\u6d88\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_3
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u5e94\u7528\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff08"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u53f7\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 1040
    :goto_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->persistPoints()V

    .line 1041
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->refreshCoordinateViews()V

    .line 1042
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateControl()V
    .locals 1

    .line 2284
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    if-eqz v0, :cond_0

    .line 2285
    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService$ControlBarView;->invalidate()V

    :cond_0
    return-void
.end method

.method static updateDeviceName()V
    .locals 2

    .line 587
    sget-object v0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    if-eqz v0, :cond_1

    .line 588
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-nez v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {v0}, Lcom/rootclicker/app/Prefs;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/rootclicker/app/LanLink;->updateName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLiveCount()V
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rootclicker/app/OverlayService$MarkerView;

    .line 1584
    invoke-virtual {v1}, Lcom/rootclicker/app/OverlayService$MarkerView;->invalidate()V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    .line 1587
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateStatus()V

    return-void
.end method

.method private updateMarkers()V
    .locals 14

    .line 1671
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeAllMarkers()V

    .line 1672
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->editor:Lcom/rootclicker/app/PointEditorView;

    if-eqz v0, :cond_0

    return-void

    .line 1675
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v0

    const/high16 v1, 0x42080000    # 34.0f

    .line 1676
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    const/4 v8, 0x0

    move v9, v8

    .line 1677
    :goto_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_3

    .line 1678
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    .line 1679
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto/16 :goto_1

    .line 1682
    :cond_1
    iget-object v3, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/ClickPoint;

    .line 1683
    iget v3, v2, Lcom/rootclicker/app/ClickPoint;->nx:F

    aget v4, v0, v8

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    aget v5, v0, v8

    sub-int/2addr v5, v1

    invoke-virtual {p0, v3, v8, v5}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v10

    .line 1684
    iget v2, v2, Lcom/rootclicker/app/ClickPoint;->ny:F

    const/4 v3, 0x1

    aget v5, v0, v3

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v2, v4

    aget v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v8, v3}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v11

    .line 1685
    new-instance v12, Lcom/rootclicker/app/OverlayService$MarkerView;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, p0, v2}, Lcom/rootclicker/app/OverlayService$MarkerView;-><init>(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V

    .line 1686
    new-instance v13, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->overlayType()I

    move-result v5

    const/16 v6, 0x118

    const/4 v7, -0x3

    move-object v2, v13

    move v3, v1

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v2, 0x800033

    .line 1687
    iput v2, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1688
    iput v10, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1689
    iput v11, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1691
    :try_start_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v2, v12, v13}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1692
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->markerParamsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u663e\u793a\u5750\u6807\u5706\u7403: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private updateStatus()V
    .locals 5

    .line 1591
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1594
    :cond_0
    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-eqz v1, :cond_1

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u70b9\u51fb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runNeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rootclicker/app/OverlayService;->current:I

    iget v3, p0, Lcom/rootclicker/app/OverlayService;->runStart:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1596
    :cond_1
    iget-wide v1, p0, Lcom/rootclicker/app/OverlayService;->lastRunMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u6267\u884c \u00b7 \u4e0a\u6b21\u8017\u65f6 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iget-wide v3, p0, Lcom/rootclicker/app/OverlayService;->lastRunMs:J

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u672a\u6267\u884c"

    .line 1599
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyCellStyles()V
    .locals 13

    .line 1495
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->cellNormalBg:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xd2

    const/16 v2, 0xba

    const/16 v3, 0x5b

    const/16 v4, 0xf4

    if-nez v0, :cond_1

    const/16 v0, 0xef

    const/16 v5, 0xf0

    .line 1499
    invoke-static {v0, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {p0, v0, v5}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->cellNormalBg:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0x4b

    const/16 v6, 0xa5

    .line 1500
    invoke-static {v0, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->cellSelectedBg:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0xe5

    const/16 v6, 0xeb

    const/16 v7, 0xe4

    .line 1501
    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->cellLockedBg:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0xbf

    .line 1502
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->cellLockedSelectedBg:Landroid/graphics/drawable/GradientDrawable;

    .line 1504
    :cond_1
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    const/4 v6, 0x0

    move v7, v6

    .line 1505
    :goto_0
    iget-object v8, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    add-int v8, v0, v7

    .line 1507
    iget-object v9, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1508
    iget-boolean v10, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    if-nez v10, :cond_2

    iget-boolean v11, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    if-nez v11, :cond_2

    iget v11, p0, Lcom/rootclicker/app/OverlayService;->current:I

    if-gt v8, v11, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_1
    if-eqz v10, :cond_3

    .line 1509
    iget v10, p0, Lcom/rootclicker/app/OverlayService;->current:I

    if-ne v8, v10, :cond_4

    goto :goto_2

    :cond_3
    iget v10, p0, Lcom/rootclicker/app/OverlayService;->target:I

    if-ne v8, v10, :cond_4

    :goto_2
    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    if-eqz v8, :cond_6

    if-eqz v11, :cond_5

    .line 1511
    iget-object v10, p0, Lcom/rootclicker/app/OverlayService;->cellLockedSelectedBg:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_4

    :cond_5
    iget-object v10, p0, Lcom/rootclicker/app/OverlayService;->cellSelectedBg:Landroid/graphics/drawable/GradientDrawable;

    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_6
    if-eqz v11, :cond_7

    .line 1513
    iget-object v10, p0, Lcom/rootclicker/app/OverlayService;->cellLockedBg:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_5

    :cond_7
    iget-object v10, p0, Lcom/rootclicker/app/OverlayService;->cellNormalBg:Landroid/graphics/drawable/GradientDrawable;

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1515
    :goto_6
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1516
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v8, :cond_a

    if-eqz v11, :cond_8

    const/16 v8, 0xf5

    const/16 v12, 0xf9

    .line 1518
    invoke-static {v4, v8, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    goto :goto_7

    :cond_8
    const/4 v8, -0x1

    :goto_7
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v11, :cond_9

    const/16 v8, 0xed

    const/16 v10, 0xf3

    const/16 v11, 0xec

    .line 1519
    invoke-static {v11, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    goto :goto_8

    :cond_9
    const/16 v8, 0xff

    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_a
    if-eqz v11, :cond_b

    const/16 v8, 0xae

    const/16 v11, 0xb0

    .line 1521
    invoke-static {v8, v11, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0xc0

    const/16 v10, 0xc9

    const/16 v11, 0xbe

    .line 1522
    invoke-static {v11, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_b
    const/16 v8, 0x28

    const/16 v11, 0x30

    const/16 v12, 0x27

    .line 1524
    invoke-static {v12, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x5c

    const/16 v10, 0x66

    .line 1525
    invoke-static {v3, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public applyRemoteReset()V
    .locals 2

    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    const/16 v1, 0xa

    .line 610
    iput v1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 611
    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 612
    invoke-static {p0, v1}, Lcom/rootclicker/app/Prefs;->setTarget(Landroid/content/Context;I)V

    .line 613
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 614
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 615
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->refreshCountGrid()V

    .line 616
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    .line 617
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V

    .line 618
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 619
    invoke-static {}, Lcom/rootclicker/app/MainActivity;->requestExternalReset()V

    return-void
.end method

.method public applyRemoteTarget(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x50

    .line 596
    invoke-virtual {p0, p1, v0, v1}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 597
    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setTarget(Landroid/content/Context;I)V

    .line 598
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 599
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->selectCountMode(Z)V

    .line 600
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->scrollTargetRowToTop()V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    .line 604
    :goto_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    return-void
.end method

.method public clamp(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i2",
            "i3"
        }
    .end annotation

    .line 2307
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public closeFloatingWindow()V
    .locals 3

    .line 452
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    .line 454
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    .line 455
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 456
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 457
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 458
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 460
    :cond_0
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    invoke-static {p0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 461
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-virtual {v1}, Lcom/rootclicker/app/KeyInterruptMonitor;->stop()V

    .line 462
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeConfirm()V

    .line 463
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeEditor()V

    .line 464
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    .line 465
    invoke-direct {p0, v0}, Lcom/rootclicker/app/OverlayService;->setPanelFocusable(Z)V

    .line 466
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeAllMarkers()V

    .line 467
    invoke-direct {p0, v0}, Lcom/rootclicker/app/OverlayService;->setControlBarVisible(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->stopSelf()V

    return-void
.end method

.method public displaySize()[I
    .locals 2

    .line 2278
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2279
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2280
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
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

    .line 362
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public exitEdit(Lcom/rootclicker/app/ClickPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickPoint"
        }
    .end annotation

    .line 1631
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeEditor()V

    .line 1632
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/rootclicker/app/Prefs;->getMaxPoints()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, "\u672a\u547d\u540d"

    .line 1633
    iput-object v0, p1, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->persistPoints()V

    .line 1637
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u65b0\u589e\u5e76\u5e94\u7528\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6700\u591a\u4fdd\u5b58"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rootclicker/app/Prefs;->getMaxPoints()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u5750\u6807"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 1642
    :goto_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->refreshCoordinateViews()V

    .line 1643
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->reopenCountAfterEdit:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1644
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->reopenCountAfterEdit:Z

    .line 1645
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->buildCountPanel()V

    :cond_1
    return-void
.end method

.method m25lambda$buildCoordinateBlock$0$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 911
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->addPointClicked()V

    return-void
.end method

.method m26lambda$buildCountPanel$0$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1294
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    return-void
.end method

.method m27lambda$buildCountPanel$1$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1299
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->selectCountMode(Z)V

    return-void
.end method

.method m28lambda$buildCountPanel$2$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1304
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->selectCountMode(Z)V

    return-void
.end method

.method m29x253fcb89(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bool"
        }
    .end annotation

    .line 809
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/rootclicker/app/Prefs;->setShowDuringRun(Landroid/content/Context;Z)V

    .line 810
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_2

    .line 811
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->buildCountPanel()V

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 814
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    :cond_2
    :goto_0
    return-void
.end method

.method m30x997f03e8(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bool"
        }
    .end annotation

    .line 821
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/rootclicker/app/Prefs;->setShowAfterRun(Landroid/content/Context;Z)V

    return-void
.end method

.method m31lambda$clockRelease$0$comrootclickerappOverlayService(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 2153
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$50;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/OverlayService$50;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m32lambda$clockRelease$1$comrootclickerappOverlayService()V
    .locals 1

    const/4 v0, 0x0

    .line 2191
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 2192
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 2193
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    return-void
.end method

.method m33lambda$clockTap$0$comrootclickerappOverlayService(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "i",
            "i2"
        }
    .end annotation

    .line 2075
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$46;

    invoke-direct {v1, p0, p1, p2}, Lcom/rootclicker/app/OverlayService$46;-><init>(Lcom/rootclicker/app/OverlayService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m34lambda$confirmDeletePoint$0$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1102
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeConfirm()V

    return-void
.end method

.method m35lambda$confirmDeletePoint$1$comrootclickerappOverlayService(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "view"
        }
    .end annotation

    .line 1107
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeConfirm()V

    .line 1108
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->deletePoint(I)V

    return-void
.end method

.method m36x56665ea3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 2117
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-ne p1, v0, :cond_1

    .line 2118
    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "\u65e0\u969c\u788d\u670d\u52a1\u5df2\u65ad\u5f00\uff0c\u5df2\u505c\u6b62"

    .line 2119
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->stopRun(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method m37xcaa59702(ILcom/rootclicker/app/ClickPoint;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "clickPoint"
        }
    .end annotation

    .line 2127
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rootclicker/app/ClickAccessibilityService;->get()Lcom/rootclicker/app/ClickAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2128
    iget v0, p2, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v1, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p2, p2, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget v1, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    iget v1, p0, Lcom/rootclicker/app/OverlayService;->runHold:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/rootclicker/app/ClickAccessibilityService;->tap(FFJ)Z

    :cond_0
    return-void
.end method

.method m38lambda$new$0$comrootclickerappOverlayService(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/rootclicker/app/OverlayService$3;

    invoke-direct {v1, p0, p1}, Lcom/rootclicker/app/OverlayService$3;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m39lambda$new$1$comrootclickerappOverlayService(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 2200
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x74

    if-ne p1, v0, :cond_1

    const-string p1, "\u7535\u6e90\u952e"

    goto :goto_0

    :cond_1
    const/16 v0, 0x73

    if-ne p1, v0, :cond_2

    const-string p1, "\u97f3\u91cf\u52a0"

    goto :goto_0

    :cond_2
    const-string p1, "\u97f3\u91cf\u51cf"

    .line 2208
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u901a\u8fc7"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2d\u65ad\u70b9\u51fb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->stopRun(Ljava/lang/String;)V

    return-void
.end method

.method m40lambda$numberInput$0$comrootclickerappOverlayService(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "z"
        }
    .end annotation

    .line 771
    invoke-direct {p0, p2}, Lcom/rootclicker/app/OverlayService;->setPanelFocusable(Z)V

    return-void
.end method

.method m41lambda$onDestroy$0$comrootclickerappOverlayService()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-virtual {v0}, Lcom/rootclicker/app/KeyInterruptMonitor;->stop()V

    .line 352
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    invoke-virtual {v0}, Lcom/rootclicker/app/RootClient;->stop()V

    return-void
.end method

.method m42lambda$pointCard$0$comrootclickerappOverlayService(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "z"
        }
    .end annotation

    .line 1012
    invoke-direct {p0, p2}, Lcom/rootclicker/app/OverlayService;->setPanelFocusable(Z)V

    return-void
.end method

.method m43lambda$pointCard$1$comrootclickerappOverlayService(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "view"
        }
    .end annotation

    .line 1017
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->confirmDeletePoint(I)V

    return-void
.end method

.method m44lambda$pointCard$2$comrootclickerappOverlayService(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "view"
        }
    .end annotation

    .line 1022
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->togglePoint(I)V

    return-void
.end method

.method m45lambda$reconfigureRunning$0$comrootclickerappOverlayService(Ljava/util/List;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "sub",
            "iArr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rootclicker/app/ClickPoint;",
            ">;I[I)V"
        }
    .end annotation

    .line 2255
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    invoke-virtual {v0}, Lcom/rootclicker/app/RootClient;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    add-int/lit8 v2, p2, -0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v0, 0x0

    aget v5, p3, v0

    aget v6, p3, v2

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/rootclicker/app/RootClient;->configure(IILjava/util/List;II)V

    :cond_0
    return-void
.end method

.method m46lambda$refreshCountGrid$0$comrootclickerappOverlayService(ILandroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "view"
        }
    .end annotation

    .line 1416
    iget-boolean p2, p0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    if-nez p2, :cond_0

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p2, 0x1

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    if-nez p2, :cond_1

    .line 1422
    iget-wide v3, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapAt:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x17c

    cmp-long p2, v3, v5

    if-gez p2, :cond_1

    iget p2, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapValue:I

    if-ne p2, p1, :cond_1

    iget-boolean p2, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapWasTarget:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1423
    :goto_0
    iput-wide v1, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapAt:J

    .line 1424
    iput p1, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapValue:I

    .line 1425
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->lastCellTapWasTarget:Z

    .line 1426
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->onCountSelected(I)V

    if-eqz p2, :cond_2

    .line 1428
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->startRun()V

    :cond_2
    return-void
.end method

.method m47lambda$refreshRelationPanel$0$comrootclickerappOverlayService(Lcom/rootclicker/app/LanLink$Peer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "peer",
            "bool"
        }
    .end annotation

    .line 567
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 568
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz p2, :cond_1

    .line 569
    invoke-virtual {p2, p1}, Lcom/rootclicker/app/LanLink;->connect(Lcom/rootclicker/app/LanLink$Peer;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz p2, :cond_1

    .line 572
    iget-object p1, p1, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/rootclicker/app/LanLink;->disconnect(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method m48lambda$scrollTargetRowToTop$0$comrootclickerappOverlayService(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1550
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr v0, p1

    .line 1554
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_2

    .line 1555
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    if-eq p1, v1, :cond_2

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1559
    :cond_2
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method m49lambda$smallSwitch$0$comrootclickerappOverlayService([Z[Landroid/view/View;IIILandroid/widget/FrameLayout;ILjava/util/function/Consumer;Landroid/view/View;)V
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

    .line 864
    aget-boolean v0, p1, p9

    xor-int/lit8 v0, v0, 0x1

    aput-boolean v0, p1, p9

    .line 865
    aget-object v0, p2, p9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 866
    aget-boolean v1, p1, p9

    if-eqz v1, :cond_0

    sub-int/2addr p3, p4

    sub-int p5, p3, p5

    .line 869
    :cond_0
    iput p5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 870
    aget-object p2, p2, p9

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
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

    invoke-virtual {p0, p2, p3}, Lcom/rootclicker/app/OverlayService;->roundRect(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 872
    aget-boolean p1, p1, p9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p8, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public m50lambda$startClock$0$comrootclickerappOverlayService(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "i",
            "i2"
        }
    .end annotation

    .line 2061
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2064
    :cond_0
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    if-eqz v0, :cond_1

    .line 2065
    invoke-direct {p0, p1, p2}, Lcom/rootclicker/app/OverlayService;->dispatchAccessibilityTap(II)Z

    return-void

    .line 2069
    :cond_1
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    const-string p2, "START"

    invoke-virtual {p1, p2}, Lcom/rootclicker/app/RootClient;->send(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m51lambda$startClock$1$comrootclickerappOverlayService(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "i",
            "i2"
        }
    .end annotation

    .line 2135
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2138
    :cond_0
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    if-nez v0, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    const-string v1, "STOP"

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/RootClient;->send(Ljava/lang/String;)V

    .line 2141
    :cond_1
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runNeeded:I

    if-lt p2, v0, :cond_2

    .line 2142
    iget-object p2, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/rootclicker/app/OverlayService$49;

    invoke-direct {v0, p0, p1}, Lcom/rootclicker/app/OverlayService$49;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method m52lambda$startRun$0$comrootclickerappOverlayService(Z[IILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "z",
            "iArr",
            "i",
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[II",
            "Ljava/util/List<",
            "Lcom/rootclicker/app/ClickPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1764
    aget v1, p2, p1

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/rootclicker/app/OverlayService;->ensureHelper(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-ne p3, v2, :cond_0

    .line 1766
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    const-string v3, "STOP"

    invoke-virtual {v2, v3}, Lcom/rootclicker/app/RootClient;->send(Ljava/lang/String;)V

    .line 1767
    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    iget v5, p0, Lcom/rootclicker/app/OverlayService;->runSubInterval:I

    iget v6, p0, Lcom/rootclicker/app/OverlayService;->runHold:I

    aget v8, p2, p1

    aget v9, p2, v0

    move-object v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/rootclicker/app/RootClient;->configure(IILjava/util/List;II)V

    .line 1768
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-virtual {p1}, Lcom/rootclicker/app/KeyInterruptMonitor;->start()V

    :cond_0
    move v0, v1

    .line 1773
    :cond_1
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->ui:Landroid/os/Handler;

    new-instance p2, Lcom/rootclicker/app/OverlayService$31;

    invoke-direct {p2, p0, p3, v0}, Lcom/rootclicker/app/OverlayService$31;-><init>(Lcom/rootclicker/app/OverlayService;IZ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m53lambda$startRun$1$comrootclickerappOverlayService(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "z"
        }
    .end annotation

    .line 1783
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1786
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 1788
    iput-boolean p2, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    .line 1789
    iput-boolean p2, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 1790
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->pendingTrim:Z

    .line 1791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rootclicker/app/OverlayService;->runStartedAt:J

    .line 1792
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateControl()V

    .line 1793
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateLiveCount()V

    .line 1794
    invoke-direct {p0, p1}, Lcom/rootclicker/app/OverlayService;->startClock(I)V

    .line 1795
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getShowDuringRun(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1796
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    :cond_1
    return-void

    .line 1801
    :cond_2
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-virtual {p1}, Lcom/rootclicker/app/KeyInterruptMonitor;->stop()V

    .line 1802
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->dimFrozen:Z

    .line 1803
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateControl()V

    const-string p1, "\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u5148\u5f00\u542f Root \u6216\u65e0\u969c\u788d\u670d\u52a1"

    .line 1804
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    return-void
.end method

.method m54lambda$stepButton$0$comrootclickerappOverlayService(Landroid/widget/EditText;ILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editText",
            "i",
            "view"
        }
    .end annotation

    .line 743
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    const/16 v0, 0xa

    mul-int/2addr p2, v0

    add-int/2addr p3, p2

    const p2, 0xea60

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method m55lambda$stopRun$0$comrootclickerappOverlayService()V
    .locals 2

    .line 1845
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->keys:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-virtual {v0}, Lcom/rootclicker/app/KeyInterruptMonitor;->stop()V

    .line 1847
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->root:Lcom/rootclicker/app/RootClient;

    const-string v1, "STOP"

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/RootClient;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method m56lambda$toast$0$comrootclickerappOverlayService(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    sput-object p0, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    const/4 v0, 0x1

    .line 217
    sput-boolean v0, Lcom/rootclicker/app/OverlayService;->requestedRunning:Z

    const-string v0, "window"

    .line 218
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    const-string v0, "vibrator"

    .line 219
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->vibrator:Landroid/os/Vibrator;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RootClicker-clock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->clockThread:Landroid/os/HandlerThread;

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    .line 223
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getInterval(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    .line 224
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getHold(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    .line 225
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getCrossInterval(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    .line 226
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getSequentialGap(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->sequentialGapMs:I

    .line 227
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->loadPoints()V

    .line 228
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getCurrent(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->current:I

    .line 229
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getTarget(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 230
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->startForegroundNotification()V

    .line 231
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7f3a\u5c11\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 232
    invoke-virtual {p0, v0}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->stopSelf()V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->showControlBar()V

    .line 236
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateMarkers()V

    .line 237
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->startLanLink()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 311
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    .line 313
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    .line 314
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->clockThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 319
    iput-object v3, p0, Lcom/rootclicker/app/OverlayService;->clockThread:Landroid/os/HandlerThread;

    .line 320
    iput-object v3, p0, Lcom/rootclicker/app/OverlayService;->clock:Landroid/os/Handler;

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {v2}, Lcom/rootclicker/app/LanLink;->stop()V

    .line 324
    iput-object v3, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeEditor()V

    .line 327
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    .line 328
    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    if-eqz v2, :cond_3

    .line 330
    :try_start_0
    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v4, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 331
    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->controlBarShown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :catch_0
    iput-object v3, p0, Lcom/rootclicker/app/OverlayService;->controlBar:Lcom/rootclicker/app/OverlayService$ControlBarView;

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->removeAllMarkers()V

    .line 337
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/rootclicker/app/OverlayService$7;

    invoke-direct {v4, p0}, Lcom/rootclicker/app/OverlayService$7;-><init>(Lcom/rootclicker/app/OverlayService;)V

    const-string v5, "RootClicker-shutdown"

    invoke-direct {v2, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 343
    sput-object v3, Lcom/rootclicker/app/OverlayService;->instance:Lcom/rootclicker/app/OverlayService;

    .line 344
    sput-boolean v0, Lcom/rootclicker/app/OverlayService;->requestedRunning:Z

    .line 345
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->stopForeground(Z)V

    .line 346
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "i",
            "i2"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p2, "com.rootclicker.app.action.STOP"

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 302
    sput-boolean p1, Lcom/rootclicker/app/OverlayService;->requestedRunning:Z

    .line 303
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->stopSelf()V

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public persistPoints()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->pointItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->activeIndices:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/rootclicker/app/Prefs;->savePoints(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method public positionCountPanel()V
    .locals 6

    .line 1333
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->countPanelPinned:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1338
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->controlParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/rootclicker/app/OverlayService;->clamp(III)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1340
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService;->countPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editText"
        }
    .end annotation

    const/4 v0, 0x0

    .line 777
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 779
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public reconfigureRunning()V
    .locals 5

    .line 2235
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->activePoints()Ljava/util/ArrayList;

    move-result-object v0

    .line 2236
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v1

    .line 2240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rootclicker/app/ClickPoint;

    .line 2242
    invoke-virtual {v3}, Lcom/rootclicker/app/ClickPoint;->copy()Lcom/rootclicker/app/ClickPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2244
    :cond_1
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getSequential(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    :goto_1
    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2245
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/rootclicker/app/OverlayService$52;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/rootclicker/app/OverlayService$52;-><init>(Lcom/rootclicker/app/OverlayService;Ljava/util/ArrayList;I[I)V

    const-string v0, "RootClicker-config"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public refreshCountGrid()V
    .locals 17

    move-object/from16 v0, p0

    .line 1366
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    if-eqz v1, :cond_2

    iget v2, v0, Lcom/rootclicker/app/OverlayService;->countPanelWidth:I

    if-gtz v2, :cond_0

    goto/16 :goto_1

    .line 1369
    :cond_0
    invoke-virtual {v1}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 1370
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1372
    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v2

    const/high16 v3, 0x42080000    # 34.0f

    .line 1373
    invoke-virtual {v0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    iget v4, v0, Lcom/rootclicker/app/OverlayService;->countPanelWidth:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v0, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1374
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 1375
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1376
    iget-boolean v7, v0, Lcom/rootclicker/app/OverlayService;->editingCurrent:Z

    xor-int/2addr v7, v6

    :goto_0
    const/16 v8, 0x50

    if-gt v7, v8, :cond_1

    .line 1379
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1380
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    .line 1381
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1382
    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v12

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    invoke-virtual {v8, v10, v12, v13, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/rootclicker/app/WeightUtil;->format(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41880000    # 17.0f

    .line 1384
    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1385
    invoke-virtual {v0, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-virtual {v0, v14}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    sub-int v14, v3, v14

    mul-int/2addr v11, v14

    int-to-float v11, v11

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    div-float/2addr v11, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/16 v12, 0x28

    const/16 v13, 0x30

    const/16 v14, 0x27

    .line 1386
    invoke-static {v14, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v0, v10, v13, v12}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v10

    const/4 v12, 0x0

    .line 1387
    invoke-virtual {v10, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1388
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1389
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1390
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1391
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\u6b21"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x5c

    const/16 v15, 0x66

    const/16 v1, 0x5b

    invoke-static {v1, v11, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/high16 v11, 0x41300000    # 11.0f

    invoke-direct {v0, v10, v11, v1}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    .line 1393
    invoke-virtual {v0, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v11}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v3

    const v16, 0x408ccccd    # 4.4f

    div-float v15, v15, v16

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v1, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1394
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1395
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    new-instance v1, Lcom/rootclicker/app/OverlayService$27;

    invoke-direct {v1, v0, v7}, Lcom/rootclicker/app/OverlayService$27;-><init>(Lcom/rootclicker/app/OverlayService;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    new-instance v1, Lcom/rootclicker/app/OverlayService$AnonymousClass4;

    invoke-direct {v1, v0}, Lcom/rootclicker/app/OverlayService$AnonymousClass4;-><init>(Lcom/rootclicker/app/OverlayService;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1403
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 1404
    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/high16 v9, 0x42800000    # 64.0f

    .line 1405
    invoke-virtual {v0, v9}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v9

    iput v9, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1406
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1407
    iget-object v9, v0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    invoke-virtual {v9, v8, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v1, v0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 1411
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/rootclicker/app/OverlayService;->applyCellStyles()V

    :cond_2
    :goto_1
    return-void
.end method

.method public refreshRelationPanel()V
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    return-void

    .line 541
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 542
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->getPeers()Ljava/util/List;

    move-result-object v0

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/16 v0, 0x7a

    const/16 v1, 0x85

    const/16 v3, 0x78

    .line 544
    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const-string v1, "\u6682\u672a\u53d1\u73b0\u540c WiFi \u4e0b\u7684\u8bbe\u5907"

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {p0, v1, v3, v0}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 545
    invoke-virtual {p0, v1}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v3}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 549
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rootclicker/app/LanLink$Peer;

    .line 550
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 552
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 553
    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v4

    invoke-virtual {v3, v2, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 554
    iget-object v4, v1, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    const/16 v5, 0x32

    const/16 v6, 0x3b

    const/16 v7, 0x31

    invoke-static {v7, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/high16 v6, 0x41500000    # 13.0f

    invoke-direct {p0, v4, v6, v5}, Lcom/rootclicker/app/OverlayService;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    invoke-direct {v5, v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-boolean v4, v1, Lcom/rootclicker/app/LanLink$Peer;->connected:Z

    new-instance v5, Lcom/rootclicker/app/OverlayService$8;

    invoke-direct {v5, p0, v1}, Lcom/rootclicker/app/OverlayService$8;-><init>(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/LanLink$Peer;)V

    invoke-direct {p0, v4, v5}, Lcom/rootclicker/app/OverlayService;->smallSwitch(ZLjava/util/function/Consumer;)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41d00000    # 26.0f

    .line 560
    invoke-virtual {p0, v5}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {p0, v6}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationList:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public roundRect(IF)Landroid/graphics/drawable/GradientDrawable;
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

    .line 2299
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2300
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2301
    invoke-virtual {p0, p2}, Lcom/rootclicker/app/OverlayService;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public scrollTargetRowToTop()V
    .locals 5

    .line 1532
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countGrid:Landroid/widget/GridLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1535
    :cond_0
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->target:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 1536
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    .line 1539
    :cond_2
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->gridCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1540
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->countScroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/rootclicker/app/OverlayService$28;

    invoke-direct {v2, p0, v0}, Lcom/rootclicker/app/OverlayService$28;-><init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/LinearLayout;)V

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public startRun(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1708
    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1711
    :cond_1
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->activePoints()Ljava/util/ArrayList;

    move-result-object v0

    .line 1712
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "\u8bf7\u5148\u5728\u7b2c\u4e09\u677f\u5757\u5e94\u7528\u4e00\u4e2a\u5750\u6807\u70b9"

    .line 1713
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    return-void

    .line 1716
    :cond_2
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getCurrent(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    .line 1717
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getTarget(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    .line 1718
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->current:I

    if-gt v1, v2, :cond_4

    if-nez p1, :cond_3

    const-string p1, "\u76ee\u6807\u6b21\u6570\u5fc5\u987b\u5927\u4e8e\u5f53\u524d\u6b21\u6570"

    .line 1720
    invoke-virtual {p0, p1}, Lcom/rootclicker/app/OverlayService;->toast(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 1725
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/rootclicker/app/LanLink;->isMaster()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1726
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService;->lanLink:Lcom/rootclicker/app/LanLink;

    invoke-virtual {p1}, Lcom/rootclicker/app/LanLink;->sendRun()V

    .line 1728
    :cond_5
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->clearPanelFocus()V

    .line 1729
    iget p1, p0, Lcom/rootclicker/app/OverlayService;->current:I

    iput p1, p0, Lcom/rootclicker/app/OverlayService;->runStart:I

    .line 1730
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->target:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/rootclicker/app/OverlayService;->runNeeded:I

    const/4 p1, 0x1

    .line 1731
    iput-boolean p1, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    .line 1732
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->updateControl()V

    .line 1733
    iget v1, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    add-int/lit8 v6, v1, 0x1

    .line 1734
    iput v6, p0, Lcom/rootclicker/app/OverlayService;->runSession:I

    .line 1735
    invoke-virtual {p0}, Lcom/rootclicker/app/OverlayService;->displaySize()[I

    move-result-object v5

    const/4 v1, 0x0

    .line 1736
    aget v2, v5, v1

    iput v2, p0, Lcom/rootclicker/app/OverlayService;->runWidth:I

    .line 1737
    aget v2, v5, p1

    iput v2, p0, Lcom/rootclicker/app/OverlayService;->runHeight:I

    .line 1738
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rootclicker/app/ClickPoint;

    .line 1740
    invoke-virtual {v2}, Lcom/rootclicker/app/ClickPoint;->copy()Lcom/rootclicker/app/ClickPoint;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1742
    :cond_6
    iput-object v7, p0, Lcom/rootclicker/app/OverlayService;->runPoints:Ljava/util/ArrayList;

    .line 1743
    invoke-static {p0}, Lcom/rootclicker/app/Prefs;->getSequential(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->runSequential:Z

    if-eqz v0, :cond_7

    .line 1744
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->intervalMs:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/rootclicker/app/OverlayService;->crossIntervalMs:I

    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runSubInterval:I

    .line 1745
    iget v2, p0, Lcom/rootclicker/app/OverlayService;->holdMs:I

    add-int/lit8 v0, v0, -0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/rootclicker/app/OverlayService;->runHold:I

    .line 1746
    invoke-static {}, Lcom/rootclicker/app/ClickAccessibilityService;->get()Lcom/rootclicker/app/ClickAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_8

    move v4, p1

    goto :goto_2

    :cond_8
    move v4, v1

    .line 1751
    :goto_2
    iput-boolean v4, p0, Lcom/rootclicker/app/OverlayService;->a11yMode:Z

    .line 1752
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/rootclicker/app/OverlayService$30;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/rootclicker/app/OverlayService$30;-><init>(Lcom/rootclicker/app/OverlayService;Z[IILjava/util/ArrayList;)V

    const-string v1, "RootClicker-start"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
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

.method public toggleCountPanel()V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->countPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1142
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->hideCountPanel()V

    goto :goto_0

    .line 1144
    :cond_0
    invoke-direct {p0}, Lcom/rootclicker/app/OverlayService;->buildCountPanel()V

    :goto_0
    return-void
.end method

.method public updateRelationStatus()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->relationStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->relationTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService;->relationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public vibrate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 2312
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->running:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rootclicker/app/OverlayService;->starting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2316
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService;->vibrator:Landroid/os/Vibrator;

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
