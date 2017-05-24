.class Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 362
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 364
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 366
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 431
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 378
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ReloadTask"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 379
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "updateComplete":Z
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v4, :cond_7

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 385
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 386
    :cond_1
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 387
    monitor-exit p0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 391
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 394
    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCameraBucketId:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1900()I

    move-result v4

    sget v7, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v4, v7, :cond_3

    .line 395
    sget v4, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCameraBucketId:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1902(I)I

    .line 396
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    instance-of v4, v4, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_3

    .line 397
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->forceChange()V

    .line 398
    const-string/jumbo v4, "wwf"

    const-string v7, "forceChange"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    .line 404
    .local v2, "version":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    new-instance v7, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;J)V

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v7}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 405
    .local v0, "info":Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    if-nez v0, :cond_6

    move v1, v5

    .line 406
    :goto_1
    if-nez v1, :cond_0

    .line 407
    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v4, v8, v2

    if-eqz v4, :cond_4

    .line 408
    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 409
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    iput v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 415
    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v7, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v4, v7, :cond_4

    .line 416
    iput v10, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 419
    :cond_4
    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v4, v10, :cond_5

    .line 420
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    iget v7, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 421
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    .line 422
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 423
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    iput v4, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 425
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    new-instance v7, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v7}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move v1, v6

    .line 405
    goto :goto_1

    .line 427
    .end local v0    # "info":Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v2    # "version":J
    :cond_7
    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 428
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
