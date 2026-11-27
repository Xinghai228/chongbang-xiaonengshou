.class Lcom/rootclicker/app/OverlayService$48;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->dispatchAccessibilityTap(II)Z
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

    .line 2104
    iput p2, p0, Lcom/rootclicker/app/OverlayService$48;->val$i:I

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$48;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$48;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2107
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$48;->this$0:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$48;->val$i:I

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$48;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    invoke-virtual {v0, v1, v2}, Lcom/rootclicker/app/OverlayService;->m37xcaa59702(ILcom/rootclicker/app/ClickPoint;)V

    return-void
.end method
