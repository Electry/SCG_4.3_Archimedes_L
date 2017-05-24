.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;
.super Ljava/lang/Object;
.source "PhotoSyncPerformerForDistinctNfs.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->batchDownloadPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[BLcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;)V
    .locals 16
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B
    .param p3, "photoDownloader"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;

    .prologue
    .line 335
    move-object/from16 v0, p2

    array-length v8, v0

    .line 336
    .local v8, "photoLength":I
    int-to-long v10, v8

    const-wide/32 v12, 0x7d000

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 375
    :cond_0
    return-void

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    iget-object v10, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->pSid2CSidsList:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 341
    .local v3, "csids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 345
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 347
    .local v9, "sid":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v9, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 349
    .local v2, "cid":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_2

    .line 353
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->getOps()Ljava/util/ArrayList;

    move-result-object v5

    .line 354
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->getOpsTransactionCounter()J

    move-result-wide v6

    .line 355
    .local v6, "opsTransactionCounter":J
    int-to-long v12, v8

    add-long/2addr v12, v6

    const-wide/32 v14, 0x7d000

    cmp-long v10, v12, v14

    if-ltz v10, :cond_3

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->downloaderPool:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderPool;
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderPool;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 356
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    const-wide/16 v6, 0x0

    .line 363
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->photoSyncCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getSid2ServerAdlerMap()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p2

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->saveSinglePhoto(Ljava/util/List;Ljava/lang/Integer;[BLjava/lang/String;)V
    invoke-static {v12, v5, v2, v0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;Ljava/util/List;Ljava/lang/Integer;[BLjava/lang/String;)V

    .line 365
    int-to-long v12, v8

    add-long/2addr v6, v12

    .line 366
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->setOpsTransactionCounter(J)V

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->curRestorePortrait:I
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v10, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->curRestorePortrait:I
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    iget v13, v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->restorePortraitCount:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v10, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->notifyStepProgress(F)V
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 370
    .end local v2    # "cid":Ljava/lang/Integer;
    .end local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "opsTransactionCounter":J
    :catch_0
    move-exception v4

    .line 371
    .local v4, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    const/4 v12, 0x2

    invoke-static {v10, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;I)V

    goto/16 :goto_0

    .line 356
    .end local v4    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    .restart local v2    # "cid":Ljava/lang/Integer;
    .restart local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6    # "opsTransactionCounter":J
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_4 .. :try_end_4} :catch_0
.end method
