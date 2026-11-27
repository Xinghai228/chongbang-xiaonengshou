.class Lcom/rootclicker/app/LanLink$3;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->broadcastNow()V
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

    .line 263
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$3;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$3;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v0}, Lcom/rootclicker/app/LanLink;->access$200(Lcom/rootclicker/app/LanLink;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$3;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$3;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->broadcastPresence()V

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_1

    const-wide/16 v1, 0x28

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x3c

    .line 274
    :goto_1
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
