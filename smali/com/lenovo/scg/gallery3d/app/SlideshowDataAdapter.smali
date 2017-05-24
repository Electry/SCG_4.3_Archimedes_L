.class public Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;,
        Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;,
        Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    }
.end annotation


# static fields
.field private static final IMAGE_QUEUE_CAPACITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideshowDataAdapter"

.field private static final THREAD_POOL_NAME_SLIDESHOWDATAADAPTER_NEXTSLIDE:Ljava/lang/String; = "pool_slideshowdataadapter_nextslide"

.field private static final THREAD_POOL_NAME_SLIDESHOWDATAADAPTER_RELOADTASK:Ljava/lang/String; = "pool_slideshowdataadapter_reloadtask"


# instance fields
.field private mDataReady:Z

.field private mDataVersion:J

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mIsActive:Z

.field private mLoadIndex:I

.field private final mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNeedReset:Z

.field private mNextOutput:I

.field private mReloadTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

.field private final mSourceListener:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 3
    .param p1, "context"    # Lcom/lenovo/scg/gallery3d/app/GalleryContext;
    .param p2, "source"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    .param p3, "index"    # I
    .param p4, "initialPath"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 66
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 68
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;

    .line 90
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    .line 91
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 92
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 93
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 94
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryContext;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->loadItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return p1
.end method

.method static synthetic access$604(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized innerNextBitmap()Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "t":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v0    # "t":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 194
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 197
    :goto_1
    monitor-exit p0

    return-object v1

    .line 195
    :cond_1
    :try_start_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private loadItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 98
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->reload()J

    move-result-wide v2

    .line 100
    .local v2, "v":J
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 101
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    .line 102
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    .line 117
    .end local v2    # "v":J
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 107
    .local v0, "index":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-interface {v4, v5, v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->findItemIndex(Lcom/lenovo/scg/gallery3d/data/Path;I)I

    move-result v0

    .line 109
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 113
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    if-eq v0, v1, :cond_2

    .line 114
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public nextSlide(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
            ">;)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->waitDone()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 225
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    .prologue
    .line 229
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
