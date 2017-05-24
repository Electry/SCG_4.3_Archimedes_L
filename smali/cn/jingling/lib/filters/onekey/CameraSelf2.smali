.class public Lcn/jingling/lib/filters/onekey/CameraSelf2;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraSelf2.java"


# static fields
.field private static final STATISTIC_LABEL:Ljava/lang/String; = "AutoBeautify"

.field private static final VALUES:[I

.field private static mSmoothInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/jingling/lib/filters/onekey/CameraSelf2;->VALUES:[I

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jingling/lib/filters/onekey/CameraSelf2;->mSmoothInited:Z

    return-void

    .line 18
    :array_0
    .array-data 4
        0x23
        0x23
        0x5a
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method public static applyBeautify(Landroid/content/Context;Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "beautify"    # [I

    .prologue
    .line 31
    sget-object v4, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/onekey/CameraSelf2;->applyBeautify(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 32
    invoke-static {}, Lcn/jingling/lib/filters/onekey/CameraSelf2;->release()V

    .line 33
    const-string v0, "AutoBeautify"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 34
    return-object p1
.end method

.method public static applyBeautify(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .locals 19
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "performed"    # Landroid/graphics/Bitmap;
    .param p3, "beautify"    # [I
    .param p4, "status"    # Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .param p5, "results"    # Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .prologue
    .line 49
    const/4 v2, 0x0

    aget v2, p3, v2

    if-gez v2, :cond_0

    .line 50
    const/16 v17, 0x1

    .local v17, "ranf":I
    const/16 v16, -0x1

    .line 51
    .local v16, "rane":I
    const/4 v2, 0x0

    aget v2, p3, v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    .line 69
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x405e000000000000L    # 120.0

    add-double/2addr v6, v10

    double-to-int v4, v6

    mul-int v4, v4, v17

    aput v4, v18, v2

    const/4 v2, 0x1

    .line 70
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x405e000000000000L    # 120.0

    add-double/2addr v6, v10

    double-to-int v4, v6

    mul-int v4, v4, v16

    aput v4, v18, v2

    const/4 v2, 0x2

    const/16 v4, 0x28

    aput v4, v18, v2

    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 69
    aput v4, v18, v2

    .line 71
    .local v18, "temp":[I
    move-object/from16 p3, v18

    .line 73
    .end local v16    # "rane":I
    .end local v17    # "ranf":I
    .end local v18    # "temp":[I
    :cond_0
    sget-object v2, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 75
    invoke-static/range {p1 .. p1}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->copy(Lcn/jingling/lib/filters/detection/FaceDetectorResults;)V

    .line 77
    move-object/from16 v0, p5

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 78
    sget-object p4, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 83
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 84
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 85
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 86
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 87
    sget-boolean v2, Lcn/jingling/lib/filters/onekey/CameraSelf2;->mSmoothInited:Z

    if-nez v2, :cond_2

    .line 88
    const/16 v2, 0xa

    const/4 v4, 0x1

    invoke-static {v3, v5, v9, v2, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 89
    const/4 v2, 0x1

    sput-boolean v2, Lcn/jingling/lib/filters/onekey/CameraSelf2;->mSmoothInited:Z

    .line 91
    :cond_2
    new-instance v15, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/skin_smooth.dat"

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .local v15, "curve":Lcn/jingling/lib/filters/Curve;
    const/4 v2, 0x2

    aget v2, p3, v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    const/4 v2, 0x2

    aget v13, p3, v2

    move-object v7, v3

    move v8, v5

    invoke-static/range {v7 .. v13}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingWeight([III[I[I[II)V

    .line 95
    :cond_3
    const/4 v2, 0x3

    aget v2, p3, v2

    if-eqz v2, :cond_4

    .line 96
    const/4 v2, 0x3

    aget v2, p3, v2

    mul-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x28

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 97
    const/16 v2, -0xa

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 99
    :cond_4
    sget-object v2, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 100
    const/4 v2, 0x1

    aget v2, p3, v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    aget v2, p3, v2

    if-eqz v2, :cond_6

    .line 101
    :cond_5
    move-object/from16 v0, p5

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v10, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v11, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    .line 102
    move-object/from16 v0, p5

    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v12, v2, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    const/4 v2, 0x1

    aget v13, p3, v2

    const/4 v2, 0x0

    aget v14, p3, v2

    move-object v7, v3

    move v8, v5

    .line 101
    invoke-static/range {v7 .. v14}, Lcn/jingling/lib/filters/IntelligentBeautify;->partialFaceProcess([IIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 105
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 106
    const-string v2, "AutoBeautify"

    invoke-static {v2}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 107
    return-object p4

    .line 53
    .end local v3    # "pixels":[I
    .end local v5    # "w":I
    .end local v9    # "h":I
    .end local v15    # "curve":Lcn/jingling/lib/filters/Curve;
    .restart local v16    # "rane":I
    .restart local v17    # "ranf":I
    :pswitch_0
    const/16 v17, -0x1

    .line 54
    const/16 v16, -0x1

    .line 55
    goto/16 :goto_0

    .line 57
    :pswitch_1
    const/16 v17, -0x1

    .line 58
    const/16 v16, 0x1

    .line 59
    goto/16 :goto_0

    .line 61
    :pswitch_2
    const/16 v17, 0x1

    .line 62
    const/16 v16, -0x1

    .line 63
    goto/16 :goto_0

    .line 65
    :pswitch_3
    const/16 v17, 0x1

    .line 66
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 80
    .end local v16    # "rane":I
    .end local v17    # "ranf":I
    :cond_7
    sget-object p4, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->NEGTIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    goto/16 :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcn/jingling/lib/filters/onekey/CameraSelf2;->mSmoothInited:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jingling/lib/filters/onekey/CameraSelf2;->mSmoothInited:Z

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    sget-object v3, Lcn/jingling/lib/filters/onekey/CameraSelf2;->VALUES:[I

    sget-object v4, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/onekey/CameraSelf2;->applyBeautify(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[ILcn/jingling/lib/filters/detection/FaceDetectionStatus;Lcn/jingling/lib/filters/detection/FaceDetectorResults;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 26
    const-string v0, "AutoBeautify"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 27
    return-object p2
.end method
