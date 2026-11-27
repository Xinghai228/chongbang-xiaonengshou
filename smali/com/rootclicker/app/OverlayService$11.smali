.class Lcom/rootclicker/app/OverlayService$11;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->stepButton(Ljava/lang/String;Landroid/widget/EditText;I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/EditText;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 732
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$11;->val$editText:Landroid/widget/EditText;

    iput p3, p0, Lcom/rootclicker/app/OverlayService$11;->val$i:I

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$11;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$11;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$11;->val$editText:Landroid/widget/EditText;

    iget v2, p0, Lcom/rootclicker/app/OverlayService$11;->val$i:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/rootclicker/app/OverlayService;->m54lambda$stepButton$0$comrootclickerappOverlayService(Landroid/widget/EditText;ILandroid/view/View;)V

    return-void
.end method
