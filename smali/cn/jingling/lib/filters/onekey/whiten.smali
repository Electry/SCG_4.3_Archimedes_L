.class public Lcn/jingling/lib/filters/onekey/whiten;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "whiten.java"


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
    .locals 17
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/whiten;->statisticEvent()V

    .line 16
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 17
    .local v14, "left":Landroid/graphics/Point;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 18
    .local v16, "right":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 19
    .local v15, "mouth":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 20
    .local v3, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 22
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 23
    .local v1, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 24
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v13

    .line 26
    .local v13, "hn":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    if-eqz v13, :cond_0

    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 28
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 43
    :goto_0
    return-object p2

    .line 32
    :cond_1
    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 33
    .local v10, "leftx":I
    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 34
    .local v9, "lefty":I
    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v12, v0, Landroid/graphics/Point;->x:I

    .line 35
    .local v12, "rightx":I
    iget-object v0, v13, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 36
    .local v11, "righty":I
    const/4 v8, 0x1

    move-object v5, v1

    move v6, v3

    invoke-static/range {v5 .. v12}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->whiten([IIIIIIII)V

    .line 37
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method
