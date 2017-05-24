.class Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;
.super Landroid/os/Handler;
.source "PhotographerWorkAcitivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 502
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 504
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mErrorView:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->updatePhotoGrapherDetailsViews()V
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    goto :goto_0

    .line 513
    :pswitch_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherDetails()Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "photoGrapherDetails":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 515
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 517
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mErrorView:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 522
    .end local v6    # "photoGrapherDetails":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 523
    .local v2, "data":Landroid/os/Bundle;
    const-string v10, "info"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 524
    .local v4, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const-string v10, "jiaxiaowei"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-------LOAD_WEB_IMAGE_DONE---------info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, "sort":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getGridView(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    move-result-object v3

    .line 527
    .local v3, "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    const-string v10, "jiaxiaowei"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "===================sort:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",gridView:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 529
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    .line 530
    .local v0, "adapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v0, v10, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->addBitmap(Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;)V

    goto/16 :goto_0

    .line 534
    .end local v0    # "adapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    .end local v4    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v9    # "sort":Ljava/lang/String;
    :pswitch_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhoto:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 535
    const-string v10, "jiaxiaowei"

    const-string v11, "---------------------handler  LOAD_PHOTO_GRAPHER_PHOTO_DONE"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v10, "jiaxiaowei"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPhotoGrapherPhotoInfo.getBitmap():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhoto:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhoto:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    .line 542
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 543
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "info"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 544
    .local v7, "photoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const-string/jumbo v10, "save"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 545
    .local v8, "saveSuccess":Z
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz v7, :cond_0

    .line 546
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getOriBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 547
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setSinglePhotoPageTitle(Ljava/lang/String;)V

    .line 548
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setSaveSuccess(Z)V

    .line 549
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hideProgressBar()V

    goto/16 :goto_0

    .line 553
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v8    # "saveSuccess":Z
    :pswitch_5
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 554
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hideProgressBar()V

    goto/16 :goto_0

    .line 558
    :pswitch_6
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)I

    move-result v10

    const/16 v11, 0x5a

    if-ge v10, v11, :cond_1

    .line 559
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)I

    move-result v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mProgressRandom:Ljava/util/Random;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1500(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/util/Random;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v11, v12

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I
    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1402(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;I)I

    .line 561
    :cond_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ProgressBar;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 562
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x7

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 565
    :pswitch_7
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ProgressBar;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 566
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 569
    :pswitch_8
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    const-string v11, "low storage"

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 570
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hideProgressBar()V

    goto/16 :goto_0

    .line 573
    :pswitch_9
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    .line 574
    .local v5, "mPhotoGrapherDetailsLayoutHeight":I
    if-lez v5, :cond_2

    .line 575
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mActivityParentView:Landroid/widget/ScrollView;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ScrollView;

    move-result-object v10

    neg-int v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->setScrollY(I)V

    goto/16 :goto_0

    .line 577
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xa

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
