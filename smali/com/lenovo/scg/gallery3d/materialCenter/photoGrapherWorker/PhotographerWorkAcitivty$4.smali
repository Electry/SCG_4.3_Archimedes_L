.class Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;
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
    .line 618
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 623
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTaskDone-----------resultType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",objData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-ne p1, v6, :cond_0

    .line 625
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v2, p2

    check-cast v2, [B

    .line 626
    .local v2, "data":[B
    if-eqz v2, :cond_0

    move-object v4, p3

    .line 627
    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 628
    .local v4, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const/4 v6, 0x0

    array-length v7, v2

    const/4 v8, 0x1

    invoke-static {v2, v6, v7, v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 629
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 631
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->isPhotoGrapherPhoto()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 632
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-static {v6, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1202(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 633
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 634
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "filename":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-static {v6, v0, v3}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->writeTofiles(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 650
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 636
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "data":[B
    .restart local v4    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 637
    .restart local v5    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "info"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 639
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 640
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
