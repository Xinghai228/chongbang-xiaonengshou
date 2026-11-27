.class public Lcom/rootclicker/app/ClickPoint;
.super Ljava/lang/Object;
.source "ClickPoint.java"


# instance fields
.field public name:Ljava/lang/String;

.field public nx:F

.field public ny:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "f2",
            "str"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/rootclicker/app/ClickPoint;->nx:F

    .line 11
    iput p2, p0, Lcom/rootclicker/app/ClickPoint;->ny:F

    .line 12
    iput-object p3, p0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/rootclicker/app/ClickPoint;
    .locals 4

    .line 16
    new-instance v0, Lcom/rootclicker/app/ClickPoint;

    iget v1, p0, Lcom/rootclicker/app/ClickPoint;->nx:F

    iget v2, p0, Lcom/rootclicker/app/ClickPoint;->ny:F

    iget-object v3, p0, Lcom/rootclicker/app/ClickPoint;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/rootclicker/app/ClickPoint;-><init>(FFLjava/lang/String;)V

    return-object v0
.end method
