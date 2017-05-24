.class public Lcom/lenovo/scg/gallery3d/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static createBitmapRegionDecoder(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "shareable"    # Z

    .prologue
    .line 223
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "shareable"    # Z

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 236
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCreateBitmapRegionDecoder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "shareable"    # Z

    .prologue
    .line 214
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "shareable"    # Z

    .prologue
    .line 200
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "offset = %s, length = %s, bytes = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 64
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 66
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 67
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 83
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .restart local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 85
    invoke-static {p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 86
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBounds(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 72
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 74
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 75
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method public static decodeBounds(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 91
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 93
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method public static decodeIfBigEnough(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "data"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 173
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 177
    array-length v1, p1

    invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 178
    invoke-interface {p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    :cond_1
    :goto_0
    return-object v0

    .line 179
    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    .line 182
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 186
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I
    .param p4, "type"    # I

    .prologue
    .line 112
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v6, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v6, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v6}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    const/4 v6, 0x0

    invoke-static {p1, v6, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    invoke-interface {p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 162
    :goto_0
    return-object v6

    .line 119
    :cond_1
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 120
    .local v5, "w":I
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .local v2, "h":I
    const/4 v6, 0x2

    if-eq p4, v6, :cond_2

    const/4 v6, 0x3

    if-ne p4, v6, :cond_4

    .line 126
    :cond_2
    int-to-float v6, p3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 127
    .local v4, "scale":F
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    const v0, 0x9c400

    .line 132
    .local v0, "MAX_PIXEL_COUNT":I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v5, v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v2, v7

    mul-int/2addr v6, v7

    const v7, 0x9c400

    if-le v6, v7, :cond_3

    .line 133
    const v6, 0x491c4000    # 640000.0f

    mul-int v7, v5, v2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    .end local v0    # "MAX_PIXEL_COUNT":I
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 144
    const/4 v3, 0x0

    .line 146
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 150
    :goto_2
    if-nez v3, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 137
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "scale":F
    :cond_4
    int-to-float v6, p3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 138
    .restart local v4    # "scale":F
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 147
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 156
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5
    int-to-float v7, p3

    const/4 v6, 0x2

    if-eq p4, v6, :cond_6

    const/4 v6, 0x3

    if-ne p4, v6, :cond_8

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_3
    int-to-float v6, v6

    div-float v4, v7, v6

    .line 161
    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 162
    :cond_7
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_0

    .line 156
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_3
.end method

.method public static decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I
    .param p4, "type"    # I

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 102
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 107
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "DecodeUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    const/4 v4, 0x0

    .line 107
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 103
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static decodeUsingPool(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 268
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v4, :cond_1

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 271
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v4, :cond_3

    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 273
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 275
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 276
    const/4 v2, 0x0

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v2, v3

    .line 271
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    throw v1

    .line 282
    :cond_4
    const-string v2, "DecodeUtils"

    const-string v4, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 284
    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 285
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static decodeUsingPool(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 243
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 244
    .restart local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v4, :cond_1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 246
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v4, :cond_3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 248
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 250
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v4, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 251
    const/4 v2, 0x0

    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v2, v3

    .line 246
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    throw v1

    .line 257
    :cond_4
    const-string v2, "DecodeUtils"

    const-string v4, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v4, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 259
    iput-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 260
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decode(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static findCachedBitmap(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 295
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V

    .line 296
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static findCachedBitmap(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 290
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 291
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 60
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 61
    :cond_0
    return-void
.end method
