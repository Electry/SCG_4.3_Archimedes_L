.class Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;
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
    .line 500
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 504
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 505
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 506
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 507
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 508
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 510
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->delete()Z

    .line 511
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbums:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 513
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v6, :cond_4

    .line 514
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 515
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryAllAlbumFromDB()Landroid/database/Cursor;

    move-result-object v1

    .line 516
    .local v1, "albumSetCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 518
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->delAlbumDataFromDB(Ljava/lang/String;)Z

    .line 521
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 522
    const/4 v1, 0x0

    .line 525
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryPhotoByAlbum(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 526
    .local v0, "albumCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 527
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->delPhotoByAlbumId(Ljava/lang/String;)Z

    .line 530
    :cond_2
    if-eqz v0, :cond_3

    .line 531
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 532
    const/4 v0, 0x0

    .line 535
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v0    # "albumCursor":Landroid/database/Cursor;
    .end local v1    # "albumSetCursor":Landroid/database/Cursor;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 546
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 547
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mDelAlbumIds:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 549
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 505
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 537
    .restart local v4    # "j":I
    :catch_0
    move-exception v2

    .line 538
    .local v2, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->throwErrorInfo(I)V

    .line 539
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->printStackTrace()V

    .line 561
    .end local v2    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_6
    :goto_3
    return-void

    .line 507
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 546
    .restart local v5    # "k":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 557
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_9
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    if-eqz v6, :cond_6

    .line 558
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mModelChangedListener:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->mAlbumsList:Ljava/util/List;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;->onDeleteFinished(Ljava/util/List;I)V

    goto :goto_3
.end method
