.class final Lledroid/nac/client/NacSocketByIP;
.super Lledroid/nac/client/NacSocket;
.source "NacSocketByIP.java"


# instance fields
.field private mCreateTime:J

.field private mLock:Ljava/lang/Object;

.field private mSocket:Ljava/net/Socket;

.field private final mSocketConnecter:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lledroid/nac/client/NacSocket;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mLock:Ljava/lang/Object;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    .line 16
    new-instance v0, Lledroid/nac/client/NacSocketByIP$1;

    invoke-direct {v0, p0}, Lledroid/nac/client/NacSocketByIP$1;-><init>(Lledroid/nac/client/NacSocketByIP;)V

    iput-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocketConnecter:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected initialize()Z
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Lledroid/nac/client/ExecutorManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lledroid/nac/client/NacSocketByIP;->mSocketConnecter:Ljava/util/concurrent/Callable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 51
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/net/Socket;>;"
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    .line 52
    sget-boolean v2, Lledroid/nac/client/NacSocketByIP;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByIP] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Create ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    iput-object v2, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    .line 56
    sget-boolean v2, Lledroid/nac/client/NacSocketByIP;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByIp] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Created ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    iget-object v2, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    if-nez v2, :cond_2

    .line 61
    invoke-virtual {p0}, Lledroid/nac/client/NacSocketByIP;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_2
    :goto_1
    iget-object v2, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lledroid/nac/client/NacSocketByIP;->onDestroy()V

    goto/16 :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Lledroid/nac/client/NacSocketByIP;->onDestroy()V

    .line 68
    sget-boolean v2, Lledroid/nac/client/NacSocketByIP;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "ledroid-nac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NacSocketByIp] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lledroid/nac/client/NacSocketByIP;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 80
    iget-object v1, p0, Lledroid/nac/client/NacSocketByIP;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 83
    :try_start_1
    sget-boolean v0, Lledroid/nac/client/NacSocketByIP;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "ledroid-nac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NacSocketByIp] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Destroyed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lledroid/nac/client/NacSocketByIP;->mCreateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    .line 92
    :cond_1
    :goto_0
    monitor-exit v1

    .line 93
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 89
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lledroid/nac/client/NacSocketByIP;->mSocket:Ljava/net/Socket;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
