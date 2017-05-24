.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

.field private cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

.field private height:I

.field private final max:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .param p2, "engine"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xa00

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->max:I

    .line 28
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    .line 29
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 34
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 36
    return-void
.end method

.method private HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa00

    .line 110
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->readBitmapFromUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    .line 114
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->needCompression()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string v1, "WYJ"

    const-string v2, "Start compression file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    if-le v1, v3, :cond_2

    .line 117
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    if-le v1, v2, :cond_3

    .line 118
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    .line 119
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    .line 124
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    if-lez v1, :cond_2

    .line 125
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    :cond_2
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    .line 122
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    goto :goto_1
.end method


# virtual methods
.method public getCloudPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 49
    :try_start_0
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncTask run , filePath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 51
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v23, "file":Ljava/io/File;
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v2

    .line 53
    .local v2, "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v11

    .line 54
    .local v11, "count":I
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "crcKey":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 57
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    int-to-long v4, v7

    .line 58
    .local v4, "size":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-eqz v7, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 61
    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->height:I

    invoke-interface/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->addPhoto(Ljava/lang/String;JLjava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v24

    .line 62
    .local v24, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    if-eqz v24, :cond_3

    .line 63
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/16 v17, 0x0

    .line 65
    .local v17, "bigThumbUrl":Ljava/lang/String;
    const/16 v16, 0x0

    .line 67
    .local v16, "smallThumbUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoWidth(I)V

    .line 70
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoHeight(I)V

    .line 71
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 75
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    move-object/from16 v0, v24

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v25

    .line 76
    .local v25, "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-eqz v25, :cond_1

    .line 77
    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 79
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 81
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    move-object/from16 v0, v24

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v25

    .line 82
    if-eqz v25, :cond_2

    .line 83
    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->cloudPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToImageTable(Ljava/lang/String;J)V

    .line 87
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getSize()J

    move-result-wide v20

    invoke-virtual/range {v12 .. v21}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 88
    if-gtz v11, :cond_4

    .line 89
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v11, 0x1

    int-to-long v12, v9

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v12, v13, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updateAlbumInfoDB(Ljava/lang/String;JLjava/lang/String;)Z

    .line 94
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v16    # "smallThumbUrl":Ljava/lang/String;
    .end local v17    # "bigThumbUrl":Ljava/lang/String;
    .end local v25    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 107
    .end local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "crcKey":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v23    # "file":Ljava/io/File;
    .end local v24    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    :goto_1
    return-void

    .line 91
    .restart local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "size":J
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "crcKey":Ljava/lang/String;
    .restart local v11    # "count":I
    .restart local v16    # "smallThumbUrl":Ljava/lang/String;
    .restart local v17    # "bigThumbUrl":Ljava/lang/String;
    .restart local v23    # "file":Ljava/io/File;
    .restart local v24    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .restart local v25    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v11, 0x1

    int-to-long v12, v9

    invoke-virtual {v7, v8, v12, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoCountDB(Ljava/lang/String;J)Z
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "crcKey":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v16    # "smallThumbUrl":Ljava/lang/String;
    .end local v17    # "bigThumbUrl":Ljava/lang/String;
    .end local v23    # "file":Ljava/io/File;
    .end local v24    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .end local v25    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :catch_0
    move-exception v22

    .line 97
    .local v22, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :try_start_2
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncTask run ,LcpPhotoException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto :goto_1

    .line 98
    .end local v22    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :catch_1
    move-exception v22

    .line 99
    .local v22, "e":Ljava/io/IOException;
    :try_start_3
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncTask run ,IOException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto :goto_1

    .line 100
    .end local v22    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v22

    .line 101
    .local v22, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :try_start_4
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncTask run ,BusinessException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto :goto_1

    .line 102
    .end local v22    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_3
    move-exception v22

    .line 103
    .local v22, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncTask run ,Exception:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto/16 :goto_1

    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v8

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    throw v7
.end method
