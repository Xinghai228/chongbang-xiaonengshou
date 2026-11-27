.class public final Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "MainActivity$$ExternalSyntheticLambda10.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/rootclicker/app/MainActivity;


# direct methods
.method public constructor <init>(Lcom/rootclicker/app/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainActivity"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/rootclicker/app/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/rootclicker/app/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/rootclicker/app/MainActivity;

    invoke-virtual {v0}, Lcom/rootclicker/app/MainActivity;->showTermsDialog()V

    return-void
.end method
