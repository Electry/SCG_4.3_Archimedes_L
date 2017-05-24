.class public Lcom/tencent/weibo/beans/RouteCfg;
.super Ljava/lang/Object;
.source "RouteCfg.java"


# instance fields
.field private host:Ljava/lang/String;

.field private maxConnetions:I

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tencent/weibo/beans/RouteCfg;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConnetions()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/weibo/beans/RouteCfg;->maxConnetions:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/tencent/weibo/beans/RouteCfg;->port:I

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/tencent/weibo/beans/RouteCfg;->host:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setMaxConnetions(I)V
    .locals 0
    .param p1, "maxConnetions"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/weibo/beans/RouteCfg;->maxConnetions:I

    .line 28
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/tencent/weibo/beans/RouteCfg;->port:I

    .line 22
    return-void
.end method
