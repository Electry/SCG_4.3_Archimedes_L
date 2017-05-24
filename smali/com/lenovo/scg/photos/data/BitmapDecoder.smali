.class public Lcom/lenovo/scg/photos/data/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"


# static fields
.field private static final HEADER_MAX_SIZE:I = 0x4000

.field private static final POOL_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_STORAGE_SIZE_BYTES:I = 0x4000

.field private static final sOptions:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/lenovo/scg/photos/data/BitmapDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/BitmapDecoder;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/lenovo/scg/photos/data/BitmapDecoder;->sOptions:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "in"    # Ljava/io/File;

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-static {}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 55
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    move-object p0, v2

    .line 58
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    const/16 v7, 0x4000

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 60
    const/4 v7, 0x0

    invoke-static {p0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 62
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v4

    .line 64
    .local v4, "pool":Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v7, v8}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 65
    .local v5, "reuseBitmap":Landroid/graphics/Bitmap;
    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 66
    const/4 v7, 0x0

    invoke-static {p0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    if-eq v0, v5, :cond_1

    .line 68
    invoke-virtual {v4, v5}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v3}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->release(Landroid/graphics/BitmapFactory$Options;)V

    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pool":Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    .end local v5    # "reuseBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v7, Lcom/lenovo/scg/photos/data/BitmapDecoder;->TAG:Ljava/lang/String;

    const-string v8, "Could not decode stream to bitmap"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v3}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->release(Landroid/graphics/BitmapFactory$Options;)V

    move-object v0, v6

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v3}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->release(Landroid/graphics/BitmapFactory$Options;)V

    throw v6
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 87
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    .line 91
    .local v2, "pool":Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 92
    .local v3, "reuseBitmap":Landroid/graphics/Bitmap;
    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    .line 95
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    invoke-static {v1}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->release(Landroid/graphics/BitmapFactory$Options;)V

    return-object v0

    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "pool":Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    .end local v3    # "reuseBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/lenovo/scg/photos/data/BitmapDecoder;->release(Landroid/graphics/BitmapFactory$Options;)V

    throw v4
.end method

.method private static getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    sget-object v1, Lcom/lenovo/scg/photos/data/BitmapDecoder;->sOptions:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 109
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .restart local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 112
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 113
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 117
    :cond_0
    return-object v0
.end method

.method public static put(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 105
    return-void
.end method

.method private static release(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    sget-object v0, Lcom/lenovo/scg/photos/data/BitmapDecoder;->sOptions:Landroid/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
