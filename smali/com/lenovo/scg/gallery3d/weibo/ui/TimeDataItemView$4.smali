.class Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;
.super Ljava/lang/Object;
.source "TimeDataItemView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

.field final synthetic val$childname:Ljava/lang/String;

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$imgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 882
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 883
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    sget-object v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v5, :cond_0

    .line 884
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v5, "TimeDataItemView.loadImageFromNet onTaskDone get bitmap error,result=%s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    .end local p2    # "objData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 889
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 890
    .local v1, "bytes":[B
    if-eqz v1, :cond_1

    array-length v5, v1

    if-gtz v5, :cond_2

    .line 891
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v5, "TimeDataItemView.loadImageFromNet onTaskDone get bitmap error,byte[] is empty"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 896
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, "sType":Ljava/lang/String;
    array-length v5, v1

    invoke-static {v1, v8, v5, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 901
    if-nez v0, :cond_4

    .line 902
    const-string v5, "TimeDataItemView.loadImageFromNet decodeByteArray to bitmap error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    const-string v5, "load head pic from net failed: type=%s name=%s url=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    :goto_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheHead(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 910
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$imgView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 913
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 916
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 917
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 907
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    const-string v5, "load head pic from net success name=%s url=%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$childname:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;->val$url:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
