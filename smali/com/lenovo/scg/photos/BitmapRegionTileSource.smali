.class public Lcom/lenovo/scg/photos/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BitmapRegionTileSource"

    const-string v2, "ctor failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/BitmapRegionTileSource;->getTileSize()I

    move-result v2

    .line 58
    .local v2, "tileSize":I
    shl-int v1, v2, p1

    .line 60
    .local v1, "t":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p2, v1

    add-int v5, p3, v1

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .local v3, "wantRegion":Landroid/graphics/Rect;
    if-nez p4, :cond_0

    .line 63
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 66
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 69
    shl-int v4, v6, p1

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    iput-object p4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 76
    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v4, p4, :cond_1

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 77
    iput-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 81
    :cond_1
    if-nez p4, :cond_2

    .line 82
    const-string v4, "BitmapRegionTileSource"

    const-string v5, "fail in decoding region"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    return-object p4

    .line 76
    :catchall_0
    move-exception v4

    iget-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v5, p4, :cond_3

    iget-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 77
    iput-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_3
    throw v4
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x100

    return v0
.end method
