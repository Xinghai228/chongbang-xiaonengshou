.class Lcom/rootclicker/app/OverlayService$51;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->interruptByKey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:I

.field final synthetic val$overlayService:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$overlayService",
            "val$key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2225
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$51;->val$overlayService:Lcom/rootclicker/app/OverlayService;

    iput p2, p0, Lcom/rootclicker/app/OverlayService$51;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2228
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$51;->val$overlayService:Lcom/rootclicker/app/OverlayService;

    iget v1, p0, Lcom/rootclicker/app/OverlayService$51;->val$key:I

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->m39lambda$new$1$comrootclickerappOverlayService(I)V

    return-void
.end method
