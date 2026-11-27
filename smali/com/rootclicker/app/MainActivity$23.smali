.class Lcom/rootclicker/app/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/MainActivity;->showControlDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$23;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$23;->this$0:Lcom/rootclicker/app/MainActivity;

    invoke-virtual {v0}, Lcom/rootclicker/app/MainActivity;->startOverlay()V

    return-void
.end method
