.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;
.super Ljava/lang/Thread;
.source "WeiboHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setPhoto(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_1

    .line 787
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ILjava/lang/Object;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 793
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 794
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 796
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 798
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ILjava/lang/Object;)V

    goto :goto_0
.end method
