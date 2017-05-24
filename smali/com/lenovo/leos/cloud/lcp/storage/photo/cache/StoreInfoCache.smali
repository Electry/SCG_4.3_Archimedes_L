.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;
.super Ljava/lang/Object;
.source "StoreInfoCache.java"


# static fields
.field private static inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;


# instance fields
.field RefreshMillisecSpan:J

.field cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

.field refreshTime:J

.field storage:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    .line 25
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->storage:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshTime:J

    .line 29
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->RefreshMillisecSpan:J

    .line 35
    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addUsage(J)V
    .locals 5
    .param p1, "fileSize"    # J

    .prologue
    .line 82
    monitor-enter p0

    const/4 v1, 0x0

    .line 84
    .local v1, "refreshed":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshCache()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 89
    :goto_0
    if-nez v1, :cond_0

    .line 90
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->addUsage(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "StoreInfoCache"

    const-string/jumbo v3, "refresh cache failed in addUsage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public canUpload(J)Z
    .locals 5
    .param p1, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->canUploadFile(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v2, "\u4e91\u7aef\u7a7a\u95f4\u4e0d\u8db3"

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v2, "\u7f51\u7edc\u5f02\u5e38"

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    const-string/jumbo v2, "\u7f51\u7edc\u4e1a\u52a1\u5f02\u5e38"

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method canUploadFile(J)Z
    .locals 7
    .param p1, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->getCache()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    move-result-object v0

    .line 73
    .local v0, "info":Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->getLimitation()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;->getUsage()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCache()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshCache()Z

    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    return-object v0
.end method

.method public declared-synchronized refreshCache(Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;)V
    .locals 2
    .param p1, "stInfo"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method refreshCache()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->RefreshMillisecSpan:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->storage:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->storage:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;->getStoreInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshCache(Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;)V

    .line 59
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRefreshTimeSpan(J)V
    .locals 1
    .param p1, "milSec"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->RefreshMillisecSpan:J

    .line 112
    return-void
.end method

.method public declared-synchronized setStorage(Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;)V
    .locals 2
    .param p1, "st"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->storage:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->cache:Lcom/lenovo/leos/cloud/lcp/storage/photo/StoreInfo;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->refreshTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
