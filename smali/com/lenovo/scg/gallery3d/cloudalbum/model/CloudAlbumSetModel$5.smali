.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;
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
    .line 575
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 579
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 582
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 585
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumListFromDB:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v3, :cond_0

    .line 586
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 587
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updateAlbumNameDB(Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 590
    :cond_0
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNewAlbumName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 601
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 602
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mRenameAlbumID:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 603
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mNewAlbumName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmAlbumName(Ljava/lang/String;)V

    .line 609
    .end local v2    # "j":I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v3, :cond_3

    .line 610
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onRenameFinished(Ljava/util/List;)V

    .line 613
    :cond_3
    :goto_2
    return-void

    .line 591
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 593
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    goto :goto_2

    .line 581
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 601
    .end local v1    # "i":I
    .restart local v2    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
