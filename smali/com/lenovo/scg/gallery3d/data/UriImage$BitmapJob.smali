.class Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/UriImage;
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

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/lenovo/scg/gallery3d/data/UriImage;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 277
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 279
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string/jumbo v5, "pool_uriimage_bitmapjob"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    # invokes: Lcom/lenovo/scg/gallery3d/data/UriImage;->prepareInputFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$100(Lcom/lenovo/scg/gallery3d/data/UriImage;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 301
    :goto_0
    return-object v0

    .line 287
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 288
    .local v2, "targetSize":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 289
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 290
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    # getter for: Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$200(Lcom/lenovo/scg/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {p1, v4, v1, v2, v5}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    .line 293
    goto :goto_0

    .line 296
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 297
    invoke-static {v0, v2, v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_3
    invoke-static {v0, v2, v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
