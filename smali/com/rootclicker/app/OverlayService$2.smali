.class Lcom/rootclicker/app/OverlayService$2;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->successToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$2;->val$str:Ljava/lang/String;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$2;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$2;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$2;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/OverlayService;->m56lambda$toast$0$comrootclickerappOverlayService(Ljava/lang/String;)V

    return-void
.end method
