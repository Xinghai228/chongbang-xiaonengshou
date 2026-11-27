.class Lcom/rootclicker/app/KeyInterruptMonitor$1;
.super Ljava/lang/Object;
.source "KeyInterruptMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/KeyInterruptMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/KeyInterruptMonitor;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/KeyInterruptMonitor;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p2, p0, Lcom/rootclicker/app/KeyInterruptMonitor$1;->val$inputStream:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/rootclicker/app/KeyInterruptMonitor$1;->this$0:Lcom/rootclicker/app/KeyInterruptMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/rootclicker/app/KeyInterruptMonitor$1;->this$0:Lcom/rootclicker/app/KeyInterruptMonitor;

    iget-object v1, p0, Lcom/rootclicker/app/KeyInterruptMonitor$1;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/KeyInterruptMonitor;->m0lambda$start$0$comrootclickerappKeyInterruptMonitor(Ljava/io/InputStream;)V

    return-void
.end method
