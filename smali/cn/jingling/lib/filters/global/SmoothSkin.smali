.class public Lcn/jingling/lib/filters/global/SmoothSkin;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "SmoothSkin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmoothSkin"


# instance fields
.field private mLeft:Landroid/graphics/Point;

.field private mMouth:Landroid/graphics/Point;

.field private mPerformedBitmap:Landroid/graphics/Bitmap;

.field private mRight:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    return-void
.end method

.method public static setup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 27
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "perform"    # Landroid/graphics/Bitmap;
    .param p2, "debug"    # Z

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 24
    .local v10, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 25
    .local v14, "h":I
    const/16 v18, 0x0

    .line 26
    .local v18, "hmin":I
    const/16 v19, 0x28

    .line 27
    .local v19, "hmax":I
    const/16 v20, 0x0

    .line 28
    .local v20, "smin":I
    const/16 v21, 0xff

    .line 29
    .local v21, "smax":I
    const/16 v22, 0x14

    .line 30
    .local v22, "vmin":I
    if-eqz p2, :cond_2

    .line 31
    const/16 v23, 0xfe

    .line 35
    .local v23, "vmax":I
    :goto_0
    invoke-static/range {p0 .. p0}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v26

    .line 36
    .local v26, "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    move-object/from16 v0, v26

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 37
    move-object/from16 v0, v26

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    const/4 v3, 0x0

    aget-object v25, v1, v3

    .line 38
    .local v25, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    move-object/from16 v0, v25

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v4, v1, 0x3

    .line 39
    .local v4, "size":I
    move-object/from16 v0, v25

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v4, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v5, v1, v3

    .line 40
    .local v5, "x":I
    move-object/from16 v0, v25

    iget-object v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v4, 0x2

    add-int v6, v1, v3

    .line 41
    .local v6, "y":I
    if-ltz v5, :cond_1

    add-int v1, v5, v4

    if-gt v1, v10, :cond_1

    if-ltz v6, :cond_1

    add-int v1, v6, v4

    if-gt v1, v14, :cond_1

    .line 42
    mul-int v1, v4, v4

    new-array v2, v1, [I

    .line 43
    .local v2, "skin":[I
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v7, v4

    move v8, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 44
    invoke-static {v2, v4, v4}, Lcn/jingling/lib/filters/CMTProcessor;->computeHueExpectationAndVariance([III)Lcn/jingling/lib/filters/ExpVar;

    move-result-object v24

    .line 46
    .local v24, "ev":Lcn/jingling/lib/filters/ExpVar;
    if-eqz p2, :cond_0

    .line 47
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v7, v4

    move v8, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 50
    :cond_0
    const-string v1, "SmoothSkin"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "expectation and veriance: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, v24

    iget v7, v0, Lcn/jingling/lib/filters/ExpVar;->expect:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "   "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    move-object/from16 v0, v24

    iget v7, v0, Lcn/jingling/lib/filters/ExpVar;->var:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, v24

    iget v1, v0, Lcn/jingling/lib/filters/ExpVar;->var:I

    const/16 v3, 0x64

    if-gt v1, v3, :cond_1

    .line 55
    move-object/from16 v0, v24

    iget v1, v0, Lcn/jingling/lib/filters/ExpVar;->expect:I

    add-int/lit8 v1, v1, -0xf

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 56
    move-object/from16 v0, v24

    iget v1, v0, Lcn/jingling/lib/filters/ExpVar;->expect:I

    add-int/lit8 v1, v1, 0xf

    const/16 v3, 0xb4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 60
    .end local v2    # "skin":[I
    .end local v4    # "size":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v24    # "ev":Lcn/jingling/lib/filters/ExpVar;
    .end local v25    # "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    :cond_1
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 61
    .local v8, "pixels":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    const/4 v15, 0x5

    const/16 v16, 0xa

    const/16 v17, 0x100

    move-object v12, v8

    move v13, v10

    .line 62
    invoke-static/range {v12 .. v23}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlurWithThresholdWeightSkinDetection([IIIIIIIIIIII)V

    .line 65
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 66
    return-void

    .line 33
    .end local v8    # "pixels":[I
    .end local v23    # "vmax":I
    .end local v26    # "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    :cond_2
    const/16 v23, 0xff

    .restart local v23    # "vmax":I
    goto/16 :goto_0
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 79
    iget-object v1, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 80
    iget-object v2, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mOriginalBitmap:Landroid/graphics/Bitmap;

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 79
    invoke-static {v1, v2, v4, v5}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 87
    iget-object v0, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcn/jingling/lib/filters/global/SmoothSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcn/jingling/lib/filters/global/SmoothSkin;->setup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 74
    return-void
.end method
