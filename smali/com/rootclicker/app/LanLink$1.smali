.class Lcom/rootclicker/app/LanLink$1;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->getPeers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/rootclicker/app/LanLink$Peer;",
        ">;"
    }
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

    .line 121
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$1;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/rootclicker/app/LanLink$Peer;Lcom/rootclicker/app/LanLink$Peer;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "peer2",
            "peer3"
        }
    .end annotation

    .line 124
    iget-object p1, p1, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "peer2",
            "peer3"
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/rootclicker/app/LanLink$Peer;

    check-cast p2, Lcom/rootclicker/app/LanLink$Peer;

    invoke-virtual {p0, p1, p2}, Lcom/rootclicker/app/LanLink$1;->compare(Lcom/rootclicker/app/LanLink$Peer;Lcom/rootclicker/app/LanLink$Peer;)I

    move-result p1

    return p1
.end method
