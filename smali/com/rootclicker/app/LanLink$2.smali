.class Lcom/rootclicker/app/LanLink$2;
.super Ljava/lang/Object;
.source "LanLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rootclicker/app/LanLink;->connect(Lcom/rootclicker/app/LanLink$Peer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rootclicker/app/LanLink;

.field final synthetic val$peer:Lcom/rootclicker/app/LanLink$Peer;


# direct methods
.method constructor <init>(Lcom/rootclicker/app/LanLink;Lcom/rootclicker/app/LanLink$Peer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$peer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p2, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iput-object p1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 214
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v3, v3, Lcom/rootclicker/app/LanLink$Peer;->ip:Ljava/lang/String;

    const v4, 0xb26f

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 215
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v3, v3, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->helloMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rootclicker/app/LanLink;->writeLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 218
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->postRole()V

    .line 219
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v3}, Lcom/rootclicker/app/LanLink;->access$100(Lcom/rootclicker/app/LanLink;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 224
    :catch_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fde\u63a5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v4, v4, Lcom/rootclicker/app/LanLink$Peer;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u4e24\u53f0\u624b\u673a\u5728\u540c\u4e00 WiFi \u4e0b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rootclicker/app/LanLink;->notifyNotice(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v2, v1}, Lcom/rootclicker/app/LanLink;->closeQuietly(Ljava/net/Socket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :goto_2
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v1}, Lcom/rootclicker/app/LanLink;->access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v2, v2, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v2, v2, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rootclicker/app/LanLink;->dropPeerIfStale(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 230
    iget-object v1, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v1, v0}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 231
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->postRole()V

    return-void

    .line 227
    :goto_3
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-static {v2}, Lcom/rootclicker/app/LanLink;->access$000(Lcom/rootclicker/app/LanLink;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v3, v3, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    iget-object v3, p0, Lcom/rootclicker/app/LanLink$2;->val$peer:Lcom/rootclicker/app/LanLink$Peer;

    iget-object v3, v3, Lcom/rootclicker/app/LanLink$Peer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rootclicker/app/LanLink;->dropPeerIfStale(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v2}, Lcom/rootclicker/app/LanLink;->updateConnectedFlags()V

    .line 230
    iget-object v2, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v2, v0}, Lcom/rootclicker/app/LanLink;->signalPeers(Z)V

    .line 231
    iget-object v0, p0, Lcom/rootclicker/app/LanLink$2;->this$0:Lcom/rootclicker/app/LanLink;

    invoke-virtual {v0}, Lcom/rootclicker/app/LanLink;->postRole()V

    .line 232
    throw v1
.end method
