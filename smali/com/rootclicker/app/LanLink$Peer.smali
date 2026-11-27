.class public final Lcom/rootclicker/app/LanLink$Peer;
.super Ljava/lang/Object;
.source "LanLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/LanLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Peer"
.end annotation


# instance fields
.field public volatile connected:Z

.field public final id:Ljava/lang/String;

.field public final ip:Ljava/lang/String;

.field public volatile lastSeen:J

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "str2",
            "str3",
            "j"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/rootclicker/app/LanLink$Peer;->ip:Ljava/lang/String;

    .line 88
    iput-wide p4, p0, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    return-void
.end method


# virtual methods
.method copy()Lcom/rootclicker/app/LanLink$Peer;
    .locals 7

    .line 92
    new-instance v6, Lcom/rootclicker/app/LanLink$Peer;

    iget-object v1, p0, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/rootclicker/app/LanLink$Peer;->ip:Ljava/lang/String;

    iget-wide v4, p0, Lcom/rootclicker/app/LanLink$Peer;->lastSeen:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/rootclicker/app/LanLink$Peer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    iget-boolean v0, p0, Lcom/rootclicker/app/LanLink$Peer;->connected:Z

    iput-boolean v0, v6, Lcom/rootclicker/app/LanLink$Peer;->connected:Z

    return-object v6
.end method
