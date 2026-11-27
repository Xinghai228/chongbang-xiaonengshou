.class Lcom/rootclicker/app/OverlayService$32;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->stopRun(Ljava/lang/String;)V
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

    .line 1832
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$32;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$32;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v0}, Lcom/rootclicker/app/OverlayService;->m55lambda$stopRun$0$comrootclickerappOverlayService()V

    return-void
.end method
