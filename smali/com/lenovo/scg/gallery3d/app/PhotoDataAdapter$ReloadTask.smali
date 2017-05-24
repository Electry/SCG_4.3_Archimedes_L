.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1143
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1145
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1147
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 4
    .param p1, "info"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .prologue
    .line 1301
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1302
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget v2, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 1303
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfPathInCache(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 6
    .param p1, "info"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v4, -0x1

    .line 1348
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1349
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1350
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 1351
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v1, :cond_1

    .line 1356
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_0
    :goto_1
    return v4

    .line 1352
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    if-ne v5, p2, :cond_2

    .line 1353
    iget v4, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v4, v0

    goto :goto_1

    .line 1349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findIndexOfTarget(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 11
    .param p1, "info"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 1307
    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "/snail"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v7

    .line 1343
    :cond_0
    :goto_0
    return v1

    .line 1310
    :cond_1
    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    if-nez v6, :cond_2

    .line 1311
    iget v1, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    goto :goto_0

    .line 1315
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1316
    .local v4, "start":J
    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    if-nez v6, :cond_3

    iget v1, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    goto :goto_0

    .line 1317
    :cond_3
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1319
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    if-eqz v2, :cond_4

    .line 1320
    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-direct {p0, p1, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v1

    .line 1321
    .local v1, "i":I
    if-ne v1, v8, :cond_0

    .line 1327
    .end local v1    # "i":I
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-ltz v6, :cond_7

    .line 1328
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    iget v9, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    const/16 v10, 0x64

    invoke-virtual {v6, v9, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 1329
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 1330
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    iget-object v9, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v6, v9, :cond_5

    .line 1331
    iget v6, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 1329
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v8

    .line 1334
    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v9, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    iget v10, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v6, v9, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "findIndexOfTarget error: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v6, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v8

    .line 1343
    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

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
    .line 1291
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1292
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    monitor-exit p0

    return-void

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 1159
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 1160
    monitor-enter p0

    .line 1161
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1162
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1163
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1164
    monitor-exit p0

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1168
    const/16 v16, 0x0

    :try_start_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    new-instance v18, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1170
    .local v8, "info":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1171
    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2600()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1172
    const/16 v16, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2602(Z)Z

    .line 1173
    sget-object v16, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    if-eqz v16, :cond_1

    .line 1174
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    const/16 v19, 0x0

    sget-object v20, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mBucketId:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2700()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, "}}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    .line 1178
    :cond_1
    sget-object v16, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v16

    sget-object v18, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 1179
    .local v10, "mMediaSet":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v0, v10}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2902(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaSet;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 1184
    .end local v10    # "mMediaSet":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 1185
    sget-object v16, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 1186
    .local v11, "mediaSet":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v0, v11}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2902(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaSet;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3002(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .end local v11    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1193
    .local v12, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v14

    .line 1194
    .local v14, "version":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1195
    .local v4, "end":J
    const-string/jumbo v16, "wwf5"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PhotoDataAdapter reload = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v4, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-wide v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    move-wide/from16 v18, v0

    cmp-long v16, v18, v14

    if-eqz v16, :cond_4

    .line 1197
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1200
    :cond_4
    iget-boolean v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    monitor-exit v17

    goto/16 :goto_0

    .line 1285
    .end local v4    # "end":J
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .end local v12    # "start":J
    .end local v14    # "version":J
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v16

    .line 1203
    .restart local v4    # "end":J
    .restart local v8    # "info":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .restart local v12    # "start":J
    .restart local v14    # "version":J
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isHaveCamera()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mInitOk:Z
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1206
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_6

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mInitOk:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3102(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Z)Z

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 1217
    :cond_6
    :goto_1
    const/4 v7, -0x1

    .line 1219
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1220
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1224
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3300(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3300(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v7

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3302(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1230
    :cond_8
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_a

    .line 1231
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v9

    .line 1232
    .local v9, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1233
    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1236
    :cond_9
    iget v7, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1250
    .end local v9    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_a
    :goto_2
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_c

    .line 1251
    iget v7, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    .line 1253
    .local v6, "focusHintDirection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$3500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_b

    .line 1254
    const/4 v6, 0x0

    .line 1256
    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_c

    if-lez v7, :cond_c

    .line 1257
    add-int/lit8 v7, v7, -0x1

    .line 1278
    .end local v6    # "focusHintDirection":I
    :cond_c
    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    move/from16 v16, v0

    if-lez v16, :cond_e

    .line 1279
    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_d

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    move/from16 v16, v0

    add-int/lit8 v7, v16, -0x1

    .line 1280
    :cond_d
    iput v7, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$1402(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;I)I

    .line 1284
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    new-instance v18, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateContent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1285
    monitor-exit v17

    goto/16 :goto_0

    .line 1211
    .end local v7    # "index":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    move/from16 v18, v0

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    move/from16 v19, v0

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1214
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v16

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    move/from16 v18, v0

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    move/from16 v19, v0

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1238
    .restart local v7    # "index":I
    .restart local v9    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_11
    const-string/jumbo v16, "wwf5"

    const-string v18, "findIndexOfTarget start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v7

    .line 1240
    const-string/jumbo v16, "wwf5"

    const-string v18, "findIndexOfTarget end"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 1288
    .end local v4    # "end":J
    .end local v7    # "index":I
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .end local v9    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v12    # "start":J
    .end local v14    # "version":J
    :cond_12
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 1296
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1297
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    monitor-exit p0

    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
