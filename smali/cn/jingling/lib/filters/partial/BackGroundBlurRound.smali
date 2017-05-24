.class public Lcn/jingling/lib/filters/partial/BackGroundBlurRound;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "BackGroundBlurRound.java"


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    return-void
.end method

.method private getGradualSize(III)I
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "r"    # I

    .prologue
    .line 59
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 60
    .local v1, "m":I
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    .line 61
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
    .line 35
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 36
    .local v2, "pixels":[I
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mBlurBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v8, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 38
    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v4, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    .line 39
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mRadius:I

    .line 40
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mRadius:I

    iget v8, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v13, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    iget v14, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mRadius:I

    invoke-direct {p0, v8, v13, v14}, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->getGradualSize(III)I

    move-result v8

    add-int/2addr v8, v1

    .line 38
    invoke-static/range {v2 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->blurBackgroundEffectByCircle([IIIIIII)V

    .line 42
    iget v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    .line 43
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 42
    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 45
    .local v10, "mergeBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 46
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 50
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 52
    .local v12, "perfBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v9, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v10, v1, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    return-object v12
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    .line 23
    iput-object p2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 25
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 26
    .local v1, "pixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v6, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v7, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    const/4 v3, 0x5

    invoke-static {v1, v0, v2, v3}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlur([IIII)V

    .line 28
    iget v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mHeight:I

    .line 29
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method
