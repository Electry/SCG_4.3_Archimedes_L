.class public Lcn/jingling/lib/filters/onekey/CameraSelf;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraSelf.java"


# static fields
.field private static final VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/jingling/lib/filters/onekey/CameraSelf;->VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x19
        0x28
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method public static applyBeautify(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .locals 38
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "performed"    # Landroid/graphics/Bitmap;
    .param p2, "beautify"    # [I
    .param p3, "status"    # Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .param p4, "result"    # Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .prologue
    .line 39
    const/4 v2, 0x0

    aget v2, p2, v2

    if-gez v2, :cond_0

    .line 40
    const/16 v36, 0x1

    .local v36, "ranf":I
    const/16 v35, -0x1

    .line 41
    .local v35, "rane":I
    const/4 v2, 0x0

    aget v2, p2, v2

    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v37, v0

    const/4 v2, 0x0

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    mul-double v12, v12, v16

    const-wide/high16 v16, 0x405e000000000000L    # 120.0

    add-double v12, v12, v16

    double-to-int v4, v12

    mul-int v4, v4, v36

    aput v4, v37, v2

    const/4 v2, 0x1

    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    mul-double v12, v12, v16

    const-wide/high16 v16, 0x405e000000000000L    # 120.0

    add-double v12, v12, v16

    double-to-int v4, v12

    mul-int v4, v4, v35

    aput v4, v37, v2

    const/4 v2, 0x2

    const/16 v4, 0x28

    aput v4, v37, v2

    const/4 v2, 0x3

    const/16 v4, 0x1e

    .line 59
    aput v4, v37, v2

    .line 61
    .local v37, "temp":[I
    move-object/from16 p2, v37

    .line 63
    .end local v35    # "rane":I
    .end local v36    # "ranf":I
    .end local v37    # "temp":[I
    :cond_0
    sget-object v2, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 64
    invoke-static/range {p0 .. p0}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object p4

    .line 66
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 67
    .local v11, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 69
    .local v15, "h":I
    const/16 v19, 0x0

    .line 70
    .local v19, "hmin":I
    const/16 v20, 0x28

    .line 71
    .local v20, "hmax":I
    const/16 v21, 0x0

    .line 72
    .local v21, "smin":I
    const/16 v22, 0xff

    .line 73
    .local v22, "smax":I
    const/16 v23, 0x14

    .line 74
    .local v23, "vmin":I
    const/16 v24, 0xff

    .line 75
    .local v24, "vmax":I
    sget-object v2, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 76
    move-object/from16 v0, p4

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v34, v2, v4

    .line 77
    .local v34, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    move-object/from16 v0, v34

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget-object v4, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v5, v2, 0x3

    .line 78
    .local v5, "size":I
    move-object/from16 v0, v34

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v4, v5, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int v6, v2, v4

    .line 79
    .local v6, "x":I
    move-object/from16 v0, v34

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v5, 0x2

    add-int v7, v2, v4

    .line 80
    .local v7, "y":I
    if-ltz v6, :cond_2

    add-int v2, v6, v5

    if-gt v2, v11, :cond_2

    if-ltz v7, :cond_2

    add-int v2, v7, v5

    if-gt v2, v15, :cond_2

    .line 81
    mul-int v2, v5, v5

    new-array v3, v2, [I

    .line 82
    .local v3, "skin":[I
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move v8, v5

    move v9, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 83
    invoke-static {v3, v5, v5}, Lcn/jingling/lib/filters/CMTProcessor;->computeHueExpectationAndVariance([III)Lcn/jingling/lib/filters/ExpVar;

    move-result-object v33

    .line 85
    .local v33, "ev":Lcn/jingling/lib/filters/ExpVar;
    move-object/from16 v0, v33

    iget v2, v0, Lcn/jingling/lib/filters/ExpVar;->var:I

    const/16 v4, 0x64

    if-gt v2, v4, :cond_2

    .line 86
    move-object/from16 v0, v33

    iget v2, v0, Lcn/jingling/lib/filters/ExpVar;->expect:I

    add-int/lit8 v2, v2, -0xf

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 87
    move-object/from16 v0, v33

    iget v2, v0, Lcn/jingling/lib/filters/ExpVar;->expect:I

    add-int/lit8 v2, v2, 0xf

    const/16 v4, 0xb4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 91
    .end local v3    # "skin":[I
    .end local v5    # "size":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v33    # "ev":Lcn/jingling/lib/filters/ExpVar;
    .end local v34    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    :cond_2
    mul-int v2, v11, v15

    new-array v9, v2, [I

    .line 92
    .local v9, "pixels":[I
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 93
    const/4 v2, 0x2

    aget v2, p2, v2

    if-eqz v2, :cond_3

    .line 95
    const/16 v16, 0x5

    const/16 v17, 0xa

    const/4 v2, 0x2

    aget v2, p2, v2

    mul-int/lit16 v2, v2, 0x100

    div-int/lit8 v18, v2, 0x64

    move-object v13, v9

    move v14, v11

    .line 94
    invoke-static/range {v13 .. v24}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlurWithThresholdWeightSkinDetection([IIIIIIIIIIII)V

    .line 97
    :cond_3
    const/4 v2, 0x3

    aget v2, p2, v2

    if-eqz v2, :cond_4

    .line 98
    const/4 v2, 0x3

    aget v2, p2, v2

    mul-int/lit8 v2, v2, 0x14

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x32

    invoke-static {v9, v11, v15, v2}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 99
    const/16 v2, -0xa

    invoke-static {v9, v11, v15, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 101
    :cond_4
    sget-object v2, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 102
    move-object/from16 v0, p4

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v34, v2, v4

    .line 103
    .restart local v34    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    move-object/from16 v29, v0

    .line 104
    move-object/from16 v0, v34

    iget-object v0, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    move-object/from16 v30, v0

    const/4 v2, 0x1

    aget v31, p2, v2

    const/4 v2, 0x0

    aget v32, p2, v2

    move-object/from16 v25, v9

    move/from16 v26, v11

    move/from16 v27, v15

    .line 103
    invoke-static/range {v25 .. v32}, Lcn/jingling/lib/filters/IntelligentBeautify;->partialFaceProcess([IIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 106
    .end local v34    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    :cond_5
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 107
    return-object p3

    .line 43
    .end local v9    # "pixels":[I
    .end local v11    # "w":I
    .end local v15    # "h":I
    .end local v19    # "hmin":I
    .end local v20    # "hmax":I
    .end local v21    # "smin":I
    .end local v22    # "smax":I
    .end local v23    # "vmin":I
    .end local v24    # "vmax":I
    .restart local v35    # "rane":I
    .restart local v36    # "ranf":I
    :pswitch_0
    const/16 v36, -0x1

    .line 44
    const/16 v35, -0x1

    .line 45
    goto/16 :goto_0

    .line 47
    :pswitch_1
    const/16 v36, -0x1

    .line 48
    const/16 v35, 0x1

    .line 49
    goto/16 :goto_0

    .line 51
    :pswitch_2
    const/16 v36, 0x1

    .line 52
    const/16 v35, -0x1

    .line 53
    goto/16 :goto_0

    .line 55
    :pswitch_3
    const/16 v36, 0x1

    .line 56
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/CameraSelf;->statisticEvent()V

    .line 22
    sget-object v0, Lcn/jingling/lib/filters/onekey/CameraSelf;->VALUES:[I

    sget-object v1, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const/4 v2, 0x0

    invoke-static {p2, p2, v0, v1, v2}, Lcn/jingling/lib/filters/onekey/CameraSelf;->applyBeautify(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 23
    return-object p2
.end method
