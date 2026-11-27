.class Lcom/rootclicker/app/OverlayService$24;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->buildCountPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1222
    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$24;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "z"
        }
    .end annotation

    .line 1225
    check-cast p1, Landroid/widget/Switch;

    if-eqz p2, :cond_0

    const-string v0, "\u70b9\u4f4d\u987a\u5e8f\u6267\u884c"

    goto :goto_0

    :cond_0
    const-string v0, "\u70b9\u4f4d\u4ea4\u53c9\u6267\u884c"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    iget-object p1, p0, Lcom/rootclicker/app/OverlayService$24;->this$0:Lcom/rootclicker/app/OverlayService;

    invoke-static {p1, p2}, Lcom/rootclicker/app/Prefs;->setSequential(Landroid/content/Context;Z)V

    return-void
.end method
