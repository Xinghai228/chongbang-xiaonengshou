.class Lcom/rootclicker/app/OverlayService$10;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/OverlayService;->sectionHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Z)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/OverlayService;

.field final synthetic val$linearLayout2:Landroid/widget/LinearLayout;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/OverlayService;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$linearLayout2",
            "val$text",
            "val$str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 690
    iput-object p2, p0, Lcom/rootclicker/app/OverlayService$10;->val$linearLayout2:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/rootclicker/app/OverlayService$10;->val$text:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/rootclicker/app/OverlayService$10;->val$str:Ljava/lang/String;

    iput-object p1, p0, Lcom/rootclicker/app/OverlayService$10;->this$0:Lcom/rootclicker/app/OverlayService;

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

    .line 693
    iget-object v0, p0, Lcom/rootclicker/app/OverlayService$10;->val$linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/rootclicker/app/OverlayService$10;->val$text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rootclicker/app/OverlayService$10;->val$str:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/rootclicker/app/OverlayService;->lambda$sectionHeader$0(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
