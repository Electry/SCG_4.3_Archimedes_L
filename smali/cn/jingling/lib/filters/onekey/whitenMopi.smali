.class public Lcn/jingling/lib/filters/onekey/whitenMopi;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "whitenMopi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/whitenMopi;->statisticEvent()V

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 20
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 21
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 22
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 30
    new-instance v12, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/Mopi.amp"

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .local v12, "c":Lcn/jingling/lib/filters/Curve;
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v13

    .line 32
    .local v13, "hn":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    if-eqz v13, :cond_0

    iget-object v1, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 34
    :cond_0
    const/16 v1, 0xa

    const/4 v3, 0x1

    invoke-static {v2, v4, v8, v1, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 35
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v9

    .line 36
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v10

    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v11

    move-object v6, v2

    move v7, v4

    .line 35
    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 37
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 52
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 54
    return-object p2

    .line 41
    :cond_1
    iget-object v1, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v1, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 42
    .local v14, "leftx":I
    iget-object v1, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v1, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v15, v1, Landroid/graphics/Point;->y:I

    .line 43
    .local v15, "lefty":I
    iget-object v1, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v1, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    .line 44
    .local v16, "rightx":I
    iget-object v1, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v1, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 46
    .local v17, "righty":I
    const/16 v1, 0xa

    const/4 v3, 0x1

    invoke-static {v2, v4, v8, v1, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 47
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v9

    .line 48
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v10

    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v11

    move-object v6, v2

    move v7, v4

    .line 47
    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 49
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    goto :goto_0
.end method
