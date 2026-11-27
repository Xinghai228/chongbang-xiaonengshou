.class Lcom/rootclicker/app/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/MainActivity;->buildPermissionPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/MainActivity;

.field final synthetic val$textView4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$textView4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 518
    iput-object p2, p0, Lcom/rootclicker/app/MainActivity$15;->val$textView4:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$15;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view2"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$15;->this$0:Lcom/rootclicker/app/MainActivity;

    iget-object v1, p0, Lcom/rootclicker/app/MainActivity$15;->val$textView4:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/rootclicker/app/MainActivity;->m14lambda$buildPermissionPanel$8$comrootclickerappMainActivity(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
