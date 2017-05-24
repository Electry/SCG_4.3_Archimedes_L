.class public Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;
.super Ljava/lang/Object;
.source "ImageRequestJob.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRequestJob"

.field private static final THREAD_POOL_NAME_IMAGEQUESTJOB:Ljava/lang/String; = "pool_imagerequestjob"


# instance fields
.field private mChildname:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "targetSize"    # I
    .param p4, "childname"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "ImageRequestJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",childname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mPath:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mChildname:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mLock:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v3, "pool_imagerequestjob"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mChildname:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mPath:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 74
    :goto_0
    return-object v2

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 68
    .local v1, "bytes":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 69
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mChildname:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 70
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
