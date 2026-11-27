.class Lcom/rootclicker/app/OverlayService$33;
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

.field final synthetic val$clickPoint:Lcom/rootclicker/app/ClickPoint;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;ILcom/rootclicker/app/ClickPoint;)V
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
            "val$clickPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1877
    iput p2, p0, Lcom/rootclicker/app/OverlayService$33;->val$i:I

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$33;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$33;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1880
    iget v0, p0, Lcom/rootclicker/app/OverlayService$33;->val$i:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$33;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1300(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$33;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1400(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$33;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$33;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$1500(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/ClickPoint;)V

    :cond_1
    :goto_0
    return-void
.end method
