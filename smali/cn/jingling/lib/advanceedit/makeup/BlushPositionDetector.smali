.class public Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;
.super Ljava/lang/Object;
.source "BlushPositionDetector.java"


# instance fields
.field mBitmapRight:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field mEyeDistance:I

.field mGroundBitmap:Landroid/graphics/Bitmap;

.field mLeft:Landroid/graphics/Point;

.field mMouth:Landroid/graphics/Point;

.field mRight:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "groundBm"    # Landroid/graphics/Bitmap;
    .param p2, "BlushBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mLeft:Landroid/graphics/Point;

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mRight:Landroid/graphics/Point;

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mMouth:Landroid/graphics/Point;

    .line 30
    iput-object p1, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method private adjustBlushPosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 79
    .local v0, "leftBlushPosition":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 82
    .local v1, "rightBlushPosition":Landroid/graphics/Point;
    iget v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mEyeDistance:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 85
    .local v2, "scale":F
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 87
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 91
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 92
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 94
    new-instance v3, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;

    invoke-direct {v3, v0, v1, v2}, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    return-object v3
.end method

.method private detectFace()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    new-instance v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .end local v1    # "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    invoke-direct {v1}, Lcn/jingling/lib/filters/detection/FaceDetectorResults;-><init>()V

    .line 53
    .restart local v1    # "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v1

    .line 55
    iget-object v3, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    iget-object v3, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v3, v2

    .line 61
    .local v0, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mLeft:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 63
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mLeft:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 64
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mRight:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 65
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mRight:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 66
    iget v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->eyeDistance:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mEyeDistance:I

    .line 67
    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->mMouth:Landroid/graphics/Point;

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public detectBlushPosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
    .locals 1

    .prologue
    .line 38
    const-string v0, "MakeupBlush"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->detectFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcn/jingling/lib/advanceedit/makeup/BlushPositionDetector;->adjustBlushPosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
