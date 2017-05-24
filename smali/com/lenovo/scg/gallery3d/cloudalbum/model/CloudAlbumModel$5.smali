.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;
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
    .line 577
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 582
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "userId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 584
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;->getPhotoStorage(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v9

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 593
    :try_start_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedPhotoStg:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mSharedAlbumUrl:Ljava/lang/String;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->getInfoByAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$702(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;

    .line 594
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    .line 595
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 596
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "outsideList.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 598
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 600
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 601
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 602
    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 603
    .local v3, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "photoId":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "photoName":Ljava/lang/String;
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "photoName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "bigThumbUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 608
    .local v6, "smallThumbUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmOutsidePhotoInfo(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;)V

    .line 609
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getOutsideSize()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setSize(J)V

    .line 610
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 612
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 613
    const-string v9, "HWJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "outsideList.get(i).getAlbumName() = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl640()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 620
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mOutsideList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThubmUrl200()Ljava/lang/String;

    move-result-object v6

    .line 621
    invoke-virtual {v3, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 623
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhotosList.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v8, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhotosList.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v8, :cond_2

    .line 627
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onLoadingDataFinished(Ljava/util/List;IIZ)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 600
    .end local v0    # "bigThumbUrl":Ljava/lang/String;
    .end local v3    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v4    # "photoId":Ljava/lang/String;
    .end local v5    # "photoName":Ljava/lang/String;
    .end local v6    # "smallThumbUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 586
    .end local v2    # "i":I
    .end local v7    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 588
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    .line 638
    .end local v1    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_3
    :goto_1
    return-void

    .line 632
    .restart local v7    # "userId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 633
    .restart local v1    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    .line 634
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    goto :goto_1
.end method
