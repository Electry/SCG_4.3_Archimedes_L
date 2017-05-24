.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;
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
    .line 378
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    .line 382
    const/4 v5, 0x0

    .line 383
    .local v5, "photosOutsideUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 384
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v3, "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 387
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 388
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 389
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;-><init>()V

    .line 391
    .local v4, "photoInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setAlbumName(Ljava/lang/String;)V

    .line 392
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setPhotoName(Ljava/lang/String;)V

    .line 393
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setId(Ljava/lang/String;)V

    .line 394
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl144()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl144(Ljava/lang/String;)V

    .line 395
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl200(Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl640()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->setThubmUrl640(Ljava/lang/String;)V

    .line 397
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v4    # "photoInfo":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 387
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 404
    .end local v2    # "j":I
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 406
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->getAlbumOutsideByList(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 412
    :cond_3
    :goto_2
    const-string v6, "HWJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "photosOutsideUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1    # "i":I
    .end local v3    # "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v6, :cond_5

    .line 426
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    invoke-interface {v6, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onGetOutsideUrlFinished(Ljava/lang/String;)V

    .line 428
    :cond_5
    return-void

    .line 407
    .restart local v1    # "i":I
    .restart local v3    # "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 409
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_2

    .line 415
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    .end local v1    # "i":I
    .end local v3    # "outsideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;>;"
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 417
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurAlbum:Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotoIds:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-interface {v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getOutsideUrl(Ljava/util/List;I)Ljava/lang/String;
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 422
    :goto_4
    const-string v6, "HWJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "photosOutsideUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 418
    :catch_1
    move-exception v0

    .line 419
    .restart local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 420
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_4
.end method
