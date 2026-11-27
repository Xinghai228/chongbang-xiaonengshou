.class Lcom/rootclicker/app/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/MainActivity;->showDeviceNameDialog(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
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
            "val$textView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 597
    iput-object p2, p0, Lcom/rootclicker/app/MainActivity$16;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rootclicker/app/MainActivity$16;->val$textView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$16;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialogInterface",
            "i"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$16;->this$0:Lcom/rootclicker/app/MainActivity;

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$16;->val$editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/rootclicker/app/MainActivity$16;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/rootclicker/app/MainActivity;->m22lambda$showDeviceNameDialog$0$comrootclickerappMainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
