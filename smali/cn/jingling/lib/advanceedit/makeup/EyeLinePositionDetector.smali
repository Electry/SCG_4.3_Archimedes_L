.class public Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;
.super Ljava/lang/Object;
.source "EyeLinePositionDetector.java"


# instance fields
.field mBitmapRight:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field mEyeDistance:I

.field mGroundBitmap:Landroid/graphics/Bitmap;

.field mLeft:Landroid/graphics/Point;

.field mMouth:Landroid/graphics/Point;

.field mRight:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "groundBm"    # Landroid/graphics/Bitmap;
    .param p2, "eyeLineBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mMouth:Landroid/graphics/Point;

    .line 30
    iput-object p1, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method private adjustBlushPosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
    .locals 6

    .prologue
    .line 131
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 132
    .local v1, "leftBlushPosition":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 134
    .local v2, "rightBlushPosition":Landroid/graphics/Point;
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 136
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 138
    iget v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 140
    .local v3, "scale":F
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mMouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    .line 141
    .local v0, "downShift":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 143
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    float-to-int v5, v0

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 144
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    float-to-int v5, v0

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 146
    new-instance v4, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;

    invoke-direct {v4, v1, v2, v3}, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    return-object v4
.end method

.method private adjustEyeLinePosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
    .locals 35

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mBitmapRight:Landroid/graphics/Bitmap;

    .line 80
    .local v3, "bitmapRight":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v34, -0x40800000    # -1.0f

    .local v34, "sw":F
    const/high16 v33, 0x3f800000    # 1.0f

    .line 82
    .local v33, "sh":F
    move/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 83
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 83
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 85
    .local v29, "bitmapLeft":Landroid/graphics/Bitmap;
    const/high16 v32, 0x3f800000    # 1.0f

    .line 86
    .local v32, "scale":F
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    if-eqz v4, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 87
    div-float v32, v4, v5

    .line 89
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 90
    move/from16 v0, v32

    move/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 92
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 92
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 95
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object/from16 v9, v29

    move-object v14, v8

    .line 94
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 96
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v10, "eyeLeftTopPoint":Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 98
    .local v11, "eyeRightDownPoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    .line 99
    .local v28, "bitmapGround":Landroid/graphics/Bitmap;
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 100
    .local v16, "elw":I
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 101
    .local v17, "elh":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 102
    .local v14, "w":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 105
    .local v15, "h":I
    invoke-static/range {v28 .. v28}, Lcn/jingling/lib/filters/ImageProcessUtils;->getGrayImage(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 106
    .local v12, "groundGray":[B
    invoke-static {v3}, Lcn/jingling/lib/filters/ImageProcessUtils;->getGrayImage(Landroid/graphics/Bitmap;)[B

    move-result-object v22

    .line 107
    .local v22, "eyelineRightGray":[B
    invoke-static/range {v29 .. v29}, Lcn/jingling/lib/filters/ImageProcessUtils;->getGrayImage(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    .line 111
    .local v13, "eyelineLeftGray":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    iput v4, v10, Landroid/graphics/Point;->x:I

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    iput v4, v10, Landroid/graphics/Point;->y:I

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Point;->x:I

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Point;->y:I

    .line 116
    const/16 v18, 0x0

    move-object/from16 v9, p0

    .line 115
    invoke-direct/range {v9 .. v18}, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->eyelinePosition(Landroid/graphics/Point;Landroid/graphics/Point;[B[BIIIII)Landroid/graphics/Point;

    move-result-object v30

    .line 118
    .local v30, "leftEyeLinePosition":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    iput v4, v10, Landroid/graphics/Point;->x:I

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    iput v4, v10, Landroid/graphics/Point;->y:I

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Point;->x:I

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    div-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Point;->y:I

    .line 123
    const/16 v27, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    .line 122
    invoke-direct/range {v18 .. v27}, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->eyelinePosition(Landroid/graphics/Point;Landroid/graphics/Point;[B[BIIIII)Landroid/graphics/Point;

    move-result-object v31

    .line 125
    .local v31, "rightEyeLinePosition":Landroid/graphics/Point;
    new-instance v4, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    return-object v4
.end method

.method private detectFace()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    new-instance v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .end local v1    # "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    invoke-direct {v1}, Lcn/jingling/lib/filters/detection/FaceDetectorResults;-><init>()V

    .line 53
    .restart local v1    # "results":Lcn/jingling/lib/filters/detection/FaceDetectorResults;
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcn/jingling/lib/filters/detection/FaceDetection;->detect(Landroid/graphics/Bitmap;)Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    move-result-object v1

    .line 55
    iget-object v3, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    iget-object v3, v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v3, v2

    .line 61
    .local v0, "human":Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 63
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mLeft:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 64
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 65
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mRight:Landroid/graphics/Point;

    iget-object v3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 66
    iget v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->eyeDistance:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mEyeDistance:I

    .line 67
    iget-object v2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->mMouth:Landroid/graphics/Point;

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private eyelinePosition(Landroid/graphics/Point;Landroid/graphics/Point;[B[BIIIII)Landroid/graphics/Point;
    .locals 23
    .param p1, "eyeLeftTopPoint"    # Landroid/graphics/Point;
    .param p2, "eyeRightDownPoint"    # Landroid/graphics/Point;
    .param p3, "mGray"    # [B
    .param p4, "mEyelineGray"    # [B
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "elw"    # I
    .param p8, "elh"    # I
    .param p9, "position"    # I

    .prologue
    .line 153
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 154
    .local v7, "eyelinePosit":Landroid/graphics/Point;
    const/4 v14, 0x0

    .local v14, "startH":I
    const/4 v15, 0x0

    .line 156
    .local v15, "startW":I
    const/4 v10, 0x0

    .line 160
    .local v10, "maxCount":I
    const/16 v21, 0x0

    aget-byte v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v11

    .line 161
    .local v11, "maxGray":I
    const/16 v21, 0x0

    aget-byte v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v12

    .line 162
    .local v12, "minGray":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    .local v9, "m":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_6

    .line 171
    add-int v21, v11, v12

    div-int/lit8 v20, v21, 0x3

    .line 172
    .local v20, "thres":I
    const/16 v16, 0x1

    .line 173
    .local v16, "step":I
    const/16 v21, 0x4b

    move/from16 v0, p7

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 174
    const/16 v16, 0x2

    .line 175
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 176
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 179
    if-nez p9, :cond_11

    .line 180
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x6

    sub-int v5, v21, v22

    .line 181
    .local v5, "UP":I
    if-gez v5, :cond_1

    .line 182
    const/4 v5, 0x0

    .line 184
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x3

    sub-int v2, v21, v22

    .line 185
    .local v2, "DOWN":I
    move/from16 v0, p6

    if-le v2, v0, :cond_2

    .line 186
    move/from16 v2, p6

    .line 188
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, p7, 0x6

    sub-int v3, v21, v22

    .line 189
    .local v3, "LEFT":I
    if-gez v3, :cond_3

    .line 190
    const/4 v3, 0x0

    .line 192
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v4, v21, p7

    .line 193
    .local v4, "RIGHT":I
    move/from16 v0, p5

    if-le v4, v0, :cond_4

    .line 194
    move/from16 v4, p5

    .line 196
    :cond_4
    move v14, v5

    :goto_1
    if-lt v14, v2, :cond_a

    .line 268
    :cond_5
    return-object v7

    .line 163
    .end local v2    # "DOWN":I
    .end local v3    # "LEFT":I
    .end local v4    # "RIGHT":I
    .end local v5    # "UP":I
    .end local v16    # "step":I
    .end local v20    # "thres":I
    :cond_6
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    .local v13, "n":I
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v13, v0, :cond_7

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    :cond_7
    mul-int v21, v9, p5

    add-int v21, v21, v13

    aget-byte v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v17

    .line 165
    .local v17, "temp":I
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 166
    move/from16 v11, v17

    .line 167
    :cond_8
    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 168
    move/from16 v12, v17

    .line 163
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 197
    .end local v13    # "n":I
    .end local v17    # "temp":I
    .restart local v2    # "DOWN":I
    .restart local v3    # "LEFT":I
    .restart local v4    # "RIGHT":I
    .restart local v5    # "UP":I
    .restart local v16    # "step":I
    .restart local v20    # "thres":I
    :cond_a
    move v15, v3

    :goto_3
    if-lt v15, v4, :cond_b

    .line 196
    add-int v14, v14, v16

    goto :goto_1

    .line 198
    :cond_b
    const/4 v6, 0x0

    .line 199
    .local v6, "count":I
    const/4 v9, 0x0

    :goto_4
    div-int/lit8 v21, p8, 0x3

    move/from16 v0, v21

    if-lt v9, v0, :cond_d

    .line 214
    if-le v6, v10, :cond_c

    .line 215
    move v10, v6

    .line 216
    div-int/lit8 v21, p8, 0x3

    sub-int v21, v14, v21

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 217
    div-int/lit8 v21, p7, 0x6

    sub-int v21, v15, v21

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 197
    :cond_c
    add-int v15, v15, v16

    goto :goto_3

    .line 200
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "n":I
    :goto_5
    div-int/lit8 v21, p7, 0x6

    sub-int v21, p7, v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_e

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 201
    :cond_e
    div-int/lit8 v21, p8, 0x3

    add-int v21, v21, v9

    .line 202
    mul-int v21, v21, p7

    add-int v21, v21, v13

    div-int/lit8 v22, p7, 0x6

    add-int v21, v21, v22

    .line 201
    aget-byte v21, p4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v18

    .line 203
    .local v18, "temp1":I
    add-int v21, v14, v9

    mul-int v21, v21, p5

    add-int v21, v21, v15

    add-int v8, v21, v13

    .line 204
    .local v8, "index":I
    mul-int v21, p5, p6

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_f

    .line 205
    mul-int v21, p5, p6

    add-int/lit8 v8, v21, -0x1

    .line 207
    :cond_f
    aget-byte v21, p3, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v19

    .line 208
    .local v19, "temp2":I
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 209
    add-int/lit8 v6, v6, 0x1

    .line 200
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 222
    .end local v2    # "DOWN":I
    .end local v3    # "LEFT":I
    .end local v4    # "RIGHT":I
    .end local v5    # "UP":I
    .end local v6    # "count":I
    .end local v8    # "index":I
    .end local v13    # "n":I
    .end local v18    # "temp1":I
    .end local v19    # "temp2":I
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x6

    sub-int v5, v21, v22

    .line 223
    .restart local v5    # "UP":I
    if-gez v5, :cond_12

    .line 224
    const/4 v5, 0x0

    .line 226
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x3

    sub-int v2, v21, v22

    .line 227
    .restart local v2    # "DOWN":I
    move/from16 v0, p6

    if-le v2, v0, :cond_13

    .line 228
    move/from16 v2, p6

    .line 230
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, p7, 0x6

    add-int v3, v21, v22

    .line 231
    .restart local v3    # "LEFT":I
    if-gez v3, :cond_14

    .line 232
    const/4 v3, 0x0

    .line 234
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, p7, 0x6

    add-int v21, v21, v22

    sub-int v4, v21, p7

    .line 235
    .restart local v4    # "RIGHT":I
    move/from16 v0, p5

    if-le v4, v0, :cond_15

    .line 236
    move/from16 v4, p5

    .line 238
    :cond_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x6

    sub-int v14, v21, v22

    :goto_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, p8, 0x3

    sub-int v21, v21, v22

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 240
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, p7, 0x6

    add-int v15, v21, v22

    :goto_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    .line 241
    div-int/lit8 v22, p7, 0x6

    add-int v21, v21, v22

    sub-int v21, v21, p7

    .line 240
    move/from16 v0, v21

    if-lt v15, v0, :cond_16

    .line 239
    add-int v14, v14, v16

    goto :goto_6

    .line 242
    :cond_16
    const/4 v6, 0x0

    .line 243
    .restart local v6    # "count":I
    const/4 v9, 0x0

    :goto_8
    div-int/lit8 v21, p8, 0x3

    move/from16 v0, v21

    if-lt v9, v0, :cond_18

    .line 258
    if-le v6, v10, :cond_17

    .line 259
    move v10, v6

    .line 260
    div-int/lit8 v21, p8, 0x3

    sub-int v21, v14, v21

    move/from16 v0, v21

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 261
    iput v15, v7, Landroid/graphics/Point;->x:I

    .line 241
    :cond_17
    add-int v15, v15, v16

    goto :goto_7

    .line 244
    :cond_18
    const/4 v13, 0x0

    .restart local v13    # "n":I
    :goto_9
    div-int/lit8 v21, p7, 0x6

    sub-int v21, p7, v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_19

    .line 243
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 245
    :cond_19
    div-int/lit8 v21, p8, 0x3

    add-int v21, v21, v9

    .line 246
    mul-int v21, v21, p7

    add-int v21, v21, v13

    .line 245
    aget-byte v21, p4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v18

    .line 247
    .restart local v18    # "temp1":I
    add-int v21, v14, v9

    mul-int v21, v21, p5

    add-int v21, v21, v15

    add-int v8, v21, v13

    .line 248
    .restart local v8    # "index":I
    mul-int v21, p5, p6

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_1a

    .line 249
    mul-int v21, p5, p6

    add-int/lit8 v8, v21, -0x1

    .line 251
    :cond_1a
    aget-byte v21, p3, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/jingling/lib/utils/MathUtils;->toInt(Ljava/lang/Byte;)I

    move-result v19

    .line 252
    .restart local v19    # "temp2":I
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 244
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_9
.end method


# virtual methods
.method public detectEyelinePosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;
    .locals 1

    .prologue
    .line 38
    const-string v0, "MakeupEyeline"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->detectFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcn/jingling/lib/advanceedit/makeup/EyeLinePositionDetector;->adjustEyeLinePosition()Lcn/jingling/lib/advanceedit/makeup/MakeupBitmapPosition;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
