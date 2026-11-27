.class Lcom/rootclicker/app/OverlayService$PanelGesture$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/OverlayService$PanelGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rootclicker/app/OverlayService$PanelGesture;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService$PanelGesture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 2326
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$PanelGesture$1;->this$1:Lcom/rootclicker/app/OverlayService$PanelGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$PanelGesture$1;->this$1:Lcom/rootclicker/app/OverlayService$PanelGesture;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService$PanelGesture;->m59lambda$new$0$comrootclickerappOverlayService$PanelGesture()V

    return-void
.end method
