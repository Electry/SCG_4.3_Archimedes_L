.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;
.super Ljava/lang/Object;
.source "ViewPagerActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBigPicDoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const v5, 0x10002

    const v6, 0x10001

    .line 859
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v3, :cond_0

    .line 860
    const-string v3, "get user head pic failed"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 900
    .end local p2    # "objData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 866
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 867
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 868
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 872
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->stopProgressBar(Landroid/widget/ProgressBar;)V

    .line 874
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v1

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 875
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 876
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1202(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 877
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1302(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 878
    const-string v3, "WANGDIYUAN"

    const-string v4, "get big pic done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v3, "WANGDIYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "middle W : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " middle H : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v3, "WANGDIYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "big W : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " big H : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 888
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->updateBitmap(Landroid/graphics/Bitmap;I)V

    .line 890
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const v4, 0x40001

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 893
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ViewPagerActivity ERROR "

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const v4, 0x10002

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v3
.end method
