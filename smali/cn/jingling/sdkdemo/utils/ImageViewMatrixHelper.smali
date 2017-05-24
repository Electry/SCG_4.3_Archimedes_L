.class public Lcn/jingling/sdkdemo/utils/ImageViewMatrixHelper;
.super Ljava/lang/Object;
.source "ImageViewMatrixHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterCropMatrix(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "srcBm"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    .local v1, "scaleRatio":F
    const/4 v4, 0x0

    .line 52
    .local v4, "traslatex":F
    const/4 v5, 0x0

    .line 55
    .local v5, "traslatey":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 56
    .local v2, "scaleRatioH":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 59
    .local v3, "scaleRatioW":F
    cmpl-float v6, v3, v2

    if-lez v6, :cond_0

    .line 60
    move v1, v3

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v5, v6, v8

    .line 69
    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 70
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 72
    return-object v0

    .line 64
    :cond_0
    move v1, v2

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v4, v6, v8

    goto :goto_0
.end method

.method public static getFitCenterMatrix(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "srcBm"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .local v1, "scaleRatio":F
    const/4 v4, 0x0

    .line 19
    .local v4, "traslatex":F
    const/4 v5, 0x0

    .line 22
    .local v5, "traslatey":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 23
    .local v2, "scaleRatioH":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 26
    .local v3, "scaleRatioW":F
    cmpl-float v6, v2, v3

    if-lez v6, :cond_0

    .line 27
    move v1, v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v5, v6, v8

    .line 36
    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 37
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 39
    return-object v0

    .line 31
    :cond_0
    move v1, v2

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v4, v6, v8

    goto :goto_0
.end method
