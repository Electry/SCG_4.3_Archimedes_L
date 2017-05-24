.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;
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
    .line 493
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 497
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_0

    .line 498
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 501
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 502
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoInfoDB(Ljava/lang/String;)Z

    .line 504
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 505
    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 507
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    sget-object v5, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1102(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;Ljava/util/List;)Ljava/util/List;

    .line 509
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 510
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 511
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 514
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    invoke-interface {v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->delete()Z

    .line 515
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCloudPhotoList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 516
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_3

    .line 517
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->delPhotoDataFromDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v2    # "j":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 529
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 530
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDelPhotoIds:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 531
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 535
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 536
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_5

    .line 537
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoInfoDB(Ljava/lang/String;)Z

    .line 504
    .end local v3    # "k":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 519
    .restart local v2    # "j":I
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->throwErrorInfo(I)V

    .line 521
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    .line 558
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_6
    :goto_3
    return-void

    .line 510
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 529
    .end local v2    # "j":I
    .restart local v3    # "k":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 543
    .end local v3    # "k":I
    :cond_9
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v4, :cond_a

    .line 544
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 545
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 546
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v5, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v8, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v8, v9, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updateAlbumInfoDB(Ljava/lang/String;JLjava/lang/String;)Z

    .line 553
    :cond_a
    :goto_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 554
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v4, :cond_6

    .line 555
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mPhotosList:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onDeleteFinished(Ljava/util/List;I)V

    goto :goto_3

    .line 549
    :cond_b
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->mCurClickAlbumId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoInfoDB(Ljava/lang/String;)Z

    goto :goto_4
.end method
