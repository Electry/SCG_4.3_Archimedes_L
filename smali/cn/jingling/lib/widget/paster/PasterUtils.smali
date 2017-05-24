.class public Lcn/jingling/lib/widget/paster/PasterUtils;
.super Ljava/lang/Object;
.source "PasterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMatrixFromParams(Lcn/jingling/lib/widget/paster/PasterParams;IIII)Landroid/graphics/Matrix;
    .locals 9
    .param p0, "params"    # Lcn/jingling/lib/widget/paster/PasterParams;
    .param p1, "pasterWidth"    # I
    .param p2, "pasterHeight"    # I
    .param p3, "destWidth"    # I
    .param p4, "destHeight"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    int-to-float v5, p2

    int-to-float v6, p4

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 27
    iget v4, p0, Lcn/jingling/lib/widget/paster/PasterParams;->scale:F

    int-to-float v5, p3

    mul-float/2addr v4, v5

    int-to-float v5, p1

    div-float v3, v4, v5

    .line 31
    .local v3, "s":F
    :goto_0
    iget v4, p0, Lcn/jingling/lib/widget/paster/PasterParams;->direction:I

    mul-int/lit8 v2, v4, 0x5a

    .line 32
    .local v2, "rotateAngle":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    .local v0, "mat":Landroid/graphics/Matrix;
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 34
    const/4 v4, 0x2

    new-array v1, v4, [F

    int-to-float v4, p1

    aput v4, v1, v7

    int-to-float v4, p2

    aput v4, v1, v8

    .line 35
    .local v1, "points":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 36
    int-to-float v4, p3

    aget v5, v1, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterParams;->position:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    .line 37
    int-to-float v5, p4

    aget v6, v1, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterParams;->position:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    .line 36
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 38
    int-to-float v4, v2

    div-int/lit8 v5, p1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 39
    return-object v0

    .line 29
    .end local v0    # "mat":Landroid/graphics/Matrix;
    .end local v1    # "points":[F
    .end local v2    # "rotateAngle":I
    .end local v3    # "s":F
    :cond_0
    iget v4, p0, Lcn/jingling/lib/widget/paster/PasterParams;->scale:F

    int-to-float v5, p4

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float v3, v4, v5

    .restart local v3    # "s":F
    goto :goto_0
.end method

.method public static merge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcn/jingling/lib/widget/paster/PasterParams;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paster"    # Landroid/graphics/Bitmap;
    .param p2, "params"    # Lcn/jingling/lib/widget/paster/PasterParams;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11
    .local v1, "emptyBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 13
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 15
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 16
    invoke-static {p2, v4, v5, v6, v7}, Lcn/jingling/lib/widget/paster/PasterUtils;->getMatrixFromParams(Lcn/jingling/lib/widget/paster/PasterParams;IIII)Landroid/graphics/Matrix;

    move-result-object v2

    .line 18
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 20
    return-object v1
.end method
