.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;
.super Ljava/lang/Object;
.source "CloudAlbumSetModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 440
    const/4 v13, 0x0

    .line 442
    .local v13, "newAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    if-eqz v1, :cond_0

    .line 443
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v6

    const-string v14, ""

    const/4 v15, 0x0

    invoke-interface {v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->addAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/storage/photo/AlbumAux;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v13

    .line 446
    :cond_0
    if-eqz v13, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 450
    :cond_1
    invoke-interface {v13}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "albumId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getVersion()J

    move-result-wide v3

    .line 452
    .local v3, "albumVersion":J
    invoke-interface {v13}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "albumName":Ljava/lang/String;
    invoke-interface {v13}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v7

    .line 454
    .local v7, "photoCount":I
    invoke-interface {v13}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getSize()J

    move-result-wide v8

    .line 455
    .local v8, "albumSize":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    sget-object v6, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->allAlbums()Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v1, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;Ljava/util/List;)Ljava/util/List;

    .line 456
    new-instance v10, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;-><init>()V

    .line 457
    .local v10, "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v10, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumId(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v10, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumName(Ljava/lang/String;)V

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumCount(I)V

    .line 460
    invoke-virtual {v10, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPhotosCount(I)V

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPosterUri(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v10, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setSize(J)V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v1, :cond_2

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumSetTable(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmAlbumList(Ljava/util/List;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v1, :cond_3

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v6, v14, v15, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 487
    .end local v2    # "albumId":Ljava/lang/String;
    .end local v3    # "albumVersion":J
    .end local v5    # "albumName":Ljava/lang/String;
    .end local v7    # "photoCount":I
    .end local v8    # "albumSize":J
    .end local v10    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_3
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v11

    .line 475
    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 476
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v11    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 479
    .local v11, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 480
    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v11    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_2
    move-exception v12

    .line 483
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 484
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
