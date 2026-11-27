.class Lcom/rootclicker/app/OverlayService$42;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->startSequentialClock(IJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$rounds:I

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$session",
            "val$rounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1983
    iput p2, p0, Lcom/rootclicker/app/OverlayService$42;->val$session:I

    iput p3, p0, Lcom/rootclicker/app/OverlayService$42;->val$rounds:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$42;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1986
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$42;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$42;->val$session:I

    iget v2, p0, Lcom/rootclicker/app/OverlayService$42;->val$rounds:I

    invoke-virtual {v0, v1, v2}, Lcom/rootclicker/app/OverlayService;->m33lambda$clockTap$0$comrootclickerappOverlayService(II)V

    return-void
.end method
