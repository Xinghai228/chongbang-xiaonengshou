.class public interface abstract Lcom/rootclicker/app/LanLink$Listener;
.super Ljava/lang/Object;
.source "LanLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rootclicker/app/LanLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNotice(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation
.end method

.method public abstract onPeers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rootclicker/app/LanLink$Peer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemoteReset()V
.end method

.method public abstract onRemoteRun()V
.end method

.method public abstract onRemoteTarget(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract onRoleChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i2"
        }
    .end annotation
.end method
