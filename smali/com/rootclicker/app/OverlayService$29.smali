.class Lcom/rootclicker/app/OverlayService$29;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Lcom/rootclicker/app/PointEditorView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->enterEdit()V
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

    .line 1612
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$29;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/rootclicker/app/ClickPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickPoint"
        }
    .end annotation

    .line 1615
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$29;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0, p1}, Lcom/rootclicker/app/OverlayService;->exitEdit(Lcom/rootclicker/app/ClickPoint;)V

    return-void
.end method
