.class Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;
.super Ljava/lang/Object;
.source "ImageViewGrid.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

.field final synthetic val$childname:Ljava/lang/String;

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 730
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 731
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v6, :cond_0

    .line 732
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 739
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 740
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    const-string v6, "ImageViewGrid.loadImageFromNet onTaskDone get bitmap error or canceled,result=%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    .end local p2    # "objData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 745
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "msg":Landroid/os/Message;
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 746
    .local v1, "bytes":[B
    if-eqz v1, :cond_1

    array-length v6, v1

    if-gtz v6, :cond_2

    .line 747
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 754
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 755
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    const-string v6, "ImageViewGrid.loadImageFromNet onTaskDone get bitmap error,byte[] is empty"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 760
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v1, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 762
    const/4 v0, 0x0

    .line 763
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, "sType":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v1

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 775
    :goto_1
    if-nez v0, :cond_4

    .line 776
    const-string v6, "ImageViewGrid.loadImageFromNet decodeByteArray to bitmap error"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    const-string v6, "load pic from net failed: type=%s name=%s url=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v10

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 782
    :goto_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 783
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 787
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 790
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 791
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 768
    .end local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 769
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "decode byte OutOfMemoryError error:%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 771
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 772
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "decode byte error:%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 780
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "load from net success name=%s url=%s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$childname:Ljava/lang/String;

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$3;->val$url:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
