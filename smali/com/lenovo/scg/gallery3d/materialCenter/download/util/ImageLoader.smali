.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$BitmapDisplayer;,
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;,
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private fileCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->typeName:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViews:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/FileCache;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->fileCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;

    .line 45
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 228
    const/16 v0, 0x400

    .line 230
    .local v0, "buffer_size":I
    const/16 v4, 0x400

    :try_start_0
    new-array v1, v4, [B

    .line 232
    .local v1, "bytes":[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 233
    .local v2, "count":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 239
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_1
    return-void

    .line 234
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    .line 237
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, ""

    const-string v5, "CopyStream catch Exception..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;)Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    return-object v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/16 v10, 0x64

    const/4 v7, 0x0

    .line 108
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    const/16 v0, 0x64

    .line 114
    .local v0, "REQUIRED_SIZE":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v6, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 115
    .local v2, "height_tmp":I
    const/4 v5, 0x1

    .line 117
    .local v5, "scale":I
    :goto_0
    div-int/lit8 v8, v6, 0x2

    if-lt v8, v10, :cond_0

    div-int/lit8 v8, v2, 0x2

    if-ge v8, v10, :cond_1

    .line 124
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 130
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_1
    return-object v7

    .line 118
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_1
    div-int/lit8 v6, v6, 0x2

    .line 119
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 127
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->fileCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 76
    .local v4, "f":Ljava/io/File;
    const/4 v0, 0x0

    .line 77
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    .line 100
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 85
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    .line 86
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, "imageUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 89
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 92
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 93
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v7, "os":Ljava/io/OutputStream;
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 95
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 96
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 98
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "imageUrl":Ljava/net/URL;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 99
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmap catch Exception...\nmessage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "stypeName"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 69
    .local v0, "p":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotosLoader;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 70
    return-void
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "typeName"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "isLoadOnlyFromCache"    # Z

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "bmpOld":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-nez p4, :cond_0

    .line 62
    invoke-direct {p0, p1, p3, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->memoryCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->clear()V

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->fileCache:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->clear()V

    .line 225
    return-void
.end method

.method imageViewReused(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;)Z
    .locals 3
    .param p1, "photoToLoad"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 200
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
