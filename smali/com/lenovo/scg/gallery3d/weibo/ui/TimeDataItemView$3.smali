.class Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;
.super Ljava/lang/Object;
.source "TimeDataItemView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
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
    .line 842
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$childname:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$imgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 846
    if-eqz p1, :cond_1

    .line 848
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$childname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheHead(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 849
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$childname:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$imgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 855
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->sendMessage(Landroid/os/Message;)Z

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$childname:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;->val$imgView:Landroid/widget/ImageView;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
