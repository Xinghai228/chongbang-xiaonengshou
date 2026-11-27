.class Lcom/rootclicker/app/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/MainActivity;->m2lambda$autoDetectPermissions$0$comrootclickerappMainActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/MainActivity;

.field final synthetic val$isRooted:Z


# direct methods
.method constructor <init>(Lcom/rootclicker/app/MainActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isRooted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-boolean p2, p0, Lcom/rootclicker/app/MainActivity$2;->val$isRooted:Z

    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$2;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$2;->this$0:Lcom/rootclicker/app/MainActivity;

    iget-boolean v1, p0, Lcom/rootclicker/app/MainActivity$2;->val$isRooted:Z

    invoke-virtual {v0, v1}, Lcom/rootclicker/app/MainActivity;->m3lambda$autoDetectPermissions$1$comrootclickerappMainActivity(Z)V

    return-void
.end method
