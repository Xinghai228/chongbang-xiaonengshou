.class Lcom/rootclicker/app/OverlayService$50$2;
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

    .line 2177
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$50$2;->this$1:Lcom/rootclicker/app/OverlayService$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2180
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50$2;->this$1:Lcom/rootclicker/app/OverlayService$50;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/Prefs;->getEndVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$50$2;->this$1:Lcom/rootclicker/app/OverlayService$50;

    iget-object v0, v0, Lcom/rootclicker/app/OverlayService$50;->this$0:Lcom/rootclicker/app/OverlayService;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->vibrate(I)V

    :cond_0
    return-void
.end method
