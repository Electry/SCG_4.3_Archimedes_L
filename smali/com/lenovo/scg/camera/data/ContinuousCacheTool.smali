.class public Lcom/lenovo/scg/camera/data/ContinuousCacheTool;
.super Ljava/lang/Object;
.source "ContinuousCacheTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/data/ContinuousCacheTool$1;,
        Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;,
        Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;
    }
.end annotation


# static fields
.field private static final mCacheInMemory:Z = true


# instance fields
.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIndexCur:I

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I

    .line 217
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    .line 40
    iput v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/data/ContinuousCacheTool;Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/data/ContinuousCacheTool;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->addCacheList(Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;)V

    return-void
.end method

.method private addCacheList(Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;)V
    .locals 2
    .param p1, "object"    # Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private shutdownExecutorService()V
    .locals 5

    .prologue
    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 130
    const-string v1, "ExecutorService shutdown"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string v1, "ExecutorService shutdown,time out,will shutdownNow"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 142
    const-string/jumbo v1, "shutdownExecutorService done!"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ll"

    const-string v2, "InterruptedException while shutdownExecutorService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->reset()V

    .line 124
    invoke-direct {p0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->shutdownExecutorService()V

    .line 125
    return-void
.end method

.method public deleteCacheData(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 88
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;

    .line 92
    .local v1, "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    :cond_0
    :goto_0
    return v4

    .line 97
    .restart local v1    # "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCacheData error: %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCacheData(I)[B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 54
    const-string v1, "enter getCacheData"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 55
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;

    .line 58
    .local v0, "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    iget-object v1, v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B

    .line 75
    .end local v0    # "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastCacheData()[B
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "nSize":I
    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->getCacheData(I)[B

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    return-void
.end method

.method public declared-synchronized setCacheData([B)V
    .locals 3
    .param p1, "jpegData"    # [B

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;

    iget v2, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I

    invoke-direct {v1, p0, p1, v2}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;-><init>(Lcom/lenovo/scg/camera/data/ContinuousCacheTool;[BI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 50
    iget v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->mIndexCur:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
