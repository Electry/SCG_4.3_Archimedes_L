.class public Lcn/jingling/lib/filters/partial/EyeEnlarge;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "EyeEnlarge.java"


# static fields
.field private static final MAX_OP:I = 0x1e


# instance fields
.field private mEnableEyeFinder:Z

.field private mHeight:I

.field private mNum:I

.field private mOriginalPixels:[I

.field private mPerformedPixels:[I

.field private mR:[I

.field private mScale:[F

.field private mWidth:I

.field private mX:[I

.field private mY:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mEnableEyeFinder:Z

    .line 18
    return-void
.end method

.method private enlarge(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 75
    new-instance v1, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;

    invoke-direct {v1}, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;-><init>()V

    .line 76
    .local v1, "p":Lcn/jingling/lib/filters/detection/EyeCorrector$Params;
    iget-boolean v2, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mEnableEyeFinder:Z

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Lcn/jingling/lib/filters/detection/EyeCorrector;

    invoke-direct {v2}, Lcn/jingling/lib/filters/detection/EyeCorrector;-><init>()V

    invoke-virtual {v2, p1, p2, p3}, Lcn/jingling/lib/filters/detection/EyeCorrector;->getRealEyeCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Point;

    move-result-object v0

    .line 78
    .local v0, "center":Landroid/graphics/Point;
    iget p2, v0, Landroid/graphics/Point;->x:I

    .line 79
    iget p3, v0, Landroid/graphics/Point;->y:I

    .line 81
    .end local v0    # "center":Landroid/graphics/Point;
    :cond_0
    iget v2, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mRadius:I

    invoke-static {p1, p2, p3, v2, v1}, Lcn/jingling/lib/filters/detection/EyeCorrector;->fillBorders(Landroid/graphics/Bitmap;IIILcn/jingling/lib/filters/detection/EyeCorrector$Params;)Z

    .line 82
    invoke-direct {p0, p1, v1, p2, p3}, Lcn/jingling/lib/filters/partial/EyeEnlarge;->updateBitmap(Landroid/graphics/Bitmap;Lcn/jingling/lib/filters/detection/EyeCorrector$Params;II)V

    .line 83
    return-void
.end method

.method private updateBitmap(Landroid/graphics/Bitmap;Lcn/jingling/lib/filters/detection/EyeCorrector$Params;II)V
    .locals 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "p"    # Lcn/jingling/lib/filters/detection/EyeCorrector$Params;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v9, 0x0

    .line 86
    iget v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mX:[I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    aput p3, v0, v1

    .line 90
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mY:[I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    aput p4, v0, v1

    .line 91
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mR:[I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mRadius:I

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mScale:[F

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    const v2, 0x3dcccccd    # 0.1f

    aput v2, v0, v1

    .line 93
    iget v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    .line 95
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mOriginalPixels:[I

    iget-object v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mPerformedPixels:[I

    iget v2, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    iget-object v4, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mX:[I

    iget-object v5, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mY:[I

    .line 96
    iget-object v6, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mR:[I

    iget-object v7, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mScale:[F

    iget v8, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    .line 95
    invoke-static/range {v0 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->eyeEnlargeWithTags([I[III[I[I[I[FI)V

    .line 97
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mPerformedPixels:[I

    iget v3, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v6, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v7, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    move-object v0, p1

    move v2, v9

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 60
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 61
    .local v0, "x":I
    iget v1, p2, Landroid/graphics/Point;->y:I

    .line 62
    .local v1, "y":I
    invoke-direct {p0, p1, v0, v1}, Lcn/jingling/lib/filters/partial/EyeEnlarge;->enlarge(Landroid/graphics/Bitmap;II)V

    .line 63
    return-object p1
.end method

.method public enlarge(Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "p"    # Landroid/graphics/Point;

    .prologue
    .line 71
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0, v1}, Lcn/jingling/lib/filters/partial/EyeEnlarge;->enlarge(Landroid/graphics/Bitmap;II)V

    .line 72
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcn/jingling/lib/filters/PartialFilter;->release()V

    .line 103
    return-void
.end method

.method public setEyeFinderEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mEnableEyeFinder:Z

    .line 68
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v9, 0x1e

    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 36
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mRadius:I

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    .line 39
    iget v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mOriginalPixels:[I

    .line 40
    iget-object v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mOriginalPixels:[I

    iget v3, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v6, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v7, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mOriginalPixels:[I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v3, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    mul-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mPerformedPixels:[I

    .line 42
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mWidth:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mHeight:I

    mul-int/2addr v0, v1

    if-lt v8, v0, :cond_0

    .line 45
    new-array v0, v9, [I

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mX:[I

    .line 46
    new-array v0, v9, [I

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mY:[I

    .line 47
    new-array v0, v9, [I

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mR:[I

    .line 48
    new-array v0, v9, [F

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mScale:[F

    .line 49
    iput v2, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mNum:I

    .line 50
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mPerformedPixels:[I

    iget-object v1, p0, Lcn/jingling/lib/filters/partial/EyeEnlarge;->mOriginalPixels:[I

    aget v1, v1, v8

    aput v1, v0, v8

    .line 42
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
