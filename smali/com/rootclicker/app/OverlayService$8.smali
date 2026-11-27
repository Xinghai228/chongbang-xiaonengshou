.class Lcom/rootclicker/app/OverlayService$8;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->refreshRelationPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$peer:Lcom/rootclicker/app/LanLink$Peer;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/LanLink$Peer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$peer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 555
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$8;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$8;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$8;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$8;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/rootclicker/app/OverlayService;->m47lambda$refreshRelationPanel$0$comrootclickerappOverlayService(Lcom/rootclicker/app/LanLink$Peer;Ljava/lang/Boolean;)V

    return-void
.end method
