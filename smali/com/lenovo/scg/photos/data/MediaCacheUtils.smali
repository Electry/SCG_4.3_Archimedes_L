.class public Lcom/lenovo/scg/photos/data/MediaCacheUtils;
.super Ljava/lang/Object;
.source "MediaCacheUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static QUALITY:I

.field private static final TAG:Ljava/lang/String;

.field private static final mBufferPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<[B>;"
        }
    .end annotation
.end field

.field private static mTargetPreviewSize:I

.field private static mTargetThumbnailSize:I

.field private static final sJobStub:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x50

    sput v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->QUALITY:I

    .line 50
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    .line 52
    new-instance v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils$1;

    invoke-direct {v0}, Lcom/lenovo/scg/photos/data/MediaCacheUtils$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->sJobStub:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v3, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 154
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 155
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 160
    .local v2, "totalWritten":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 161
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    add-int/2addr v2, v1

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 167
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 168
    sget-object v3, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return v2

    .line 166
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 167
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 168
    sget-object v4, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v4, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    throw v3
.end method

.method public static downsample(Landroid/graphics/Bitmap;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
    .locals 9
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p2, "outBitmap"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 100
    sget-object v7, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Original:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne v7, p1, :cond_0

    .line 116
    :goto_0
    return v3

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->getTargetSize(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)I

    move-result v5

    .line 105
    .local v5, "targetSize":I
    invoke-static {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->needsDownsample(Landroid/graphics/Bitmap;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    invoke-static {p0, p2}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeAndRecycle(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    .local v3, "success":Z
    goto :goto_0

    .line 108
    .end local v3    # "success":Z
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 109
    .local v0, "maxDimension":F
    int-to-float v7, v5

    div-float v1, v7, v0

    .line 110
    .local v1, "scale":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 111
    .local v6, "targetWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 112
    .local v4, "targetHeight":I
    invoke-static {p0, v6, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 113
    .local v2, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v2, p2}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeAndRecycle(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    .line 114
    .restart local v3    # "success":Z
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static downsample(Ljava/io/File;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
    .locals 7
    .param p0, "inBitmap"    # Ljava/io/File;
    .param p1, "targetSize"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p2, "outBitmap"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Original:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne v5, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->getTargetSize(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)I

    move-result v2

    .line 88
    .local v2, "size":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->sJobStub:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    move v3, v4

    .line 93
    .local v3, "success":Z
    :cond_2
    if-eqz v3, :cond_0

    .line 94
    invoke-static {v0, p2}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeAndRecycle(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    goto :goto_0
.end method

.method public static extractImageFromVideo(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "inVideo"    # Ljava/io/File;
    .param p1, "outBitmap"    # Ljava/io/File;

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeAndRecycle(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static getTargetSize(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)I
    .locals 1
    .param p0, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p0, v0, :cond_0

    sget v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mTargetThumbnailSize:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mTargetPreviewSize:I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mTargetThumbnailSize:I

    .line 76
    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->mTargetPreviewSize:I

    .line 77
    return-void
.end method

.method public static needsDownsample(Landroid/graphics/Bitmap;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    const/4 v2, 0x0

    .line 125
    sget-object v3, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Original:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p1, v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->getTargetSize(Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)I

    move-result v1

    .line 129
    .local v1, "targetSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 130
    .local v0, "maxDimension":I
    mul-int/lit8 v3, v1, 0x4

    div-int/lit8 v3, v3, 0x3

    if-le v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static writeAndRecycle(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Ljava/io/File;

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    .line 135
    .local v0, "success":Z
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    return v0
.end method

.method public static writeToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Ljava/io/File;

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "success":Z
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v4, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->QUALITY:I

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t write bitmap to cache"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
