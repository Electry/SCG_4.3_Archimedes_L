.class public Lcn/jingling/lib/filters/ImageProcessUtils;
.super Ljava/lang/Object;
.source "ImageProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/filters/ImageProcessUtils$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)V
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v4, 0x0

    .line 223
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 224
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 226
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 228
    .local v0, "cFilter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 229
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 230
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 231
    return-void
.end method

.method public static colorZoom(Landroid/graphics/Bitmap;F)V
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # F

    .prologue
    .line 216
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 217
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 218
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 219
    invoke-static {p0, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)V

    .line 220
    return-void
.end method

.method public static colorZoom([IIIF)[I
    .locals 8
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ratio"    # F

    .prologue
    const/4 v2, 0x0

    .line 208
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    move-object v1, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 209
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 210
    invoke-static {v0, p3}, Lcn/jingling/lib/filters/ImageProcessUtils;->colorZoom(Landroid/graphics/Bitmap;F)V

    move-object v1, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    return-object p0
.end method

.method public static createAlphaBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "alpha"    # I

    .prologue
    const/4 v6, 0x0

    .line 331
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v2, "p":Landroid/graphics/Paint;
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 335
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 334
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    return-object v0
.end method

.method public static effectSmoothSkin(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 13
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 354
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 355
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 356
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 357
    const/16 v0, 0xa

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v0, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 358
    new-instance v12, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/skin_smooth.dat"

    invoke-direct {v12, p0, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    .local v12, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v8

    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v9

    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v10

    move-object v5, v1

    move v6, v3

    move v11, p2

    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingWeight([III[I[I[II)V

    .line 360
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 361
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 362
    return-void
.end method

.method public static flip(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "horizontal"    # Z

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 320
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 321
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 326
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 327
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 326
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method

.method public static getGrayImage(Landroid/graphics/Bitmap;)[B
    .locals 9
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 344
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 345
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 346
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 347
    mul-int v0, v3, v7

    new-array v8, v0, [B

    .line 348
    .local v8, "out":[B
    invoke-static {v1, v8, v3, v7}, Lcn/jingling/lib/filters/CMTProcessor;->transToGray([I[BII)V

    .line 349
    return-object v8
.end method

.method private static getRedFaceMatrix()Landroid/graphics/ColorMatrix;
    .locals 4

    .prologue
    .line 256
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 257
    .local v1, "matrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 258
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 259
    .local v0, "m":[F
    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v0, v2

    .line 260
    return-object v1
.end method

.method private static getSaturationMatrix(FFF)Landroid/graphics/ColorMatrix;
    .locals 8
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 235
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 236
    .local v4, "matrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v4}, Landroid/graphics/ColorMatrix;->reset()V

    .line 237
    invoke-virtual {v4}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 239
    .local v3, "m":[F
    const v5, 0x3e5a1cac    # 0.213f

    sub-float v6, v7, p0

    mul-float v2, v5, v6

    .line 240
    .local v2, "R":F
    const v5, 0x3f370a3d    # 0.715f

    sub-float v6, v7, p1

    mul-float v1, v5, v6

    .line 241
    .local v1, "G":F
    const v5, 0x3d9374bc    # 0.072f

    sub-float v6, v7, p2

    mul-float v0, v5, v6

    .line 243
    .local v0, "B":F
    const/4 v5, 0x0

    add-float v6, v2, p0

    aput v6, v3, v5

    .line 244
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 245
    const/4 v5, 0x2

    aput v0, v3, v5

    .line 246
    const/4 v5, 0x5

    aput v2, v3, v5

    .line 247
    const/4 v5, 0x6

    add-float v6, v1, p1

    aput v6, v3, v5

    .line 248
    const/4 v5, 0x7

    aput v0, v3, v5

    .line 249
    const/16 v5, 0xa

    aput v2, v3, v5

    .line 250
    const/16 v5, 0xb

    aput v1, v3, v5

    .line 251
    const/16 v5, 0xc

    add-float v6, v0, p2

    aput v6, v3, v5

    .line 252
    return-object v4
.end method

.method public static hue(Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "degreeHue"    # I

    .prologue
    const/4 v10, 0x0

    const-wide v8, 0x4066800000000000L    # 180.0

    .line 265
    int-to-double v6, p1

    sub-double/2addr v6, v8

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 267
    .local v0, "degree":F
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 268
    .local v1, "myCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 269
    .local v4, "myPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 272
    .local v2, "myColorMatrix":Landroid/graphics/ColorMatrix;
    invoke-static {v2, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->setHueMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 273
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 275
    .local v3, "myColorMatrixColorFilter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 276
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    invoke-virtual {v1, p0, v10, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 281
    return-void
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm1"    # Landroid/graphics/Bitmap;
    .param p1, "bm2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 41
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    .local v2, "rst":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {v0, p1, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    return-object v2
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm1"    # Landroid/graphics/Bitmap;
    .param p1, "bm2"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # D

    .prologue
    const/4 v8, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 29
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    .local v2, "rst":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p2

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    invoke-virtual {v0, p1, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 37
    return-object v2
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcn/jingling/lib/filters/ImageSelection;)V
    .locals 16
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "layer"    # Landroid/graphics/Bitmap;
    .param p2, "sel"    # Lcn/jingling/lib/filters/ImageSelection;

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 126
    .local v3, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 127
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 128
    .local v1, "pixels":[I
    mul-int v0, v3, v7

    new-array v9, v0, [I

    .line 129
    .local v9, "layerPixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 130
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move v11, v3

    move v14, v3

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcn/jingling/lib/filters/ImageSelection;->getPixels()[I

    move-result-object v0

    invoke-static {v1, v9, v0, v3, v7}, Lcn/jingling/lib/filters/CMTProcessor;->mergeSelection([I[I[III)V

    .line 132
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 133
    return-void
.end method

.method public static mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)V
    .locals 10
    .param p0, "bm1"    # Landroid/graphics/Bitmap;
    .param p1, "bm2"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 62
    sget-object v5, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->STRENCH:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v8, v6

    invoke-static/range {v1 .. v9}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;DD)V

    .line 63
    return-void
.end method

.method public static mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;)V
    .locals 10
    .param p0, "bm1"    # Landroid/graphics/Bitmap;
    .param p1, "bm2"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # D
    .param p4, "type"    # Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .prologue
    const-wide/16 v6, 0x0

    .line 77
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v8, v6

    invoke-static/range {v1 .. v9}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;DD)V

    .line 78
    return-void
.end method

.method public static mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;DD)V
    .locals 17
    .param p0, "bm1"    # Landroid/graphics/Bitmap;
    .param p1, "bm2"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # D
    .param p4, "type"    # Lcn/jingling/lib/filters/ImageProcessUtils$Type;
    .param p5, "marginFractionH"    # D
    .param p7, "marginFractionV"    # D

    .prologue
    .line 91
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 95
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 97
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, p2

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    double-to-int v11, v12

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 99
    .local v9, "w1":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 100
    .local v3, "h1":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 101
    .local v10, "w2":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 102
    .local v4, "h2":I
    int-to-double v12, v9

    mul-double v12, v12, p5

    double-to-int v5, v12

    .line 103
    .local v5, "marginH":I
    int-to-double v12, v3

    mul-double v12, v12, p7

    double-to-int v6, v12

    .line 104
    .local v6, "marginV":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v8, "rect":Landroid/graphics/Rect;
    sget-object v11, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_1

    .line 106
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v11, v5, 0x0

    sub-int v12, v3, v4

    sub-int/2addr v12, v6

    add-int v13, v10, v5

    sub-int v14, v3, v6

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .restart local v8    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    return-void

    .line 107
    :cond_1
    sget-object v11, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_2

    .line 108
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v11, v5, 0x0

    add-int/lit8 v12, v6, 0x0

    add-int v13, v10, v5

    add-int v14, v4, v6

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .restart local v8    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    :cond_2
    sget-object v11, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->RIGHT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_3

    .line 110
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "rect":Landroid/graphics/Rect;
    sub-int v11, v9, v10

    sub-int/2addr v11, v5

    sub-int v12, v3, v4

    sub-int/2addr v12, v6

    sub-int v13, v9, v5

    sub-int v14, v3, v6

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .restart local v8    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    :cond_3
    sget-object v11, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_0

    .line 112
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "rect":Landroid/graphics/Rect;
    sub-int v11, v9, v10

    div-int/lit8 v11, v11, 0x2

    sub-int v12, v3, v4

    sub-int/2addr v12, v6

    add-int v13, v9, v10

    div-int/lit8 v13, v13, 0x2

    sub-int v14, v3, v6

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "rect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static nativeMerge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "layer"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # D

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 136
    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 138
    .local v16, "rst":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 139
    .local v3, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 140
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 141
    .local v1, "pixels":[I
    mul-int v0, v3, v7

    new-array v9, v0, [I

    .line 142
    .local v9, "layerPixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 143
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move v11, v3

    move v14, v3

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 144
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v4, v4, p2

    double-to-int v0, v4

    invoke-static {v1, v9, v3, v7, v0}, Lcn/jingling/lib/filters/CMTProcessor;->mergeWeight([I[IIII)V

    .line 145
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 146
    return-object v16
.end method

.method public static redFace(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 204
    invoke-static {}, Lcn/jingling/lib/filters/ImageProcessUtils;->getRedFaceMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)V

    .line 205
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 313
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 314
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 316
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 315
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static saturation(Landroid/graphics/Bitmap;FFF)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 190
    invoke-static {p1, p2, p3}, Lcn/jingling/lib/filters/ImageProcessUtils;->getSaturationMatrix(FFF)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)V

    .line 191
    return-void
.end method

.method public static saturation(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 185
    int-to-double v0, p1

    div-double/2addr v0, v4

    double-to-float v0, v0

    int-to-double v2, p1

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 186
    int-to-double v2, p1

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 185
    invoke-static {p0, v0, v1, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturation(Landroid/graphics/Bitmap;FFF)V

    .line 187
    return-void
.end method

.method public static saturationAndBrightnessPs(Landroid/graphics/Bitmap;II)V
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "sat"    # I
    .param p2, "bright"    # I

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    .line 194
    add-int/lit8 v3, p1, 0x64

    div-int/lit8 v0, v3, 0x2

    .line 195
    .local v0, "d":I
    int-to-float v3, v0

    div-float/2addr v3, v6

    int-to-float v4, v0

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcn/jingling/lib/filters/ImageProcessUtils;->getSaturationMatrix(FFF)Landroid/graphics/ColorMatrix;

    move-result-object v2

    .line 196
    .local v2, "mat":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 197
    .local v1, "m":[F
    const/4 v3, 0x4

    int-to-float v4, p2

    aput v4, v1, v3

    .line 198
    const/16 v3, 0x9

    int-to-float v4, p2

    aput v4, v1, v3

    .line 199
    const/16 v3, 0xe

    int-to-float v4, p2

    aput v4, v1, v3

    .line 200
    invoke-static {p0, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)V

    .line 201
    return-void
.end method

.method public static saturationPs(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    .line 174
    add-int/lit8 v1, p1, 0x64

    div-int/lit8 v0, v1, 0x2

    .line 175
    .local v0, "d":I
    invoke-static {p0, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturation(Landroid/graphics/Bitmap;I)V

    .line 176
    return-void
.end method

.method public static saturationPs([IIII)[I
    .locals 8
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "degree"    # I

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    move-object v1, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 158
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 159
    invoke-static {v0, p3}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs(Landroid/graphics/Bitmap;I)V

    move-object v1, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 160
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    const/4 v0, 0x0

    .line 163
    return-object p0
.end method

.method private static setHueMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 14
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "degree"    # F

    .prologue
    .line 285
    const-wide v8, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    float-to-double v10, p1

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v2, v8

    .line 286
    .local v2, "hueNum":F
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 287
    .local v0, "cosNum":F
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 288
    .local v6, "sinNum":F
    const v5, 0x3e5a1cac    # 0.213f

    .line 289
    .local v5, "lumR":F
    const v4, 0x3f370a3d    # 0.715f

    .line 290
    .local v4, "lumG":F
    const v3, 0x3d9374bc    # 0.072f

    .line 292
    .local v3, "lumB":F
    const/16 v7, 0x19

    new-array v1, v7, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    neg-float v9, v5

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/4 v7, 0x1

    .line 293
    neg-float v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v8, v4

    neg-float v9, v4

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/4 v7, 0x2

    .line 294
    neg-float v8, v3

    mul-float/2addr v8, v0

    add-float/2addr v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v3

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v1, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v1, v7

    const/4 v7, 0x5

    .line 295
    neg-float v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    const v9, 0x3e126e98    # 0.143f

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/4 v7, 0x6

    .line 296
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v8, v4

    const v9, 0x3e0f5c29    # 0.14f

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/4 v7, 0x7

    .line 297
    neg-float v8, v3

    mul-float/2addr v8, v0

    add-float/2addr v8, v3

    const v9, -0x416f1aa0    # -0.283f

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0xa

    .line 298
    neg-float v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v5

    neg-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/16 v7, 0xb

    .line 299
    neg-float v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v8, v4

    mul-float v9, v6, v4

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/16 v7, 0xc

    .line 300
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v3

    mul-float/2addr v8, v0

    add-float/2addr v8, v3

    mul-float v9, v6, v3

    add-float/2addr v8, v9

    aput v8, v1, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x12

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v7

    const/16 v7, 0x13

    .line 301
    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput v8, v1, v7

    const/16 v7, 0x18

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v7

    .line 302
    .local v1, "hueMatr":[F
    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 303
    return-void
.end method

.method public static skinSmooth(Landroid/content/Context;[IIII)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "level"    # I

    .prologue
    .line 366
    const/4 v7, 0x0

    .line 368
    .local v7, "bmp":Landroid/graphics/Bitmap;
    const/4 v0, 0x6

    :try_start_0
    new-array v9, v0, [[I

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    aput-object v1, v9, v0

    const/4 v0, 0x4

    .line 369
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v9, v0

    .line 370
    .local v9, "degree":[[I
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 371
    new-instance v8, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/skin_smooth.dat"

    invoke-direct {v8, p0, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    .local v8, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v8}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v3

    invoke-virtual {v8}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v4

    .line 374
    invoke-virtual {v8}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v5

    aget-object v0, v9, p4

    const/4 v1, 0x0

    aget v6, v0, v1

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 372
    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingWeight([III[I[I[II)V

    .line 376
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 378
    aget-object v0, v9, p4

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x28

    .line 377
    invoke-static {p1, p2, p3, v0}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 379
    const/16 v0, -0xa

    invoke-static {p1, p2, p3, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    .end local v8    # "curve":Lcn/jingling/lib/filters/Curve;
    .end local v9    # "degree":[[I
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v10

    .line 388
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 391
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 368
    :array_0
    .array-data 4
        0x32
        0xd
    .end array-data

    :array_1
    .array-data 4
        0x3c
        0x19
    .end array-data

    :array_2
    .array-data 4
        0x50
        0x21
    .end array-data

    .line 369
    :array_3
    .array-data 4
        0x5a
        0x37
    .end array-data

    :array_4
    .array-data 4
        0x64
        0x46
    .end array-data
.end method
