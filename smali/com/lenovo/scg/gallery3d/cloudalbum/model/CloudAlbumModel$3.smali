.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;
.super Ljava/lang/Object;
.source "CloudAlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, "photoOutsideUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 445
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSelectPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getOutsideUrl()Ljava/lang/String;

    move-result-object v2

    .line 450
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photoOutsideUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v1    # "i":I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onGetOutsideUrlFinished(Ljava/lang/String;)V

    .line 479
    :cond_1
    :goto_2
    return-void

    .line 446
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 458
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 459
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSelectPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 462
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getOutsideUrl()Ljava/lang/String;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 468
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photoOutsideUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 465
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto/16 :goto_2

    .line 458
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
