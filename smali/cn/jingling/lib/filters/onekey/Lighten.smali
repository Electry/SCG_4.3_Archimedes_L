.class public Lcn/jingling/lib/filters/onekey/Lighten;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Lighten.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/Lighten;->statisticEvent()V

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 18
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 20
    .local v8, "h":I
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v15

    .line 21
    .local v15, "rets":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    iget-object v1, v15, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 22
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 23
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    iget-object v1, v15, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v14, v1, v3

    .line 27
    .local v14, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    iget-object v1, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v9, v1, v3

    iget-object v1, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    mul-int/lit8 v10, v1, 0x2

    iget-object v1, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v11, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, v14, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    move-object v6, v2

    move v7, v4

    invoke-static/range {v6 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->LightenDemo([IIIIIII)I

    move-result v16

    .line 28
    .local v16, "tmpJudge":I
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    .line 30
    new-instance v13, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/test4_dark.amp"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .local v13, "c":Lcn/jingling/lib/filters/Curve;
    :goto_0
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v4, v8, v1, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 38
    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v9

    .line 39
    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v10

    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v11

    move-object v6, v2

    move v7, v4

    .line 38
    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 40
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 42
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 57
    .end local v14    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    .end local v16    # "tmpJudge":I
    :goto_1
    return-object p2

    .line 34
    .end local v13    # "c":Lcn/jingling/lib/filters/Curve;
    .restart local v14    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    .restart local v16    # "tmpJudge":I
    :cond_0
    new-instance v13, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/test4.amp"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v13    # "c":Lcn/jingling/lib/filters/Curve;
    goto :goto_0

    .line 46
    .end local v2    # "pixels":[I
    .end local v13    # "c":Lcn/jingling/lib/filters/Curve;
    .end local v14    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    .end local v16    # "tmpJudge":I
    :cond_1
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 47
    .restart local v2    # "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 48
    new-instance v13, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/test4.amp"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .restart local v13    # "c":Lcn/jingling/lib/filters/Curve;
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v4, v8, v1, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 50
    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v9

    .line 51
    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v10

    invoke-virtual {v13}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v11

    move-object v6, v2

    move v7, v4

    .line 50
    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 52
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 54
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1
.end method
