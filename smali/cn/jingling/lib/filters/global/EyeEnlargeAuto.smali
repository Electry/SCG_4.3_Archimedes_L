.class public Lcn/jingling/lib/filters/global/EyeEnlargeAuto;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "EyeEnlargeAuto.java"


# instance fields
.field private mEnableEyeFinder:Z

.field private mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

.field private mTempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mEnableEyeFinder:Z

    .line 17
    new-instance v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    invoke-direct {v0}, Lcn/jingling/lib/filters/detection/FaceDetectorResults;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .line 13
    return-void
.end method

.method private enlarge(Landroid/graphics/Bitmap;III)V
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "degree"    # I

    .prologue
    .line 41
    new-instance v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;

    invoke-direct {v9}, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;-><init>()V

    .line 44
    .local v9, "p":Lcn/jingling/lib/filters/detection/EyeCorrector$Params;
    iget-boolean v0, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mEnableEyeFinder:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcn/jingling/lib/filters/detection/EyeCorrector;

    invoke-direct {v0}, Lcn/jingling/lib/filters/detection/EyeCorrector;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcn/jingling/lib/filters/detection/EyeCorrector;->getRealEyeCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Point;

    move-result-object v8

    .line 46
    .local v8, "center":Landroid/graphics/Point;
    iget p2, v8, Landroid/graphics/Point;->x:I

    .line 47
    iget p3, v8, Landroid/graphics/Point;->y:I

    .line 49
    .end local v8    # "center":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v10, v0, 0x8

    .line 50
    .local v10, "r":I
    invoke-static {p1, p2, p3, v10, v9}, Lcn/jingling/lib/filters/detection/EyeCorrector;->fillBorders(Landroid/graphics/Bitmap;IIILcn/jingling/lib/filters/detection/EyeCorrector$Params;)Z

    .line 51
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v2, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    mul-int/2addr v0, v2

    new-array v1, v0, [I

    .line 52
    .local v1, "pixels":[I
    const/4 v2, 0x0

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v4, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    iget v5, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    iget v6, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v7, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 53
    iget v2, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    sub-int v4, p2, v0

    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    sub-int v5, p3, v0

    .line 54
    int-to-float v0, p4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v7, v0, v6

    move v6, v10

    .line 53
    invoke-static/range {v1 .. v7}, Lcn/jingling/lib/filters/CMTProcessor;->eyeEnlarge([IIIIIIF)V

    .line 55
    const/4 v2, 0x0

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v4, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    iget v5, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    iget v6, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v7, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 56
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    iget-object v1, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mTempBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 63
    iget-object v3, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    iget-object v3, v3, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 62
    invoke-direct {p0, v1, v2, v3, p2}, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->enlarge(Landroid/graphics/Bitmap;III)V

    .line 64
    iget-object v1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mTempBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 65
    iget-object v3, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    iget-object v3, v3, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 64
    invoke-direct {p0, v1, v2, v3, p2}, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->enlarge(Landroid/graphics/Bitmap;III)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 73
    return-void
.end method

.method public setEyeFinderEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mEnableEyeFinder:Z

    .line 38
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 24
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    new-instance v8, Lcn/jingling/lib/filters/detection/FaceDetection;

    invoke-direct {v8}, Lcn/jingling/lib/filters/detection/FaceDetection;-><init>()V

    .line 27
    .local v8, "fd":Lcn/jingling/lib/filters/detection/FaceDetection;
    invoke-static {p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;->mFaceDetectorResults:Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .line 34
    return-void
.end method
