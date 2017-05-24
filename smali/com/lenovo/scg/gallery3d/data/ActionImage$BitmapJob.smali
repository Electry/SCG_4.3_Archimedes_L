.class Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;
.super Ljava/lang/Object;
.source "ActionImage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/ActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/ActionImage;


# direct methods
.method protected constructor <init>(Lcom/lenovo/scg/gallery3d/data/ActionImage;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/ActionImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->mType:I

    .line 61
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v4, 0x1

    .line 65
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->mType:I

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 66
    .local v1, "targetSize":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/ActionImage;

    # getter for: Lcom/lenovo/scg/gallery3d/data/ActionImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/ActionImage;->access$000(Lcom/lenovo/scg/gallery3d/data/ActionImage;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/ActionImage;

    # getter for: Lcom/lenovo/scg/gallery3d/data/ActionImage;->mResourceId:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/ActionImage;->access$100(Lcom/lenovo/scg/gallery3d/data/ActionImage;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 69
    invoke-static {v0, v1, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/ActionImage$BitmapJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
