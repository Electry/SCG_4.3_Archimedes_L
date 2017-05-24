.class Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 212
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    .line 213
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
