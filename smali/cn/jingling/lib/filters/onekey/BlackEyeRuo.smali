.class public Lcn/jingling/lib/filters/onekey/BlackEyeRuo;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "BlackEyeRuo.java"


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
    .locals 21
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/BlackEyeRuo;->statisticEvent()V

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 17
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 18
    .local v8, "h":I
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v20

    .line 19
    .local v20, "rets":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    move-object/from16 v0, v20

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 20
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 21
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    move-object/from16 v0, v20

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v19, v1, v3

    .line 23
    .local v19, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v9, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x3

    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v12, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v13, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    div-int/lit8 v14, v1, 0x3

    const/16 v18, 0x46

    move-object v15, v2

    move/from16 v16, v4

    move/from16 v17, v8

    invoke-static/range {v9 .. v18}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->InitializeCircle(IIIIII[IIII)V

    .line 24
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 27
    .end local v2    # "pixels":[I
    .end local v19    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    :cond_0
    return-object p2
.end method
