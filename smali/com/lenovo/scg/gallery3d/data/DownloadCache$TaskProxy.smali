.class public Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .locals 3
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;-><init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 385
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 387
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 392
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized setResult(Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
