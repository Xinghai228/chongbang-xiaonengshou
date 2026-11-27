.class Lcom/rootclicker/app/OverlayService$36;
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

.field final synthetic val$pointIndex:I


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
            "val$i",
            "val$pointIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1907
    iput p2, p0, Lcom/rootclicker/app/OverlayService$36;->val$i:I

    iput p3, p0, Lcom/rootclicker/app/OverlayService$36;->val$pointIndex:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$36;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1910
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$36;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$36;->val$i:I

    iget v2, p0, Lcom/rootclicker/app/OverlayService$36;->val$pointIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/rootclicker/app/OverlayService;->m50lambda$startClock$0$comrootclickerappOverlayService(II)V

    return-void
.end method
