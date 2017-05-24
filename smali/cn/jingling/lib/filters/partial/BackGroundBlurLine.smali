.class public Lcn/jingling/lib/filters/partial/BackGroundBlurLine;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "BackGroundBlurLine.java"


# instance fields
.field private mAngle:F

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mAngle:F

    .line 11
    return-void
.end method

.method private getGradualSize(III)I
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "r"    # I

    .prologue
    .line 74
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 75
    .local v1, "m":I
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    .line 76
    .local v0, "gradualSize":I
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 44
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 45
    .local v2, "pixels":[I
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mBlurBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v8, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 49
    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    .line 50
    iget v4, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    .line 51
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 52
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 53
    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mRadius:I

    .line 54
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mRadius:I

    iget v8, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v9, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    .line 55
    iget v14, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mRadius:I

    .line 54
    invoke-direct {p0, v8, v9, v14}, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->getGradualSize(III)I

    move-result v8

    add-int/2addr v8, v1

    .line 55
    iget v9, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mAngle:F

    .line 47
    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/filters/CMTProcessor;->blurBackgroundEffectByLine([IIIIIIIF)V

    .line 57
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    .line 58
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 60
    .local v11, "mergeBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 67
    .local v13, "perfBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v10, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v11, v1, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    return-object v13
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 24
    iput p1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mAngle:F

    .line 25
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    .line 32
    iput-object p2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 34
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 35
    .local v1, "pixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v6, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    const/4 v3, 0x5

    invoke-static {v1, v0, v2, v3}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlur([IIII)V

    .line 37
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mHeight:I

    .line 38
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method
