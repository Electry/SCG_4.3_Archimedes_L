.class public Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;J)V
    .locals 9
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "type"    # I
    .param p4, "localFilePath"    # Ljava/lang/String;
    .param p5, "dateModifiedInSec"    # J

    .prologue
    .line 211
    invoke-static {p3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;IIJ)V

    .line 213
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p2, "type"    # I

    .prologue
    .line 219
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 220
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 221
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 222
    .local v1, "targetSize":I
    const-string/jumbo v2, "wwf6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDecodeOriginal targetSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
