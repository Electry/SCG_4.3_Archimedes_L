.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;
.super Ljava/lang/Object;
.source "DownLoaderAlbumTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ablumId:Ljava/lang/String;

.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 0
    .param p1, "ablumId"    # Ljava/lang/String;
    .param p2, "engine"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->ablumId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 22
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->ablumId:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "cloudPhoto_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :try_start_0
    sget-object v10, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->ablumId:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v3

    .line 34
    .local v3, "curAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    const/4 v10, 0x0

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v11

    invoke-interface {v3, v10, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotos(II)Ljava/util/List;

    move-result-object v8

    .line 36
    .local v8, "photo_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    .line 37
    .local v6, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 38
    .local v1, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    const/4 v0, 0x0

    .line 39
    .local v0, "bigThumbUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 41
    .local v9, "smallThumbUrl":Ljava/lang/String;
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 42
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 43
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getWidth()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoWidth(I)V

    .line 44
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getHeight()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoHeight(I)V

    .line 45
    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 46
    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 47
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 48
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getSize()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setSize(J)V

    .line 50
    sget v10, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    sget v11, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    invoke-interface {v6, v10, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v7

    .line 51
    .local v7, "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-eqz v7, :cond_0

    .line 52
    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 56
    sget v10, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    sget v11, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    invoke-interface {v6, v10, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 60
    :cond_1
    invoke-virtual {v1, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "bigThumbUrl":Ljava/lang/String;
    .end local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v3    # "curAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .end local v7    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    .end local v8    # "photo_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;>;"
    .end local v9    # "smallThumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "WYJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownLoaderAlbumTask run ,Exception:e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v10, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadAlbumList(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;Ljava/util/List;)V

    .line 67
    return-void
.end method
