.class Lcom/rootclicker/app/OverlayService$17;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->pointCard(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 944
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$17;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "z2"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$17;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0, p1, p2}, Lcom/rootclicker/app/OverlayService;->m42lambda$pointCard$0$comrootclickerappOverlayService(Landroid/view/View;Z)V

    return-void
.end method
