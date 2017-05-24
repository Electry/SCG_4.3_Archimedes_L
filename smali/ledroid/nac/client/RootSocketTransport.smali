.class final Lledroid/nac/client/RootSocketTransport;
.super Ljava/lang/Object;
.source "RootSocketTransport.java"

# interfaces
.implements Lledroid/nac/client/ICommandTransport;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ledroid-nac"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEnsuredPath:Lledroid/nac/utils/AndroidApplicationPath;

.field private mRootServerReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRootSocketClient:Lledroid/nac/client/RootSocketClient;

.field private mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/client/RootSocketTransport;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lledroid/nac/client/RootSocket$RootSocketCreater;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creater"    # Lledroid/nac/client/RootSocket$RootSocketCreater;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    .line 22
    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootServerReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lledroid/nac/client/RootSocketTransport;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lledroid/nac/utils/AndroidApplicationPath;

    invoke-direct {v0, p1}, Lledroid/nac/utils/AndroidApplicationPath;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mEnsuredPath:Lledroid/nac/utils/AndroidApplicationPath;

    .line 28
    iput-object p2, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    .line 29
    new-instance v0, Lledroid/nac/client/RootSocketClient;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lledroid/nac/client/RootSocketTransport;->mEnsuredPath:Lledroid/nac/utils/AndroidApplicationPath;

    invoke-virtual {v2}, Lledroid/nac/utils/AndroidApplicationPath;->getPackageFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lledroid/nac/client/RootSocketTransport;->mEnsuredPath:Lledroid/nac/utils/AndroidApplicationPath;

    invoke-virtual {v3}, Lledroid/nac/utils/AndroidApplicationPath;->getPackageCacheDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketCreater:Lledroid/nac/client/RootSocket$RootSocketCreater;

    invoke-direct {v0, v1, v2, v3, v4}, Lledroid/nac/client/RootSocketClient;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lledroid/nac/client/RootSocket$RootSocketCreater;)V

    iput-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    .line 33
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    invoke-virtual {v0}, Lledroid/nac/client/RootSocketClient;->destroy()V

    .line 104
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "RootSocketTransport"

    return-object v0
.end method

.method public isRootTransport()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onAfterExec()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    invoke-virtual {v1}, Lledroid/nac/client/RootSocketClient;->readRootSocketResult()Lledroid/nac/client/RootSocketResponse;

    move-result-object v0

    .line 89
    .local v0, "response":Lledroid/nac/client/RootSocketResponse;
    sget-boolean v1, Lledroid/nac/client/RootSocketTransport;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 90
    if-nez v0, :cond_1

    .line 91
    const-string v1, "ledroid-nac"

    const-string/jumbo v2, "onAfterExec: Ignored Root Server Response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    iget-object v1, p0, Lledroid/nac/client/RootSocketTransport;->mRootServerReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    return-void

    .line 93
    :cond_1
    const-string v1, "ledroid-nac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAfterExec: Root Server Response => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lledroid/nac/client/RootSocketResponse;->isSuccessful()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBeforeExec()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootServerReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method public onlyAsScriptBatchExec()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    invoke-virtual {v0}, Lledroid/nac/client/RootSocketClient;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    invoke-virtual {v0}, Lledroid/nac/client/RootSocketClient;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Finished"

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lledroid/nac/client/RootSocketTransport;->mRootSocketClient:Lledroid/nac/client/RootSocketClient;

    invoke-virtual {v0, p1}, Lledroid/nac/client/RootSocketClient;->write(Ljava/lang/String;)Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "ledroid-nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored Root command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
