.class Lcom/rootclicker/app/OverlayService$9;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->buildTimingBody()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$crossInput:Landroid/widget/EditText;

.field final synthetic val$gapInput:Landroid/widget/EditText;

.field final synthetic val$numberInput:Landroid/widget/EditText;

.field final synthetic val$numberInput2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$numberInput",
            "val$numberInput2",
            "val$crossInput",
            "val$gapInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$9;->val$numberInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$9;->val$numberInput2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/rootclicker/app/OverlayService$9;->val$crossInput:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/rootclicker/app/OverlayService$9;->val$gapInput:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    .line 646
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$9;->val$numberInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/rootclicker/app/OverlayService;->positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v2}, Lcom/rootclicker/app/OverlayService;->access$400(Lcom/rootclicker/app/OverlayService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 648
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/rootclicker/app/OverlayService;->access$402(Lcom/rootclicker/app/OverlayService;I)I

    .line 649
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$400(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/Prefs;->setInterval(Landroid/content/Context;I)V

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 652
    :goto_0
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$9;->val$numberInput2:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/OverlayService;->positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 653
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$500(Lcom/rootclicker/app/OverlayService;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 654
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/OverlayService;->access$502(Lcom/rootclicker/app/OverlayService;I)I

    .line 655
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$500(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/Prefs;->setHold(Landroid/content/Context;I)V

    move p1, v0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$9;->val$crossInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/OverlayService;->positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 659
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$600(Lcom/rootclicker/app/OverlayService;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 660
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/OverlayService;->access$602(Lcom/rootclicker/app/OverlayService;I)I

    .line 661
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$600(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/Prefs;->setCrossInterval(Landroid/content/Context;I)V

    move p1, v0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$9;->val$gapInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/OverlayService;->positiveNumber(Landroid/widget/EditText;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 665
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {v3}, Lcom/rootclicker/app/OverlayService;->access$700(Lcom/rootclicker/app/OverlayService;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 666
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/OverlayService;->access$702(Lcom/rootclicker/app/OverlayService;I)I

    .line 667
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1}, Lcom/rootclicker/app/OverlayService;->access$700(Lcom/rootclicker/app/OverlayService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/rootclicker/app/Prefs;->setSequentialGap(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 671
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$9;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-virtual {p1}, Lcom/rootclicker/app/OverlayService;->reconfigureRunning()V

    :cond_4
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
            "i",
            "i2",
            "i3"
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
            "i",
            "i2",
            "i3"
        }
    .end annotation

    return-void
.end method
