.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;
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
    .line 393
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "albumOutsideUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 399
    .local v1, "curAlbum":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    if-eqz v3, :cond_0

    .line 401
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 411
    if-eqz v1, :cond_0

    .line 413
    :try_start_1
    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getOutsideUrl()Ljava/lang/String;
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 419
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "albumOutsideUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v3, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onGetOutsideUrlFinished(Ljava/lang/String;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 404
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 407
    .local v2, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 408
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v2    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :catch_2
    move-exception v2

    .line 415
    .local v2, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 416
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_0
.end method
