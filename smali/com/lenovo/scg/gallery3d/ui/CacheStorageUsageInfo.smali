.class public Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;
.super Ljava/lang/Object;
.source "CacheStorageUsageInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheStorageUsageInfo"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mTargetCacheBytes:J

.field private mTotalBytes:J

.field private mUsedBytes:J

.field private mUsedCacheBytes:J

.field private mUserChangeDelta:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 52
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public getExpectedUsedBytes()J
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUsedBytes()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    return-wide v0
.end method

.method public increaseTargetCacheSize(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    .line 57
    return-void
.end method

.method public loadStorageInfo(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)V
    .locals 12
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 60
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 61
    .local v4, "cacheDir":Ljava/io/File;
    if-nez v4, :cond_0

    .line 62
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 65
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 67
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 68
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 69
    .local v0, "availableBlocks":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v8, v7

    .line 71
    .local v8, "totalBlocks":J
    mul-long v10, v2, v8

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    .line 72
    sub-long v10, v8, v0

    mul-long/2addr v10, v2

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    .line 73
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTotalUsedCacheSize()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    .line 74
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTotalTargetCacheSize()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    .line 75
    return-void
.end method
