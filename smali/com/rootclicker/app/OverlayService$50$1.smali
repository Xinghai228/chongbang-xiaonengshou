.class Lcom/rootclicker/app/OverlayService$50$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService$50;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rootclicker/app/OverlayService$50;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService$50;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 2171
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$50$1;->this$1:Lcom/rootclicker/app/OverlayService$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50$1;->this$1:Lcom/rootclicker/app/OverlayService$50;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->m32lambda$clockRelease$1$comrootclickerappOverlayService()V

    return-void
.end method
