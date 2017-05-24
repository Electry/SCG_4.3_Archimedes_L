.class public Lcn/jingling/lib/filters/onekey/EyeBrighten;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "EyeBrighten.java"


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
    .locals 22
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/EyeBrighten;->statisticEvent()V

    .line 17
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v20

    .line 18
    .local v20, "result":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    move-object/from16 v0, v20

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 35
    :goto_0
    return-object p2

    .line 21
    :cond_0
    move-object/from16 v0, v20

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v19, v1, v3

    .line 22
    .local v19, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 23
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 24
    .local v8, "h":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v11, v1, 0x3

    .line 25
    .local v11, "d":I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v5, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0xc

    sub-int v21, v1, v3

    .line 26
    .local v21, "y":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 27
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 28
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v11, 0x2

    sub-int v9, v1, v3

    div-int/lit8 v1, v11, 0x2

    sub-int v10, v21, v1

    move-object v6, v2

    move v7, v4

    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/IntelligentBeautify;->getFullPixels([IIIIII)[I

    move-result-object v15

    .line 29
    .local v15, "eye":[I
    const/16 v1, 0x41

    invoke-static {v15, v11, v1}, Lcn/jingling/lib/filters/CMTProcessor;->eyeBrighten([III)V

    .line 30
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v11, 0x2

    sub-int v16, v1, v3

    div-int/lit8 v1, v11, 0x2

    sub-int v17, v21, v1

    move-object v12, v2

    move v13, v4

    move v14, v8

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcn/jingling/lib/filters/IntelligentBeautify;->setFullPixels([III[IIII)V

    .line 31
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v11, 0x2

    sub-int v9, v1, v3

    div-int/lit8 v1, v11, 0x2

    sub-int v10, v21, v1

    move-object v6, v2

    move v7, v4

    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/IntelligentBeautify;->getFullPixels([IIIIII)[I

    move-result-object v15

    .line 32
    const/16 v1, 0x41

    invoke-static {v15, v11, v1}, Lcn/jingling/lib/filters/CMTProcessor;->eyeBrighten([III)V

    .line 33
    move-object/from16 v0, v19

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v11, 0x2

    sub-int v16, v1, v3

    div-int/lit8 v1, v11, 0x2

    sub-int v17, v21, v1

    move-object v12, v2

    move v13, v4

    move v14, v8

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcn/jingling/lib/filters/IntelligentBeautify;->setFullPixels([III[IIII)V

    .line 34
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
