.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
.super Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;
.source "FaceBitmapUtils.java"


# static fields
.field public static final COLOR_B:I = 0xff

.field public static final COLOR_G:I = 0xff

.field public static final COLOR_R:I = 0xff

.field public static DEBUG:Z = false

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final DEF_VALUE:I = 0x0

.field public static final FACE_OFFSET:I = 0x64

.field public static final FACE_PRETTY_FLAG:Ljava/lang/String; = "ES_PRETTY"

.field public static final FORMAT:Ljava/lang/String; = "RGB888"

.field private static final LOG_TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final MAXDETECTNUM:I = 0x5

.field public static final MAXSEEKBAR_PORT:I = -0x1e

.field public static final MINSEEKBAR_PORT:I = 0x1e

.field public static final NAIL_MAX_HEIGHT:I = 0x438

.field public static final NAIL_MAX_WIDTH:I = 0x5a0

.field public static final RATIO:F = 12.0f

.field public static final STEP_VALUE:F = 1.75f

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNUSE_FACE_RECT:I = 0x0

.field public static final USE_FACE_RECT:I = 0x1

.field public static final man_prarm:[I

.field public static final other_prarm:[I

.field public static screenIsPort:Z

.field public static final woman_prarm:[I


# instance fields
.field private context:Landroid/content/Context;

.field private effectBitmap:Landroid/graphics/Bitmap;

.field faceRect:[I

.field private initStat:I

.field private judgerStat:Z

.field private mCLeGraphicAlgorithm:Ljava/lang/Object;

.field mImageIds:[I

.field mInARGB8888:[I

.field mInRGB888:[B

.field mOutRGB888:[B

.field myOutArgb8888:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0xb

    .line 63
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->screenIsPort:Z

    .line 65
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->DEBUG:Z

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->man_prarm:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->woman_prarm:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0x28
        0x14
        0x1e
        0x14
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 91
    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0x3d
        0x5d
        0x40
        0x31
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0xff
        0xff
        0xff
        0x32
        0x32
        0x2d
        0x28
        0x0
        0x0
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;-><init>()V

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->faceRect:[I

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mInARGB8888:[I

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->myOutArgb8888:[I

    .line 53
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mInRGB888:[B

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mOutRGB888:[B

    .line 57
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mImageIds:[I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->initStat:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->judgerStat:Z

    .line 129
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->effectBitmap:Landroid/graphics/Bitmap;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->faceRect:[I

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mInARGB8888:[I

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->myOutArgb8888:[I

    .line 53
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mInRGB888:[B

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mOutRGB888:[B

    .line 57
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->mImageIds:[I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->initStat:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->judgerStat:Z

    .line 129
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->effectBitmap:Landroid/graphics/Bitmap;

    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->context:Landroid/content/Context;

    .line 136
    return-void
.end method

.method private bitmap2IS(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 453
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 454
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 455
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 456
    .local v1, "sbs":Ljava/io/InputStream;
    return-object v1
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 150
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 464
    const/4 v5, 0x0

    .line 465
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 470
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getBitmapBounds(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    .line 471
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 472
    .local v8, "sampleSize":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 474
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 475
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 476
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 479
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->bitmap2IS(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v5

    .line 480
    const/4 v11, 0x0

    invoke-static {v5, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 484
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 489
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "sampleSize":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v11, v12, :cond_0

    .line 490
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 491
    .local v3, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    move-object v1, v3

    .line 495
    .end local v3    # "copy":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v1, :cond_1

    .line 498
    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 499
    .local v9, "scale":F
    move/from16 v0, p3

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 500
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    .line 501
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 502
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 503
    invoke-static {v1, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 504
    .local v10, "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 508
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    .end local v10    # "transformed":Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 481
    :catch_0
    move-exception v4

    .line 482
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v11, "BitmapUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v11

    :cond_1
    move-object v10, v1

    .line 508
    goto :goto_1
.end method

.method public static float2IntByLow(F)I
    .locals 7
    .param p0, "mfloat"    # F

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "mString":Ljava/lang/String;
    const-string v3, "BitmapUtils float2IntByLow "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "BitmapUtils float2IntByLow "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 193
    .local v1, "mString2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "mString3":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 196
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 199
    :goto_0
    return v3

    :cond_0
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method private getBitmapBounds(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "uri"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 434
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 438
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->bitmap2IS(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    .line 439
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 440
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 441
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 443
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 444
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 449
    return-object v0

    .line 446
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method


# virtual methods
.method public findFaceRects(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    .locals 2
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "faceRects":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 516
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->decodeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initFaceDetecter()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public initFaceDetectrtAndGenderJudger()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method initPicPost()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public isHaveFaceInPic(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->findFaceRects(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    .line 402
    .local v0, "faceRects":[Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 407
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHaveGenderLib()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public judgeGenderFromeBmp(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faceRects"    # [Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public relaseFaceDetecter()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public relaseGenderJudger()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 535
    if-nez p2, :cond_1

    .line 536
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    .line 544
    :cond_0
    const/4 v1, 0x0

    .line 545
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 548
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 549
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v5, 0x5a

    :try_start_2
    invoke-virtual {p1, p4, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 555
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .line 557
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_1
    return-object v1

    .line 539
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 540
    const/4 v1, 0x0

    goto :goto_1

    .line 548
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p3

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 555
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .line 552
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method uninitPicPost()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method
