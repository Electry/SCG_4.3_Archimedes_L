.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;
.super Ljava/lang/Object;
.source "UpLoaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final max:I = 0xa00


# instance fields
.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

.field private height:I

.field private mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

.field private mFinished:Z

.field private mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

.field private mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .param p2, "engine"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    .line 33
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mFinished:Z

    .line 53
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 37
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 38
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 39
    return-void
.end method

.method private HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa00

    .line 163
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->readBitmapFromUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    .line 166
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->needCompression()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "WYJ"

    const-string v2, "Start compression file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    if-le v1, v3, :cond_1

    .line 169
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    if-le v1, v2, :cond_2

    .line 170
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    .line 171
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    .line 176
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    if-lez v1, :cond_1

    .line 177
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    :cond_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 173
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    .line 174
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->waitIfPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    return-object v0
.end method

.method private waitIfPaused()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->getUploadPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 186
    .local v1, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-nez v1, :cond_0

    .line 197
    :goto_0
    return v2

    .line 187
    :cond_0
    monitor-enter v1

    .line 188
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 197
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "WYJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpLoaderTask waiting ,InterruptedException:e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v1

    goto :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public getCloudPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 27

    .prologue
    .line 83
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mFinished:Z

    if-nez v7, :cond_7

    .line 85
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->waitIfPaused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    :goto_1
    return-void

    .line 86
    :cond_1
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v2

    .line 87
    .local v2, "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v11

    .line 88
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v24

    .line 89
    .local v24, "path":Ljava/lang/String;
    const-string v7, "/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "crcKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 92
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    int-to-long v4, v7

    .line 93
    .local v4, "size":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUpdateUploadMaxSize(J)V

    .line 95
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mPath:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-virtual {v7, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 106
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->height:I

    invoke-interface/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->addPhoto(Ljava/lang/String;JLjava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v25

    .line 107
    .local v25, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    if-eqz v25, :cond_0

    .line 108
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 110
    const/16 v17, 0x0

    .line 111
    .local v17, "bigThumbUrl":Ljava/lang/String;
    const/16 v16, 0x0

    .line 113
    .local v16, "smallThumbUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoWidth(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoHeight(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 121
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    move-object/from16 v0, v25

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v26

    .line 122
    .local v26, "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-eqz v26, :cond_3

    .line 123
    invoke-interface/range {v26 .. v26}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 127
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    move-object/from16 v0, v25

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v26

    .line 128
    if-eqz v26, :cond_4

    .line 129
    invoke-interface/range {v26 .. v26}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 131
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mCloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToImageTable(Ljava/lang/String;J)V

    .line 133
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getSize()J

    move-result-wide v20

    invoke-virtual/range {v12 .. v21}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 134
    if-gtz v11, :cond_5

    .line 135
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v11, 0x1

    int-to-long v12, v9

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v12, v13, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updateAlbumInfoDB(Ljava/lang/String;JLjava/lang/String;)Z

    .line 139
    :goto_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 140
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V

    .line 141
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mFinished:Z
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 143
    .end local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "crcKey":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v16    # "smallThumbUrl":Ljava/lang/String;
    .end local v17    # "bigThumbUrl":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .end local v26    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :catch_0
    move-exception v22

    .line 144
    .local v22, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpLoaderTask run ,LcpPhotoException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->getRootCauseException()Ljava/lang/Throwable;

    move-result-object v23

    .line 146
    .local v23, "exception":Ljava/lang/Throwable;
    move-object/from16 v0, v23

    instance-of v7, v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    if-eqz v7, :cond_6

    check-cast v23, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    .end local v23    # "exception":Ljava/lang/Throwable;
    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->getErrorCode()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause(I)V

    goto/16 :goto_0

    .line 137
    .end local v22    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    .restart local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "size":J
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "crcKey":Ljava/lang/String;
    .restart local v11    # "count":I
    .restart local v16    # "smallThumbUrl":Ljava/lang/String;
    .restart local v17    # "bigThumbUrl":Ljava/lang/String;
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .restart local v26    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :cond_5
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

    goto :goto_2

    .line 151
    .end local v2    # "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "crcKey":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v16    # "smallThumbUrl":Ljava/lang/String;
    .end local v17    # "bigThumbUrl":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .end local v26    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    :catch_1
    move-exception v22

    .line 152
    .local v22, "e":Ljava/io/IOException;
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpLoaderTask run ,IOException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause(I)V

    goto/16 :goto_0

    .line 149
    .local v22, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause(I)V

    goto/16 :goto_0

    .line 154
    .end local v22    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :catch_2
    move-exception v22

    .line 155
    .local v22, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpLoaderTask run ,BusinessException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause(I)V

    goto/16 :goto_0

    .line 159
    .end local v22    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->mFinished:Z

    goto/16 :goto_1
.end method
