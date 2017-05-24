.class final Lledroid/nac/client/RootSocketClient;
.super Lledroid/nac/client/RootWorkableTester;
.source "RootSocketClient.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ledroid-nac"


# instance fields
.field private mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

.field protected mFailedReason:Ljava/lang/String;

.field private final mPackageCacheFileDir:Ljava/io/File;

.field private mRootSocket:Lledroid/nac/client/RootSocket;

.field private mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

.field private final mRootSocketReader:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Lledroid/nac/client/RootSocketResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/client/RootSocketClient;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lledroid/nac/client/RootSocket$RootSocketCreater;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgFileDir"    # Ljava/io/File;
    .param p3, "pkgCacheDir"    # Ljava/io/File;
    .param p4, "creater"    # Lledroid/nac/client/RootSocket$RootSocketCreater;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lledroid/nac/client/RootWorkableTester;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 19
    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    .line 21
    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mFailedReason:Ljava/lang/String;

    .line 132
    new-instance v0, Lledroid/nac/client/RootSocketClient$1;

    invoke-direct {v0, p0}, Lledroid/nac/client/RootSocketClient$1;-><init>(Lledroid/nac/client/RootSocketClient;)V

    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketReader:Ljava/util/concurrent/Callable;

    .line 27
    iput-object p3, p0, Lledroid/nac/client/RootSocketClient;->mPackageCacheFileDir:Ljava/io/File;

    .line 28
    iput-object p4, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lledroid/nac/client/RootSocketClient;)Lledroid/nac/client/RootSocket;
    .locals 1
    .param p0, "x0"    # Lledroid/nac/client/RootSocketClient;

    .prologue
    .line 13
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    return-object v0
.end method

.method private destroyRootSocket()V
    .locals 2

    .prologue
    .line 102
    const-class v1, Lledroid/nac/client/RootSocketClient;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    invoke-interface {v0}, Lledroid/nac/client/RootSocket;->destroy()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    .line 107
    :cond_0
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected destroy()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootResponseIoStream()V

    .line 98
    invoke-direct {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootSocket()V

    .line 99
    return-void
.end method

.method protected destroyRootResponseIoStream()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    invoke-virtual {v0}, Lledroid/nac/client/RootSocketCmdResponsReader;->destroy()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    .line 67
    :cond_0
    return-void
.end method

.method protected execTest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lledroid/nac/client/RootSocketClient;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFailedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mFailedReason:Ljava/lang/String;

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lledroid/nac/client/RootSocketClient;->testRootWorkable()Z

    move-result v0

    goto :goto_0
.end method

.method protected onRootTestWorkable(Z)V
    .locals 3
    .param p1, "workable"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    if-eqz v0, :cond_0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    const-string v0, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-interface {v2}, Lledroid/nac/client/RootSocket$RootSocketCreater;->getRootSocketDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Is work."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v0, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-interface {v2}, Lledroid/nac/client/RootSocket$RootSocketCreater;->getRootSocketDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Doesn\'t work."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    invoke-virtual {v0}, Lledroid/nac/client/RootSocketCmdResponsReader;->readCmdResponse()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readRootSocketResult()Lledroid/nac/client/RootSocketResponse;
    .locals 6

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 119
    .local v3, "response":Lledroid/nac/client/RootSocketResponse;
    :try_start_0
    invoke-static {}, Lledroid/nac/client/ExecutorManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v5, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketReader:Ljava/util/concurrent/Callable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 120
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lledroid/nac/client/RootSocketResponse;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lledroid/nac/client/RootSocketResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootSocket()V

    .line 129
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lledroid/nac/client/RootSocketResponse;>;"
    :goto_0
    return-object v3

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v4, "ledroid-nac"

    const-string v5, "Read Line From RootSocket Interrupted: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-direct {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootSocket()V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    const-string v4, "ledroid-nac"

    const-string v5, "ExecutionException during read from Root Server : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-direct {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootSocket()V

    goto :goto_0

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lledroid/nac/client/RootSocketClient;->destroyRootSocket()V

    throw v4
.end method

.method protected write(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v2, Lledroid/nac/client/RootSocketClient;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-interface {v1}, Lledroid/nac/client/RootSocket$RootSocketCreater;->createRootSocket()Lledroid/nac/client/RootSocket;

    move-result-object v1

    iput-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    .line 78
    :cond_0
    :goto_0
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    invoke-interface {v1}, Lledroid/nac/client/RootSocket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    :cond_1
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-interface {v4}, Lledroid/nac/client/RootSocket$RootSocketCreater;->getRootSocketDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ignored this executing!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    monitor-exit v2

    .line 92
    :goto_1
    return v1

    .line 73
    :cond_2
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    invoke-interface {v1}, Lledroid/nac/client/RootSocket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    invoke-interface {v1}, Lledroid/nac/client/RootSocket;->destroy()V

    .line 75
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-interface {v1}, Lledroid/nac/client/RootSocket$RootSocketCreater;->createRootSocket()Lledroid/nac/client/RootSocket;

    move-result-object v1

    iput-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_3
    :try_start_1
    new-instance v1, Lledroid/nac/client/RootSocketCmdResponsReader;

    iget-object v3, p0, Lledroid/nac/client/RootSocketClient;->mPackageCacheFileDir:Ljava/io/File;

    invoke-direct {v1, p1, v3}, Lledroid/nac/client/RootSocketCmdResponsReader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    .line 84
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mCmdResponseStream:Lledroid/nac/client/RootSocketCmdResponsReader;

    invoke-virtual {v1}, Lledroid/nac/client/RootSocketCmdResponsReader;->getCmdFilePath()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "cmdFilePath":Ljava/lang/String;
    sget-boolean v1, Lledroid/nac/client/RootSocketClient;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 86
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] RootClient sending"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    iget-object v1, p0, Lledroid/nac/client/RootSocketClient;->mRootSocket:Lledroid/nac/client/RootSocket;

    invoke-interface {v1, v0}, Lledroid/nac/client/RootSocket;->write(Ljava/lang/String;)V

    .line 89
    sget-boolean v1, Lledroid/nac/client/RootSocketClient;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 90
    const-string v1, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] RootClient has sent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
