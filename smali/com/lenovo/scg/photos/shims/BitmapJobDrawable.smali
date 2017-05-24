.class public Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapJobDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mRotation:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object v0
.end method

.method private updateDrawMatrix()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 105
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 130
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v3, 0x0

    .local v3, "dx":F
    const/4 v4, 0x0

    .line 113
    .local v4, "dy":F
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 114
    .local v2, "dwidth":I
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 115
    .local v1, "dheight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 116
    .local v7, "vwidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 119
    .local v6, "vheight":I
    mul-int v8, v2, v6

    mul-int v9, v7, v1

    if-le v8, v9, :cond_2

    .line 120
    int-to-float v8, v6

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 121
    .local v5, "scale":F
    int-to-float v8, v7

    int-to-float v9, v2

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v10

    .line 127
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 128
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v9, v3, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 129
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->invalidateSelf()V

    goto :goto_0

    .line 123
    .end local v5    # "scale":F
    :cond_2
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v5, v8, v9

    .line 124
    .restart local v5    # "scale":F
    int-to-float v8, v6

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v4, v8, v10

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 94
    iget v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 145
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    invoke-direct {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->updateDrawMatrix()V

    .line 85
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 76
    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->updateDrawMatrix()V

    .line 79
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 151
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->invalidateSelf()V

    .line 155
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->invalidateSelf()V

    .line 161
    return-void
.end method

.method public setMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->cancelLoad()V

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;-><init>(Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mLoader:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->startLoad()V

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mRotation:I

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->invalidateSelf()V

    goto :goto_0
.end method
