.class Lcom/rootclicker/app/LanLink$12;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->notifyNotice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/LanLink;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/LanLink;Ljava/lang/String;)V
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

    .line 669
    iput-object p2, p0, Lcom/rootclicker/app/LanLink$12;->val$str:Ljava/lang/String;

    iput-object p1, p0, Lcom/rootclicker/app/LanLink$12;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$12;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$400(Lcom/rootclicker/app/LanLink;)Lcom/rootclicker/app/LanLink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$12;->val$str:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/rootclicker/app/LanLink$Listener;->onNotice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
