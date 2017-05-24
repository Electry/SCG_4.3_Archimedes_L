.class public Lcn/jingling/lib/filters/onekey/Bilateral;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Bilateral.java"


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
    .locals 29
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/Bilateral;->statisticEvent()V

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 17
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 18
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 19
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    const/4 v12, 0x7

    .line 22
    .local v12, "sigma":I
    const/16 v11, 0x9

    .line 23
    .local v11, "radius":I
    const/16 v10, 0xa

    .local v10, "delta":I
    move-object v7, v3

    move v8, v5

    .line 24
    invoke-static/range {v7 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->Bilateral([IIIIII)V

    .line 27
    new-instance v27, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/test4.amp"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .local v27, "c":Lcn/jingling/lib/filters/Curve;
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v28

    .line 29
    .local v28, "hn":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 31
    :cond_0
    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 32
    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v16

    .line 33
    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v17

    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v18

    move-object v13, v3

    move v14, v5

    move v15, v9

    .line 32
    invoke-static/range {v13 .. v18}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 34
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 49
    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 50
    return-object p2

    .line 38
    :cond_1
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    .line 39
    .local v18, "leftx":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 40
    .local v17, "lefty":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    .line 41
    .local v20, "rightx":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 42
    .local v19, "righty":I
    const/16 v16, 0x1

    move-object v13, v3

    move v14, v5

    move v15, v9

    invoke-static/range {v13 .. v20}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->whiten([IIIIIIII)V

    .line 43
    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 44
    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v24

    .line 45
    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v25

    invoke-virtual/range {v27 .. v27}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v26

    move-object/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v9

    .line 44
    invoke-static/range {v21 .. v26}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 46
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    goto :goto_0
.end method
