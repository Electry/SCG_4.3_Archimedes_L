.class public Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;
.super Ljava/lang/Object;
.source "BitmapTileProvider.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMipmaps:[Landroid/graphics/Bitmap;

.field private mRecycled:Z

.field private final mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxBackupSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 48
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    .line 79
    shr-int/2addr p2, p1

    .line 80
    shr-int/2addr p3, p1

    .line 82
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v5

    invoke-virtual {v5, p4, p4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 83
    .local v4, "result":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 84
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 89
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v5, p1

    .line 90
    .local v1, "mipmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v0, "canvas":Landroid/graphics/Canvas;
    neg-int v2, p2

    .line 92
    .local v2, "offsetX":I
    neg-int v3, p3

    .line 93
    .local v3, "offsetY":I
    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    return-object v4

    .line 86
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "mipmap":Landroid/graphics/Bitmap;
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 98
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    if-eqz v4, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 101
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0
.end method
