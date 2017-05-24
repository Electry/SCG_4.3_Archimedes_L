.class public Lcom/lenovo/scg/photos/data/MediaCache;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;,
        Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;,
        Lcom/lenovo/scg/photos/data/MediaCache$NotifyOriginalReady;,
        Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;,
        Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;,
        Lcom/lenovo/scg/photos/data/MediaCache$OriginalReady;,
        Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;
    }
.end annotation


# static fields
.field static final IMAGE_CACHE_SUBDIR:Ljava/lang/String; = "image_cache"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".cache"

.field static final TAG:Ljava/lang/String;

.field static final TEMP_IMAGE_EXTENSION:Ljava/lang/String; = ".temp"

.field private static sInstance:Lcom/lenovo/scg/photos/data/MediaCache;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mCacheSize:J

.field private mCacheSizeLock:Ljava/lang/Object;

.field private mCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

.field private mDeleteFile:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

.field private mMaxCacheSize:J

.field private mMinThumbCacheSize:J

.field private mMoveTempToCache:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

.field private mNotifyCachedLowResolution:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

.field private mProcessNotifications:Ljava/lang/Thread;

.field private mProcessingThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mRetrievers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/photos/data/MediaRetriever;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTempImageNumber:J

.field private mTempImageNumberLock:Ljava/lang/Object;

.field private mThumbCacheSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/lenovo/scg/photos/data/MediaCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/MediaCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRunning:Z

    .line 213
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mProcessingThreads:Ljava/util/List;

    .line 223
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTempImageNumber:J

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTempImageNumberLock:Ljava/lang/Object;

    .line 227
    const-wide/32 v0, 0x2800000

    iput-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMaxCacheSize:J

    .line 229
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMinThumbCacheSize:J

    .line 231
    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    .line 233
    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/data/MediaCache$1;-><init>(Lcom/lenovo/scg/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mNotifyCachedLowResolution:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    .line 247
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/data/MediaCache$2;-><init>(Lcom/lenovo/scg/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMoveTempToCache:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    .line 257
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/data/MediaCache$3;-><init>(Lcom/lenovo/scg/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDeleteFile:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    .line 276
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/data/MediaCache$4;-><init>(Lcom/lenovo/scg/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mProcessNotifications:Ljava/lang/Thread;

    .line 322
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mProcessNotifications:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mContext:Landroid/content/Context;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/photos/data/MediaCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/photos/data/MediaCache;Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;
    .param p1, "x1"    # Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->processTask(Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/photos/data/MediaCache;J)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/photos/data/MediaCache;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;
    .param p1, "x1"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/photos/data/MediaCache;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$522(Lcom/lenovo/scg/photos/data/MediaCache;J)J
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$622(Lcom/lenovo/scg/photos/data/MediaCache;J)J
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/data/MediaCache;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    return-object v0
.end method

.method private addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;[B)V
    .locals 2
    .param p1, "callback"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    .param p2, "bytes"    # [B

    .prologue
    .line 654
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;->setBytes([B)V

    .line 655
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 658
    monitor-exit v1

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    .locals 4
    .param p1, "callback"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 643
    :try_start_0
    invoke-interface {p1, p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;->setFile(Ljava/io/File;)V

    .line 644
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 647
    monitor-exit v2

    .line 651
    :goto_0
    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/lenovo/scg/photos/data/MediaCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;
    .param p3, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;
    .param p4, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 524
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {v0, p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;-><init>(Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V

    .line 525
    .local v0, "notifyComplete":Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    const/4 v1, 0x0

    .line 526
    .local v1, "notifyLowResolution":Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    if-eqz p3, :cond_0

    .line 527
    new-instance v1, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    .end local v1    # "notifyLowResolution":Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    invoke-direct {v1, p3}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;-><init>(Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V

    .line 529
    .restart local v1    # "notifyLowResolution":Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    :cond_0
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/lenovo/scg/photos/data/MediaCache;->addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    .line 530
    return-void
.end method

.method private addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V
    .locals 11
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    .param p3, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    .param p4, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;

    move-result-object v4

    .line 534
    .local v4, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    invoke-interface {v4, p1, p4}, Lcom/lenovo/scg/photos/data/MediaRetriever;->normalizeUri(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;

    move-result-object v6

    .line 535
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 536
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No MediaRetriever for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    :cond_0
    invoke-interface {v4, v6, p4}, Lcom/lenovo/scg/photos/data/MediaRetriever;->normalizeMediaSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    move-result-object p4

    .line 540
    invoke-virtual {p0, v6, p4}, Lcom/lenovo/scg/photos/data/MediaCache;->getCachedFile(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v0

    .line 541
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0, p2, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 565
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/scg/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "differentiator":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    monitor-enter v8

    .line 547
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 548
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;>;"
    if-nez v5, :cond_2

    .line 549
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find retriever for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 564
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 551
    .restart local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;>;"
    :cond_2
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :try_start_2
    new-instance v3, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;

    invoke-direct {v3, v6, p4, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;-><init>(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;)V

    .line 553
    .local v3, "job":Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;
    invoke-interface {p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;->isPrefetch()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 554
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 563
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 556
    :cond_3
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 557
    .local v2, "index":I
    :goto_2
    if-ltz v2, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;

    iget-object v7, v7, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->complete:Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

    invoke-interface {v7}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;->isPrefetch()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 558
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 560
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 563
    .end local v2    # "index":I
    .end local v3    # "job":Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;
    :catchall_1
    move-exception v7

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private createCacheImagePath(J)Ljava/io/File;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 520
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureFreeCacheSpace(JLcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V
    .locals 7
    .param p1, "size"    # J
    .param p3, "mediaSize"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    const-wide/16 v4, -0x1

    .line 689
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->getCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->getThumbnailCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    .line 693
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 694
    :cond_1
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaCache;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t determine size of the image cache"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    monitor-exit v1

    .line 706
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    .line 699
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p3, v0, :cond_3

    .line 700
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    .line 702
    :cond_3
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    iget-wide v4, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMaxCacheSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 703
    invoke-direct {p0}, Lcom/lenovo/scg/photos/data/MediaCache;->shrinkCacheLocked()V

    .line 705
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 685
    .end local p0    # "scheme":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 682
    .restart local p0    # "scheme":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .local v0, "differentiator":Ljava/lang/StringBuilder;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getFastImageSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;

    move-result-object v0

    .line 590
    .local v0, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/photos/data/MediaRetriever;->getFastImageSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/lenovo/scg/photos/data/MediaCache;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    return-object v0
.end method

.method private getLocalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;

    move-result-object v1

    .line 581
    .local v1, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    const/4 v0, 0x0

    .line 582
    .local v0, "localFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 583
    invoke-interface {v1, p1}, Lcom/lenovo/scg/photos/data/MediaRetriever;->getLocalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 585
    :cond_0
    return-object v0
.end method

.method private getMedia(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 663
    iget-object v9, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTempImageNumberLock:Ljava/lang/Object;

    monitor-enter v9

    .line 664
    :try_start_0
    iget-wide v4, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTempImageNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    iput-wide v10, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTempImageNumber:J

    .line 665
    .local v4, "imageNumber":J
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 667
    .local v7, "tempFile":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;

    move-result-object v6

    .line 668
    .local v6, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    invoke-interface {v6, p1, p2, v7}, Lcom/lenovo/scg/photos/data/MediaRetriever;->getMedia(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z

    move-result v1

    .line 669
    .local v1, "retrieved":Z
    const/4 v0, 0x0

    .line 670
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {p0, v8, v9, p2}, Lcom/lenovo/scg/photos/data/MediaCache;->ensureFreeCacheSpace(JLcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    .line 672
    iget-object v8, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v9, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMoveTempToCache:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v8, p1, p2, v9, v7}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->insert(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;Ljava/io/File;)J

    move-result-wide v2

    .line 673
    .local v2, "id":J
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v0

    .line 675
    .end local v2    # "id":J
    :cond_0
    return-object v0

    .line 665
    .end local v0    # "cachedFile":Ljava/io/File;
    .end local v1    # "retrieved":Z
    .end local v4    # "imageNumber":J
    .end local v6    # "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    .end local v7    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "differentiator":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    monitor-enter v3

    .line 571
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/data/MediaRetriever;

    .line 572
    .local v1, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    if-nez v1, :cond_0

    .line 574
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No MediaRetriever for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    .end local v1    # "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 576
    .restart local v1    # "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    :cond_0
    return-object v1
.end method

.method private getTemporaryImage(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)[B
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fastImageType"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/lenovo/scg/photos/data/MediaRetriever;

    move-result-object v0

    .line 605
    .local v0, "retriever":Lcom/lenovo/scg/photos/data/MediaRetriever;
    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/photos/data/MediaRetriever;->getTemporaryImage(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const-class v1, Lcom/lenovo/scg/photos/data/MediaCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCache;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/data/MediaCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    .line 304
    invoke-static {p0}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit v1

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFastImageBetter(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z
    .locals 1
    .param p1, "fastImageType"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_0
    if-nez p2, :cond_1

    .line 598
    const/4 v0, 0x1

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->isBetterThan(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTask(Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;)V
    .locals 11
    .param p1, "job"    # Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;

    .prologue
    .line 609
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/scg/photos/data/MediaCache;->getCachedFile(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v1

    .line 610
    .local v1, "cachedFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 611
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->complete:Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

    invoke-direct {p0, v7, v1}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 616
    .local v5, "hasLowResolution":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 617
    iget-object v7, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v8, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v9, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    iget-object v10, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mNotifyCachedLowResolution:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->executeOnBestCached(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    move-result-object v2

    .line 618
    .local v2, "cachedSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/photos/data/MediaCache;->getFastImageSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    move-result-object v3

    .line 619
    .local v3, "fastImageSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/photos/data/MediaCache;->isFastImageBetter(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 620
    invoke-virtual {v3}, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 621
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->getTemporaryImage(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)[B

    move-result-object v0

    .line 622
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 623
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {p0, v7, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;[B)V

    .line 635
    .end local v0    # "bytes":[B
    .end local v2    # "cachedSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .end local v3    # "fastImageSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    :cond_2
    :goto_2
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/photos/data/MediaCache;->getMedia(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v4

    .line 636
    .local v4, "fullSizeFile":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 637
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->complete:Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

    invoke-direct {p0, v7, v4}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    goto :goto_0

    .line 615
    .end local v4    # "fullSizeFile":Ljava/io/File;
    .end local v5    # "hasLowResolution":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 626
    .restart local v2    # "cachedSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .restart local v3    # "fastImageSize":Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .restart local v5    # "hasLowResolution":Z
    :cond_4
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->getMedia(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v6

    .line 627
    .local v6, "lowFile":Ljava/io/File;
    if-eqz v6, :cond_2

    .line 628
    iget-object v7, p1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {p0, v7, v6}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    goto :goto_2
.end method

.method private shrinkCacheLocked()V
    .locals 8

    .prologue
    .line 709
    iget-wide v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMinThumbCacheSize:J

    .line 710
    .local v0, "deleteSize":J
    iget-wide v4, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    sub-long/2addr v4, v0

    iget-wide v6, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMinThumbCacheSize:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 711
    .local v2, "includeThumbnails":Z
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v4, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDeleteFile:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->deleteOldCached(ZJLcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;)V

    .line 712
    return-void

    .line 710
    .end local v2    # "includeThumbnails":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized shutdown()V
    .locals 5

    .prologue
    .line 313
    const-class v3, Lcom/lenovo/scg/photos/data/MediaCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/lenovo/scg/photos/data/MediaCache;->mRunning:Z

    .line 314
    sget-object v2, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    iget-object v2, v2, Lcom/lenovo/scg/photos/data/MediaCache;->mProcessNotifications:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 315
    sget-object v2, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;

    iget-object v2, v2, Lcom/lenovo/scg/photos/data/MediaCache;->mProcessingThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;

    .line 316
    .local v1, "processingThread":Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;
    invoke-virtual {v1}, Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 313
    .end local v1    # "processingThread":Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 318
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/lenovo/scg/photos/data/MediaCache;->sInstance:Lcom/lenovo/scg/photos/data/MediaCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public addRetriever(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/photos/data/MediaRetriever;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "retriever"    # Lcom/lenovo/scg/photos/data/MediaRetriever;

    .prologue
    .line 374
    invoke-static {p1, p2}, Lcom/lenovo/scg/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "differentiator":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    monitor-enter v3

    .line 379
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 380
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;>;"
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v2, Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;-><init>(Lcom/lenovo/scg/photos/data/MediaCache;Ljava/util/Queue;)V

    invoke-virtual {v2}, Lcom/lenovo/scg/photos/data/MediaCache$ProcessQueue;->start()V

    .line 382
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    return-void

    .line 377
    .end local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 382
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public clearCacheDir()V
    .locals 6

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 362
    .local v2, "cachedFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 363
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 364
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cachedFile":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 334
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mContext:Landroid/content/Context;

    monitor-enter v3

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_0

    .line 336
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 344
    .local v0, "baseDir":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v4, "image_cache"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 347
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    monitor-exit v3

    return-object v2

    .line 342
    .restart local v1    # "state":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "baseDir":Ljava/io/File;
    goto :goto_0

    .line 348
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCachedFile(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 453
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->getCached(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/lang/Long;

    move-result-object v0

    .line 454
    .local v0, "cachedId":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 455
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v3, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDeleteFile:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v2, p1, p2, v3}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->delete(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;)V

    .line 459
    const/4 v1, 0x0

    .line 462
    :cond_0
    return-object v1
.end method

.method public insertIntoCache(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p3, "tempFile"    # Ljava/io/File;

    .prologue
    .line 476
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 477
    .local v2, "fileSize":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 481
    .local v0, "cacheFile":Ljava/io/File;
    iget-object v5, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v5}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 483
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 485
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v5, p1, p2}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->getCached(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/lang/Long;

    move-result-object v4

    .line 486
    .local v4, "id":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 487
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v0

    .line 488
    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    iget-object v5, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->updateLength(JJ)V

    .line 500
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 491
    :cond_1
    :try_start_1
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not update cached file with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 493
    const/4 v0, 0x0

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, p2}, Lcom/lenovo/scg/photos/data/MediaCache;->ensureFreeCacheSpace(JLcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    .line 497
    iget-object v5, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v6, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMoveTempToCache:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v5, p1, p2, v6, p3}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->insert(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 498
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 502
    .end local v4    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDatabaseHelper:Lcom/lenovo/scg/photos/data/MediaCacheDatabase;

    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mDeleteFile:Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/photos/data/MediaCacheDatabase;->delete(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;)V

    .line 358
    return-void
.end method

.method public retrieveOriginal(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$OriginalReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$OriginalReady;
    .param p3, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCache;->getLocalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 437
    .local v0, "localFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 438
    new-instance v2, Lcom/lenovo/scg/photos/data/MediaCache$NotifyOriginalReady;

    invoke-direct {v2, p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyOriginalReady;-><init>(Lcom/lenovo/scg/photos/data/MediaCache$OriginalReady;)V

    invoke-direct {p0, v2, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x0

    .line 441
    .local v1, "notifyLowResolution":Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    :goto_1
    new-instance v2, Lcom/lenovo/scg/photos/data/MediaCache$NotifyOriginalReady;

    invoke-direct {v2, p2}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyOriginalReady;-><init>(Lcom/lenovo/scg/photos/data/MediaCache$OriginalReady;)V

    sget-object v3, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Original:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    goto :goto_0

    .line 440
    .end local v1    # "notifyLowResolution":Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;
    :cond_1
    new-instance v1, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {v1, p3}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;-><init>(Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V

    goto :goto_1
.end method

.method public retrievePreview(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;
    .param p3, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;

    .prologue
    .line 418
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    .line 419
    return-void
.end method

.method public retrieveThumbnail(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;
    .param p3, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;

    .prologue
    .line 400
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->addTask(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaCache$ImageReady;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)V

    .line 401
    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 330
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    .line 331
    return-void
.end method

.method public setMaxCacheSize(J)V
    .locals 7
    .param p1, "maxCacheSize"    # J

    .prologue
    .line 511
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iput-wide p1, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMaxCacheSize:J

    .line 513
    iget-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMaxCacheSize:J

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mMinThumbCacheSize:J

    .line 514
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J

    .line 515
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J

    .line 516
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
