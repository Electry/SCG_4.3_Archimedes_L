.class Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;
.super Ljava/lang/Object;
.source "ImageViewGrid.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

.field final synthetic val$childname:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$childname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 662
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$childname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 664
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$childname:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$childname:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->resetFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
