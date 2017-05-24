.class final Lledroid/nac/client/TransportFactory$1;
.super Ljava/lang/Object;
.source "TransportFactory.java"

# interfaces
.implements Lledroid/nac/client/RootSocket$RootSocketCreater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/nac/client/TransportFactory;->getRootTransport(Landroid/content/Context;)Lledroid/nac/client/ICommandTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRootSocket()Lledroid/nac/client/RootSocket;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lledroid/nac/client/NacSocket;->newNacSocket()Lledroid/nac/client/NacSocket;

    move-result-object v0

    return-object v0
.end method

.method public getRootSocketDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "Lns"

    return-object v0
.end method
