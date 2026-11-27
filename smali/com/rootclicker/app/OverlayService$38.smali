.class Lcom/rootclicker/app/OverlayService$38;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->startClock(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1922
    iput p2, p0, Lcom/rootclicker/app/OverlayService$38;->val$i:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$38;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1925
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$38;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$38;->val$i:I

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->m31lambda$clockRelease$0$comrootclickerappOverlayService(I)V

    return-void
.end method
