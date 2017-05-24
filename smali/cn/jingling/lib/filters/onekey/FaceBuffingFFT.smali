.class public Lcn/jingling/lib/filters/onekey/FaceBuffingFFT;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "FaceBuffingFFT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method public static findEyesAndMouth(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # Landroid/graphics/Point;
    .param p2, "right"    # Landroid/graphics/Point;
    .param p3, "mouth"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v8, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 65
    .local v2, "faceBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/FaceDetector;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 65
    invoke-direct {v4, v8, v9, v7}, Landroid/media/FaceDetector;-><init>(III)V

    .line 67
    .local v4, "fd":Landroid/media/FaceDetector;
    new-array v3, v7, [Landroid/media/FaceDetector$Face;

    .line 68
    .local v3, "faces":[Landroid/media/FaceDetector$Face;
    invoke-virtual {v4, v2, v3}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    .line 69
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    const/4 v2, 0x0

    .line 71
    aget-object v1, v3, v6

    .line 72
    .local v1, "face":Landroid/media/FaceDetector$Face;
    if-nez v1, :cond_0

    .line 84
    :goto_0
    return v6

    .line 75
    :cond_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 76
    .local v5, "mid":Landroid/graphics/PointF;
    invoke-virtual {v1, v5}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 77
    invoke-virtual {v1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v6

    float-to-int v0, v6

    .line 78
    .local v0, "eyeDist":I
    iget v6, v5, Landroid/graphics/PointF;->x:F

    div-int/lit8 v8, v0, 0x2

    int-to-float v8, v8

    sub-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 79
    iget v6, v5, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Point;->y:I

    .line 80
    iget v6, v5, Landroid/graphics/PointF;->x:F

    div-int/lit8 v8, v0, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p2, Landroid/graphics/Point;->x:I

    .line 81
    iget v6, v5, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    iput v6, p2, Landroid/graphics/Point;->y:I

    .line 82
    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 83
    iget v6, p1, Landroid/graphics/Point;->y:I

    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    div-int/lit8 v8, v8, 0x5

    add-int/2addr v6, v8

    iput v6, p3, Landroid/graphics/Point;->y:I

    move v6, v7

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/FaceBuffingFFT;->statisticEvent()V

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 25
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 26
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 27
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    new-instance v21, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/test4.amp"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .local v21, "c":Lcn/jingling/lib/filters/Curve;
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v22

    .line 37
    .local v22, "hn":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 39
    :cond_0
    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 40
    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    .line 41
    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    move-object v7, v3

    move v8, v5

    .line 40
    invoke-static/range {v7 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingBackup([III[I[I[I)V

    .line 42
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 57
    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 59
    return-object p2

    .line 46
    :cond_1
    move-object/from16 v0, v22

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    .line 47
    .local v12, "leftx":I
    move-object/from16 v0, v22

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    .line 48
    .local v11, "lefty":I
    move-object/from16 v0, v22

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v14, v2, Landroid/graphics/Point;->x:I

    .line 49
    .local v14, "rightx":I
    move-object/from16 v0, v22

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->y:I

    .line 50
    .local v13, "righty":I
    const/4 v10, 0x1

    move-object v7, v3

    move v8, v5

    invoke-static/range {v7 .. v14}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->whiten([IIIIIIII)V

    .line 51
    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 52
    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v18

    .line 53
    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v20

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    .line 52
    invoke-static/range {v15 .. v20}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingBackup([III[I[I[I)V

    .line 54
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    goto :goto_0
.end method
