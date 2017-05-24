.class public final Lledroid/nac/client/TransportFactory;
.super Ljava/lang/Object;
.source "TransportFactory.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ledroid-nac"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/client/TransportFactory;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootTransport(Landroid/content/Context;)Lledroid/nac/client/ICommandTransport;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Lledroid/nac/client/RootSocketTransport;

    new-instance v1, Lledroid/nac/client/TransportFactory$1;

    invoke-direct {v1}, Lledroid/nac/client/TransportFactory$1;-><init>()V

    invoke-direct {v0, p0, v1}, Lledroid/nac/client/RootSocketTransport;-><init>(Landroid/content/Context;Lledroid/nac/client/RootSocket$RootSocketCreater;)V

    .line 29
    .local v0, "st":Lledroid/nac/client/ICommandTransport;
    invoke-interface {v0}, Lledroid/nac/client/ICommandTransport;->prepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-interface {v0}, Lledroid/nac/client/ICommandTransport;->destory()V

    .line 31
    const/4 v0, 0x0

    .line 34
    :cond_0
    sget-boolean v1, Lledroid/nac/client/TransportFactory;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 35
    const-string v2, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] Prepare "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "Successed"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    return-object v0

    .line 35
    :cond_2
    const-string v1, "Failed"

    goto :goto_0
.end method
