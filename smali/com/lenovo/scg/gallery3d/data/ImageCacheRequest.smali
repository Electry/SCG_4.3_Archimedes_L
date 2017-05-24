.class abstract Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

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
.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"

.field private static final THREAD_POOL_NAME_IMAGECACHEREQUEST:Ljava/lang/String; = "pool_imagecacherequest"


# instance fields
.field protected mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mModifyDate:J

.field private mPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;IIJ)V
    .locals 1
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "type"    # I
    .param p4, "targetSize"    # I
    .param p5, "modifyDate"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 58
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 59
    iput p3, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    .line 60
    iput p4, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 61
    iput-wide p5, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mModifyDate:J

    .line 62
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string/jumbo v5, "pool_imagecacherequest"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const-string v4, "THUMB"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, "debugTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

    move-result-object v3

    .line 80
    .local v3, "cacheService":Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->get()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v8

    .line 84
    .local v8, "buffer":Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mModifyDate:J

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->getImageData(Lcom/lenovo/scg/gallery3d/data/Path;IJLcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v16

    .line 86
    .local v16, "found":Z
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->recycle(Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 137
    :goto_1
    return-object v2

    .line 77
    .end local v3    # "cacheService":Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
    .end local v8    # "buffer":Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;
    .end local v15    # "debugTag":Ljava/lang/String;
    .end local v16    # "found":Z
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const-string v4, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v4, "?"

    goto :goto_0

    .line 87
    .restart local v3    # "cacheService":Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
    .restart local v8    # "buffer":Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;
    .restart local v15    # "debugTag":Ljava/lang/String;
    .restart local v16    # "found":Z
    :cond_2
    if-eqz v16, :cond_6

    .line 88
    :try_start_1
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 92
    iget-object v4, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v6, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v6, v1}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v2, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 103
    const-string v4, "ImageCacheRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode cached failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->recycle(Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_1

    .line 94
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 95
    iget-object v4, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v6, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v6, v1}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 100
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v4, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v6, v8, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v6, v1}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 108
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->recycle(Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 110
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 108
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "found":Z
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;->recycle(Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v4

    .line 113
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "found":Z
    :cond_7
    if-nez v2, :cond_8

    .line 114
    const-string v4, "ImageCacheRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode orig failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 118
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 121
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 122
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 126
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 130
    :cond_b
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 131
    .local v14, "array":[B
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 135
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->mModifyDate:J

    move-object v9, v3

    invoke-virtual/range {v9 .. v14}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->putImageData(Lcom/lenovo/scg/gallery3d/data/Path;IJ[B)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/ImageCacheRequest;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
