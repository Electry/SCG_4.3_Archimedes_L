.class public Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;
.super Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
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
    .line 169
    invoke-static {p3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;IIJ)V

    .line 171
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p2, "type"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 178
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
