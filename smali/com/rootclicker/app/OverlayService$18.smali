.class Lcom/rootclicker/app/OverlayService$18;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->pointCard(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$clickPoint:Lcom/rootclicker/app/ClickPoint;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Lcom/rootclicker/app/ClickPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$clickPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 950
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$18;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$18;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$18;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v0}, Lcom/rootclicker/app/OverlayService;->access$800(Lcom/rootclicker/app/OverlayService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 964
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 965
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$18;->val$clickPoint:Lcom/rootclicker/app/ClickPoint;

    iput-object p1, v0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    .line 967
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$18;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->persistPoints()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i5",
            "i6",
            "i7"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i5",
            "i6",
            "i7"
        }
    .end annotation

    return-void
.end method
