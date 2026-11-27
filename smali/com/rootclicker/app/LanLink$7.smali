.class Lcom/rootclicker/app/LanLink$7;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->applyMasterState(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/LanLink;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/LanLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$7;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$7;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$400(Lcom/rootclicker/app/LanLink;)Lcom/rootclicker/app/LanLink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0}, Lcom/rootclicker/app/LanLink$Listener;->onRemoteRun()V

    :cond_0
    return-void
.end method
