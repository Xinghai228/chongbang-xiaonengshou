.class Lcom/rootclicker/app/OverlayService$46;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->m33lambda$clockTap$0$comrootclickerappOverlayService(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$i:I

.field final synthetic val$i2:I


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
            "val$i2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2075
    iput p2, p0, Lcom/rootclicker/app/OverlayService$46;->val$i:I

    iput p3, p0, Lcom/rootclicker/app/OverlayService$46;->val$i2:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2078
    iget v0, p0, Lcom/rootclicker/app/OverlayService$46;->val$i:I

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v1}, Lcom/rootclicker/app/OverlayService;->access$1300(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1400(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$200(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v2}, Lcom/rootclicker/app/OverlayService;->access$1800(Lcom/rootclicker/app/OverlayService;)I

    move-result v2

    iget v3, p0, Lcom/rootclicker/app/OverlayService$46;->val$i2:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rootclicker/app/OverlayService;->access$902(Lcom/rootclicker/app/OverlayService;I)I

    .line 2082
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$900(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rootclicker/app/Prefs;->setCurrent(Landroid/content/Context;I)V

    .line 2083
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$46;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$1600(Lcom/rootclicker/app/OverlayService;)V

    :cond_1
    :goto_0
    return-void
.end method
