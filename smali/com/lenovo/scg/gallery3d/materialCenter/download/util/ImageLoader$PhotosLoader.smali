.class Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;
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
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p2, "photoToLoad"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    .line 155
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 160
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->stypeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "bmpOld":Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 162
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;->getHttpBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 163
    .local v4, "data":[B
    const/4 v2, 0x0

    .line 164
    .local v2, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "data":[B
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "data":[B
    :cond_1
    if-eqz v4, :cond_0

    .line 166
    const/4 v5, 0x0

    array-length v6, v4

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_0

    .line 169
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;)Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-direct {v1, v5, v2, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)V

    .line 172
    .local v1, "bd":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->stypeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 173
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 174
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 180
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bd":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "data":[B
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-direct {v1, v5, v3, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)V

    .line 182
    .restart local v1    # "bd":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;->photoToLoad:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 184
    .restart local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
