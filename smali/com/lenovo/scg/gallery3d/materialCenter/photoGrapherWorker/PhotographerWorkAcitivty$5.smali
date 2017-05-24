.class Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;
.super Ljava/lang/Object;
.source "PhotographerWorkAcitivty.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


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
    .line 730
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 735
    const-string v9, "jiaxiaowei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGetTypeLargeImageListener onTaskDone-----------resultType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",objData:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object v9, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_4

    .line 737
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [B

    .line 738
    .local v4, "data":[B
    const-string v9, "download"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "image size    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v9, "download"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->startTime:J
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz v4, :cond_3

    array-length v9, v4

    if-eqz v9, :cond_3

    move-object/from16 v6, p3

    .line 741
    check-cast v6, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 742
    .local v6, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const/4 v9, 0x0

    array-length v10, v4

    const/4 v11, 0x2

    invoke-static {v4, v9, v10, v11}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 743
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const-string v9, "jiaxiaowei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGetTypeLargeImageListener   bmp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-eqz v2, :cond_2

    .line 745
    const-string v9, "jiaxiaowei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-largePhoto-------------------------------------bmp:--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v9

    int-to-long v10, v9

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->getAvailableSpace()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 778
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "data":[B
    .end local v6    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_0
    :goto_0
    return-void

    .line 750
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "data":[B
    .restart local v6    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-static {v9, v2, v5}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->writeTofiles(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v8

    .line 752
    .local v8, "saveSuccess":Z
    invoke-virtual {v6, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setOriBitmap(Landroid/graphics/Bitmap;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 754
    .local v7, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 755
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v9, "info"

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 756
    const-string/jumbo v9, "save"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 757
    invoke-virtual {v7, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 759
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v9

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->getPhotoUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhotoUri(Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v9

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhotoId(J)V

    goto/16 :goto_0

    .line 766
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "saveSuccess":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 767
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 770
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 771
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 774
    .end local v4    # "data":[B
    .end local v7    # "msg":Landroid/os/Message;
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 775
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
