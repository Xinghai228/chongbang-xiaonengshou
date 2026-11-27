.class Lcom/rootclicker/app/LanLink$5;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->startReceiveThread()V
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

    .line 384
    iput-object p1, p0, Lcom/rootclicker/app/LanLink$5;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 388
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x200

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 389
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$5;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rootclicker/app/LanLink$5;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$300(Lcom/rootclicker/app/LanLink;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 391
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 392
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$5;->this$0:Lcom/rootclicker/app/LanLink;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rootclicker/app/LanLink;->handleAnnouncement(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$5;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-void
.end method
