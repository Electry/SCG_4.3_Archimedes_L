.class public Lcn/jingling/lib/filters/detection/FaceDetection;
.super Ljava/lang/Object;
.source "FaceDetection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;I)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v0

    return-object v0
.end method

.method public static detect(Landroid/graphics/Bitmap;I)Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    .locals 14
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "numOfFaces"    # I

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 27
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 28
    .local v1, "eyeMidPoint":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 29
    .local v2, "eyesDistance":F
    new-instance v5, Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    invoke-direct {v5}, Lcn/jingling/lib/filters/detection/FaceDetectorResults;-><init>()V

    .line 32
    .local v5, "faceDetectorResults":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 33
    .local v8, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v12, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    new-instance v4, Landroid/media/FaceDetector;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 36
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 35
    invoke-direct {v4, v9, v10, p1}, Landroid/media/FaceDetector;-><init>(III)V

    .line 37
    .local v4, "faceDetector":Landroid/media/FaceDetector;
    new-array v3, p1, [Landroid/media/FaceDetector$Face;

    .line 39
    .local v3, "face":[Landroid/media/FaceDetector$Face;
    invoke-virtual {v4, v8, v3}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result p1

    .line 42
    new-array v9, p1, [Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    iput-object v9, v5, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    .line 43
    if-lez p1, :cond_0

    .line 44
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, p1, :cond_2

    .line 67
    .end local v7    # "i":I
    :cond_0
    return-object v5

    .line 32
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "face":[Landroid/media/FaceDetector$Face;
    .end local v4    # "faceDetector":Landroid/media/FaceDetector;
    .end local v8    # "myBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 45
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "face":[Landroid/media/FaceDetector$Face;
    .restart local v4    # "faceDetector":Landroid/media/FaceDetector;
    .restart local v7    # "i":I
    .restart local v8    # "myBitmap":Landroid/graphics/Bitmap;
    :cond_2
    aget-object v9, v3, v7

    invoke-virtual {v9, v1}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 46
    aget-object v9, v3, v7

    invoke-virtual {v9}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v2

    .line 47
    new-instance v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    invoke-direct {v6}, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;-><init>()V

    .line 52
    .local v6, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    .line 53
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    .line 54
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 55
    div-float v11, v2, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    .line 54
    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 56
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 57
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 58
    div-float v11, v2, v13

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 57
    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 59
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 60
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    .line 61
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    iget-object v10, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 62
    iget-object v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    iget-object v10, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x5

    add-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 63
    float-to-int v9, v2

    iput v9, v6, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->eyeDistance:I

    .line 64
    iget-object v9, v5, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aput-object v6, v9, v7

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method
