.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;
.super Ljava/lang/Object;
.source "DownLoaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

.field private mFinished:Z

.field private mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 1
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p2, "engine"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mFinished:Z

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 24
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->waitIfPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    return-object v0
.end method

.method private waitIfPaused()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->getDownloadPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 101
    .local v1, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-nez v1, :cond_0

    .line 112
    :goto_0
    return v2

    .line 102
    :cond_0
    monitor-enter v1

    .line 103
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 112
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "WYJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownLoaderTask waiting ,InterruptedException:e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v1

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmBigThumbUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObj()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 63
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mFinished:Z

    if-nez v6, :cond_7

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->waitIfPaused()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    :goto_1
    return-void

    .line 66
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmOutsidePhotoInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    move v3, v7

    .line 67
    .local v3, "isFromShared":Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->getCloudPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_5

    const-string v6, "CloudPicFromShare"

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->deleteContent(Ljava/io/File;)I

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 73
    :cond_2
    if-eqz v3, :cond_6

    .line 74
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmOutsidePhotoInfo()Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    move-result-object v6

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v6, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getData(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->writeFile(Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v1

    .line 82
    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 84
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoByPhotoId(Ljava/lang/String;I)Z

    .line 85
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 86
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    .line 87
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->saveBucketId2Db(Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V

    .line 89
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "isFromShared":Z
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WYJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownLoaderTask run ,Exception:e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadPause()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    move v3, v8

    .line 66
    goto/16 :goto_2

    .line 67
    .restart local v3    # "isFromShared":Z
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 76
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "photoIdsArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->cloudPhoto:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v6, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    invoke-interface {v6, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->getPhotoByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "photosArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 80
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v6, v9}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getData(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->writeFile(Ljava/lang/String;[B)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_4

    .line 96
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "isFromShared":Z
    .end local v4    # "photoIdsArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "photosArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    :cond_7
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->mFinished:Z

    goto/16 :goto_1
.end method
