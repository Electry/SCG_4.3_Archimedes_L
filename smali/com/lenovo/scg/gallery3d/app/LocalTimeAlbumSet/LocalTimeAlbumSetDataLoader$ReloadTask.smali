.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "LocalTimeAlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 557
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 559
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 561
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Landroid/os/Handler;

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
    .line 724
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 725
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 573
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 575
    const/16 v31, 0x0

    .line 576
    .local v31, "updateComplete":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v4, :cond_17

    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v4, :cond_2

    if-eqz v31, :cond_2

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 580
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 581
    monitor-exit p0

    goto :goto_0

    .line 583
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

    .line 584
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 585
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 588
    sget-object v5, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 589
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 590
    .local v32, "start":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v34

    .line 591
    .local v34, "version":J
    const-string/jumbo v4, "wwf5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "version = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v20, v12, v32

    .line 593
    .local v20, "duration":J
    const-wide/16 v12, 0x14

    cmp-long v4, v20, v12

    if-lez v4, :cond_3

    .line 594
    const-string v4, "DebugLoadingTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish reload - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetGetUpdateInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-wide/from16 v0, v34

    invoke-direct {v5, v6, v0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetGetUpdateInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;J)V

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;

    .line 598
    .local v23, "info":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
    if-nez v23, :cond_5

    const/16 v31, 0x1

    .line 599
    :goto_1
    if-nez v31, :cond_0

    .line 600
    const/16 v29, 0x0

    .line 601
    .local v29, "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    sget-object v36, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v36

    .line 602
    :try_start_3
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->version:J

    cmp-long v4, v4, v34

    if-eqz v4, :cond_f

    .line 604
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 605
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v28

    .line 608
    .local v28, "mediaSetCount":I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 609
    .end local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .local v30, "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move/from16 v0, v28

    if-ge v7, v0, :cond_7

    .line 610
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v27

    .line 611
    .local v27, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v24

    .line 614
    .local v24, "itemCount":I
    const/16 v4, 0x15

    move/from16 v0, v24

    if-lt v0, v4, :cond_4

    .line 615
    const/16 v24, 0x15

    .line 617
    :cond_4
    if-nez v24, :cond_6

    .line 609
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 596
    .end local v7    # "i":I
    .end local v20    # "duration":J
    .end local v23    # "info":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
    .end local v24    # "itemCount":I
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v28    # "mediaSetCount":I
    .end local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .end local v32    # "start":J
    .end local v34    # "version":J
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 598
    .restart local v20    # "duration":J
    .restart local v23    # "info":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
    .restart local v32    # "start":J
    .restart local v34    # "version":J
    :cond_5
    const/16 v31, 0x0

    goto :goto_1

    .line 621
    .restart local v7    # "i":I
    .restart local v24    # "itemCount":I
    .restart local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v28    # "mediaSetCount":I
    .restart local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :cond_6
    :try_start_6
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaSetList:Ljava/util/ArrayList;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-direct {v5, v6, v0, v1, v8}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaSet;II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    move-object/from16 v0, v23

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->size:I

    add-int v4, v4, v24

    move-object/from16 v0, v23

    iput v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 675
    .end local v24    # "itemCount":I
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :catchall_2
    move-exception v4

    move-object/from16 v29, v30

    .end local v7    # "i":I
    .end local v28    # "mediaSetCount":I
    .end local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :goto_4
    :try_start_7
    monitor-exit v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    .line 636
    .end local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v7    # "i":I
    .restart local v28    # "mediaSetCount":I
    .restart local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :cond_7
    :try_start_8
    const-string/jumbo v4, "wwf5"

    const-string/jumbo v5, "mediaSet.getMediaItem start~~~~~~~~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, v23

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->size:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_9

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->size:I

    move/from16 v22, v0

    .line 638
    .local v22, "firstLoadCount":I
    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 639
    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v28

    if-ge v7, v0, :cond_e

    .line 640
    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 642
    .restart local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v25

    .line 643
    .local v25, "itemShowCount":I
    move/from16 v9, v25

    .line 644
    .local v9, "itemRealCount":I
    const/16 v4, 0x15

    move/from16 v0, v25

    if-lt v0, v4, :cond_8

    .line 645
    const/16 v25, 0x15

    .line 647
    :cond_8
    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    move/from16 v19, v25

    .line 648
    .local v19, "currCount":I
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v26

    .line 653
    .local v26, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_d

    .line 654
    if-nez v10, :cond_b

    .line 656
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 637
    .end local v9    # "itemRealCount":I
    .end local v10    # "j":I
    .end local v19    # "currCount":I
    .end local v22    # "firstLoadCount":I
    .end local v25    # "itemShowCount":I
    .end local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_9
    const/16 v22, 0x14

    goto :goto_5

    .restart local v9    # "itemRealCount":I
    .restart local v22    # "firstLoadCount":I
    .restart local v25    # "itemShowCount":I
    .restart local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_a
    move/from16 v19, v22

    .line 647
    goto :goto_7

    .line 658
    .restart local v10    # "j":I
    .restart local v19    # "currCount":I
    .restart local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_c

    .line 659
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 662
    :cond_c
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v11, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v14, -0x1

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v18, 0x0

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v11 .. v18}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 666
    :cond_d
    sub-int v22, v22, v19

    .line 667
    if-nez v22, :cond_11

    .line 672
    .end local v9    # "itemRealCount":I
    .end local v10    # "j":I
    .end local v19    # "currCount":I
    .end local v25    # "itemShowCount":I
    .end local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_e
    const-string/jumbo v4, "wwf5"

    const-string/jumbo v5, "mediaSet.getMediaItem end~~~~~~~~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->startUpdateIndex:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v29, v30

    .line 675
    .end local v7    # "i":I
    .end local v22    # "firstLoadCount":I
    .end local v28    # "mediaSetCount":I
    .end local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :cond_f
    :try_start_9
    monitor-exit v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateContent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v23

    invoke-direct {v5, v6, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateContent;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;)V

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 684
    sget-object v12, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v12

    .line 685
    :try_start_a
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->version:J

    cmp-long v4, v4, v34

    if-eqz v4, :cond_16

    .line 686
    move-wide/from16 v0, v34

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->version:J

    .line 688
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v28

    .line 690
    .restart local v28    # "mediaSetCount":I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 691
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    move/from16 v0, v28

    if-ge v7, v0, :cond_15

    .line 692
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 694
    .restart local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v25

    .line 695
    .restart local v25    # "itemShowCount":I
    move/from16 v9, v25

    .line 696
    .restart local v9    # "itemRealCount":I
    const/16 v4, 0x15

    move/from16 v0, v25

    if-lt v0, v4, :cond_10

    .line 697
    const/16 v25, 0x15

    .line 699
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v26

    .line 703
    .restart local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_14

    .line 704
    if-nez v10, :cond_12

    .line 705
    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 639
    .end local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v19    # "currCount":I
    .restart local v22    # "firstLoadCount":I
    .restart local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 706
    .end local v19    # "currCount":I
    .end local v22    # "firstLoadCount":I
    .end local v30    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    :cond_12
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_13

    .line 707
    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 716
    .end local v7    # "i":I
    .end local v9    # "itemRealCount":I
    .end local v10    # "j":I
    .end local v25    # "itemShowCount":I
    .end local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v28    # "mediaSetCount":I
    :catchall_3
    move-exception v4

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4

    .line 709
    .restart local v7    # "i":I
    .restart local v9    # "itemRealCount":I
    .restart local v10    # "j":I
    .restart local v25    # "itemShowCount":I
    .restart local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v28    # "mediaSetCount":I
    :cond_13
    :try_start_b
    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 691
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    .line 714
    .end local v7    # "i":I
    .end local v9    # "itemRealCount":I
    .end local v10    # "j":I
    .end local v25    # "itemShowCount":I
    .end local v26    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v27    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_15
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->size:I

    .line 716
    .end local v28    # "mediaSetCount":I
    :cond_16
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaItemUpdateContent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-object/from16 v0, v23

    invoke-direct {v5, v6, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaItemUpdateContent;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;)V

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 718
    # ++operator for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTimes:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->access$1604()I

    goto/16 :goto_0

    .line 720
    .end local v20    # "duration":J
    .end local v23    # "info":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
    .end local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .end local v32    # "start":J
    .end local v34    # "version":J
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 721
    return-void

    .line 675
    .restart local v20    # "duration":J
    .restart local v23    # "info":Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
    .restart local v29    # "mediaSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    .restart local v32    # "start":J
    .restart local v34    # "version":J
    :catchall_4
    move-exception v4

    goto/16 :goto_4
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 730
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
