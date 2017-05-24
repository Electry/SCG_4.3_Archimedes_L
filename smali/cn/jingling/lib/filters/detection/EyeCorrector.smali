.class public Lcn/jingling/lib/filters/detection/EyeCorrector;
.super Ljava/lang/Object;
.source "EyeCorrector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/filters/detection/EyeCorrector$Params;
    }
.end annotation


# static fields
.field private static final RADIUS_EYE_CENTER:I = 0x14

.field private static final RADIUS_EYE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "EyeCorrector"

.field private static final THRESHOLD_EYE_SIZE:I = 0x8


# instance fields
.field private mBinaryThreshold:F

.field private mDiameterOfEye:I

.field private mEyeDownSide:I

.field private mEyeLeftSide:I

.field private mEyePixelMaxNum:I

.field private mEyePixelNum:I

.field private mEyeRightSide:I

.field private mEyeUpSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x7d0

    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelMaxNum:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mBinaryThreshold:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mDiameterOfEye:I

    .line 9
    return-void
.end method

.method public static fillBorders(Landroid/graphics/Bitmap;IIILcn/jingling/lib/filters/detection/EyeCorrector$Params;)Z
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "p"    # Lcn/jingling/lib/filters/detection/EyeCorrector$Params;

    .prologue
    const/4 v0, 0x0

    .line 57
    sub-int v1, p1, p3

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    .line 58
    sub-int v1, p2, p3

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    .line 59
    add-int v1, p1, p3

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x1:I

    .line 60
    add-int v1, p2, p3

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y1:I

    .line 61
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    if-gez v1, :cond_0

    .line 62
    iput v0, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    .line 64
    :cond_0
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    if-gez v1, :cond_1

    .line 65
    iput v0, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    .line 67
    :cond_1
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x1:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x1:I

    .line 70
    :cond_2
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y1:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y1:I

    .line 73
    :cond_3
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x1:I

    iget v2, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    sub-int/2addr v1, v2

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    .line 74
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y1:I

    iget v2, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    sub-int/2addr v1, v2

    iput v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    .line 76
    iget v1, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v2, p4, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    mul-int/2addr v1, v2

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private findCenterOfEye([III)Landroid/graphics/Point;
    .locals 20
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 80
    mul-int v14, p2, p3

    new-array v7, v14, [I

    .line 81
    .local v7, "gray":[I
    mul-int v14, p2, p3

    new-array v3, v14, [Z

    .line 82
    .local v3, "binary":[Z
    const/4 v8, 0x0

    .line 83
    .local v8, "graySum":I
    const/4 v12, 0x0

    .line 84
    .local v12, "sumX":I
    const/4 v13, 0x0

    .line 85
    .local v13, "sumY":I
    const/4 v10, 0x0

    .line 86
    .local v10, "numOfBlackPixels":I
    new-instance v4, Landroid/graphics/Point;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v4, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 89
    .local v4, "centerOfEye":Landroid/graphics/Point;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    mul-int v14, p2, p3

    if-lt v9, v14, :cond_0

    .line 99
    mul-int v14, p2, p3

    div-int v14, v8, v14

    int-to-float v14, v14

    const v15, 0x3f19999a    # 0.6f

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mBinaryThreshold:F

    .line 101
    const/4 v9, 0x0

    :goto_1
    mul-int v14, p2, p3

    if-lt v9, v14, :cond_1

    .line 111
    if-lez v10, :cond_3

    .line 112
    div-int v14, v12, v10

    iput v14, v4, Landroid/graphics/Point;->x:I

    .line 113
    div-int v14, v13, v10

    iput v14, v4, Landroid/graphics/Point;->y:I

    .line 118
    :goto_2
    const/4 v7, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    return-object v4

    .line 90
    :cond_0
    aget v5, p1, v9

    .line 91
    .local v5, "color":I
    shr-int/lit8 v14, v5, 0x10

    and-int/lit16 v11, v14, 0xff

    .line 92
    .local v11, "r":I
    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v6, v14, 0xff

    .line 93
    .local v6, "g":I
    and-int/lit16 v2, v5, 0xff

    .line 94
    .local v2, "b":I
    const-wide v14, 0x3fd322d0e5604189L    # 0.299

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x3fe2c8b439581062L    # 0.587

    int-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v14, v14

    aput v14, v7, v9

    .line 95
    aget v14, v7, v9

    add-int/2addr v8, v14

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "b":I
    .end local v5    # "color":I
    .end local v6    # "g":I
    .end local v11    # "r":I
    :cond_1
    aget v14, v7, v9

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mBinaryThreshold:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2

    .line 103
    const/4 v14, 0x1

    aput-boolean v14, v3, v9

    .line 101
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v14, 0x0

    aput-boolean v14, v3, v9

    .line 106
    rem-int v14, v9, p2

    add-int/2addr v12, v14

    .line 107
    div-int v14, v9, p2

    add-int/2addr v13, v14

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 115
    :cond_3
    div-int/lit8 v14, p2, 0x2

    iput v14, v4, Landroid/graphics/Point;->x:I

    .line 116
    div-int/lit8 v14, p3, 0x2

    iput v14, v4, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method private findMaxRegion(II[ZII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "binaryImg"    # [Z
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 219
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 222
    .local v5, "pixelsForSearch":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/Point;>;"
    mul-int v7, p5, p4

    new-array v3, v7, [Z

    .line 223
    .local v3, "isEyePixel":[Z
    mul-int v7, p5, p4

    new-array v6, v7, [Z

    .line 224
    .local v6, "searchedPixel":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p5, :cond_2

    .line 230
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    const/4 v5, 0x0

    .line 281
    const/4 v3, 0x0

    .line 282
    const/4 v6, 0x0

    .line 283
    :cond_1
    return-void

    .line 225
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-lt v4, p4, :cond_3

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_3
    mul-int v7, v2, p4

    add-int/2addr v7, v4

    aput-boolean v8, v3, v7

    .line 227
    mul-int v7, v2, p4

    add-int/2addr v7, v4

    aput-boolean v8, v6, v7

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 233
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v0, v7, Landroid/graphics/Point;->x:I

    .line 235
    .local v0, "currentPixelX":I
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v1, v7, Landroid/graphics/Point;->y:I

    .line 236
    .local v1, "currentPixelY":I
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 240
    add-int/lit8 v7, p4, -0x1

    if-ge v0, v7, :cond_0

    if-lez v0, :cond_0

    .line 241
    add-int/lit8 v7, p5, -0x1

    if-ge v1, v7, :cond_0

    if-lez v1, :cond_0

    .line 244
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    iget v8, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelMaxNum:I

    if-gt v7, v8, :cond_1

    .line 247
    mul-int v7, v1, p4

    add-int/2addr v7, v0

    aput-boolean v9, v6, v7

    .line 249
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeLeftSide:I

    if-ge v0, v7, :cond_5

    .line 250
    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeLeftSide:I

    .line 251
    :cond_5
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeRightSide:I

    if-le v0, v7, :cond_6

    .line 252
    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeRightSide:I

    .line 253
    :cond_6
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeUpSide:I

    if-ge v1, v7, :cond_7

    .line 254
    iput v1, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeUpSide:I

    .line 255
    :cond_7
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeDownSide:I

    if-le v1, v7, :cond_8

    .line 256
    iput v1, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeDownSide:I

    .line 258
    :cond_8
    mul-int v7, v1, p4

    add-int/2addr v7, v0

    aget-boolean v7, p3, v7

    if-nez v7, :cond_0

    .line 260
    iget v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    .line 261
    mul-int v7, v1, p4

    add-int/2addr v7, v0

    aput-boolean v9, v3, v7

    .line 263
    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, p4

    add-int/2addr v7, v0

    aget-boolean v7, v6, v7

    if-nez v7, :cond_9

    .line 264
    new-instance v7, Landroid/graphics/Point;

    .line 265
    add-int/lit8 v8, v1, 0x1

    invoke-direct {v7, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 264
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_9
    mul-int v7, v1, p4

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget-boolean v7, v6, v7

    if-nez v7, :cond_a

    .line 267
    new-instance v7, Landroid/graphics/Point;

    add-int/lit8 v8, v0, 0x1

    .line 268
    invoke-direct {v7, v8, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 267
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_a
    mul-int v7, v1, p4

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-boolean v7, v6, v7

    if-nez v7, :cond_b

    .line 270
    new-instance v7, Landroid/graphics/Point;

    add-int/lit8 v8, v0, -0x1

    .line 271
    invoke-direct {v7, v8, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 270
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_b
    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, p4

    add-int/2addr v7, v0

    aget-boolean v7, v6, v7

    if-nez v7, :cond_0

    .line 273
    new-instance v7, Landroid/graphics/Point;

    .line 274
    add-int/lit8 v8, v1, -0x1

    invoke-direct {v7, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 273
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private getDiameterOfEye([IIILandroid/graphics/Point;)F
    .locals 24
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "centerOfEye"    # Landroid/graphics/Point;

    .prologue
    .line 125
    mul-int v2, p2, p3

    new-array v15, v2, [I

    .line 126
    .local v15, "gray":[I
    mul-int v2, p2, p3

    new-array v5, v2, [Z

    .line 134
    .local v5, "binary":[Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    .line 135
    const/16 v2, 0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeLeftSide:I

    .line 136
    const/16 v2, -0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeRightSide:I

    .line 137
    const/16 v2, 0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeUpSide:I

    .line 138
    const/16 v2, -0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeDownSide:I

    .line 140
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 141
    .local v7, "x":I
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Point;->y:I

    .line 142
    .local v8, "y":I
    if-gez v7, :cond_0

    .line 143
    const/4 v7, 0x0

    .line 144
    :cond_0
    add-int/lit8 v2, p2, -0x1

    if-le v7, v2, :cond_1

    .line 145
    add-int/lit8 v7, p2, -0x1

    .line 146
    :cond_1
    if-gez v8, :cond_2

    .line 147
    const/4 v8, 0x0

    .line 148
    :cond_2
    add-int/lit8 v2, p3, -0x1

    if-le v8, v2, :cond_3

    .line 149
    add-int/lit8 v8, p3, -0x1

    .line 151
    :cond_3
    move v3, v7

    .line 152
    .local v3, "newX":I
    move v4, v8

    .line 157
    .local v4, "newY":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    mul-int v2, p2, p3

    move/from16 v0, v16

    if-lt v0, v2, :cond_4

    .line 166
    const/16 v16, 0x0

    :goto_1
    mul-int v2, p2, p3

    move/from16 v0, v16

    if-lt v0, v2, :cond_5

    .line 173
    mul-int v2, v8, p2

    add-int/2addr v2, v7

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_c

    .line 175
    const/16 v16, 0x0

    :goto_2
    const/4 v2, 0x5

    move/from16 v0, v16

    if-lt v0, v2, :cond_7

    .line 181
    mul-int v2, v4, p2

    add-int/2addr v2, v3

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_a

    .line 184
    const/4 v15, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v2, 0x0

    .line 211
    .end local v7    # "x":I
    :goto_3
    return v2

    .line 158
    .restart local v7    # "x":I
    :cond_4
    aget v13, p1, v16

    .line 159
    .local v13, "color":I
    shr-int/lit8 v2, v13, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    .line 160
    .local v18, "r":I
    shr-int/lit8 v2, v13, 0x8

    and-int/lit16 v14, v2, 0xff

    .line 161
    .local v14, "g":I
    and-int/lit16 v12, v13, 0xff

    .line 162
    .local v12, "b":I
    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v10, v10, v20

    const-wide v20, 0x3fe2c8b439581062L    # 0.587

    int-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v10, v10, v20

    const-wide v20, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v0, v12

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v10, v10, v20

    double-to-int v2, v10

    aput v2, v15, v16

    .line 157
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 167
    .end local v12    # "b":I
    .end local v13    # "color":I
    .end local v14    # "g":I
    .end local v18    # "r":I
    :cond_5
    aget v2, v15, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mBinaryThreshold:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_6

    .line 168
    const/4 v2, 0x1

    aput-boolean v2, v5, v16

    .line 166
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 170
    :cond_6
    const/4 v2, 0x0

    aput-boolean v2, v5, v16

    goto :goto_4

    .line 176
    :cond_7
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    const/4 v2, 0x5

    move/from16 v0, v17

    if-lt v0, v2, :cond_8

    .line 175
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 177
    :cond_8
    add-int/lit8 v2, v8, -0x3

    add-int v2, v2, v16

    mul-int v2, v2, p2

    add-int/lit8 v6, v7, -0x3

    add-int v6, v6, v17

    add-int/2addr v2, v6

    aget-boolean v2, v5, v2

    if-nez v2, :cond_9

    .line 178
    add-int/lit8 v2, v7, -0x3

    add-int v3, v2, v17

    .line 179
    add-int/lit8 v2, v8, -0x3

    add-int v4, v2, v16

    .line 176
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .end local v17    # "j":I
    :cond_a
    move-object/from16 v2, p0

    move/from16 v6, p2

    move/from16 v7, p3

    .line 188
    invoke-direct/range {v2 .. v7}, Lcn/jingling/lib/filters/detection/EyeCorrector;->findMaxRegion(II[ZII)V

    .line 189
    .end local v7    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelMaxNum:I

    if-le v2, v6, :cond_b

    .line 192
    const/4 v15, 0x0

    .line 193
    const/4 v5, 0x0

    .line 194
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 196
    :cond_b
    const/4 v15, 0x0

    .line 197
    const/4 v5, 0x0

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeRightSide:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeLeftSide:I

    sub-int/2addr v2, v6

    .line 199
    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeDownSide:I

    move-object/from16 v0, p0

    iget v9, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeUpSide:I

    sub-int/2addr v6, v9

    .line 198
    mul-int/2addr v2, v6

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    goto/16 :goto_3

    .restart local v7    # "x":I
    :cond_c
    move-object/from16 v6, p0

    move-object v9, v5

    move/from16 v10, p2

    move/from16 v11, p3

    .line 203
    invoke-direct/range {v6 .. v11}, Lcn/jingling/lib/filters/detection/EyeCorrector;->findMaxRegion(II[ZII)V

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelNum:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyePixelMaxNum:I

    if-le v2, v6, :cond_d

    .line 205
    const/4 v15, 0x0

    .line 206
    const/4 v5, 0x0

    .line 207
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 209
    :cond_d
    const/4 v15, 0x0

    .line 210
    const/4 v5, 0x0

    .line 211
    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeRightSide:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeLeftSide:I

    sub-int/2addr v2, v6

    .line 212
    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeDownSide:I

    move-object/from16 v0, p0

    iget v9, v0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mEyeUpSide:I

    sub-int/2addr v6, v9

    .line 211
    mul-int/2addr v2, v6

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    goto/16 :goto_3
.end method


# virtual methods
.method public getDiameterofEye()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mDiameterOfEye:I

    return v0
.end method

.method public getRealEyeCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Point;
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;

    invoke-direct {v9}, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;-><init>()V

    .line 29
    .local v9, "p":Lcn/jingling/lib/filters/detection/EyeCorrector$Params;
    const/16 v10, 0x14

    .line 30
    .local v10, "r":I
    invoke-static {p1, p2, p3, v10, v9}, Lcn/jingling/lib/filters/detection/EyeCorrector;->fillBorders(Landroid/graphics/Bitmap;IIILcn/jingling/lib/filters/detection/EyeCorrector$Params;)Z

    .line 31
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 32
    .local v1, "pixels":[I
    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v4, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    iget v5, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    iget v6, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v7, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 33
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    invoke-direct {p0, v1, v0, v3}, Lcn/jingling/lib/filters/detection/EyeCorrector;->findCenterOfEye([III)Landroid/graphics/Point;

    move-result-object v8

    .line 34
    .local v8, "center":Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    sub-int v3, p2, v10

    add-int/2addr v0, v3

    iput v0, v8, Landroid/graphics/Point;->x:I

    .line 35
    iget v0, v8, Landroid/graphics/Point;->y:I

    sub-int v3, p3, v10

    add-int/2addr v0, v3

    iput v0, v8, Landroid/graphics/Point;->y:I

    .line 36
    const/16 v10, 0x64

    .line 37
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    invoke-static {p1, v0, v3, v10, v9}, Lcn/jingling/lib/filters/detection/EyeCorrector;->fillBorders(Landroid/graphics/Bitmap;IIILcn/jingling/lib/filters/detection/EyeCorrector$Params;)Z

    .line 38
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 39
    iget v3, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v4, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    iget v5, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    iget v6, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v7, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 40
    iget v0, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->w:I

    iget v2, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->h:I

    new-instance v3, Landroid/graphics/Point;

    .line 41
    iget v4, v8, Landroid/graphics/Point;->x:I

    iget v5, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->x0:I

    sub-int/2addr v4, v5

    iget v5, v8, Landroid/graphics/Point;->y:I

    iget v6, v9, Lcn/jingling/lib/filters/detection/EyeCorrector$Params;->y0:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 40
    invoke-direct {p0, v1, v0, v2, v3}, Lcn/jingling/lib/filters/detection/EyeCorrector;->getDiameterOfEye([IIILandroid/graphics/Point;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mDiameterOfEye:I

    .line 42
    iget v0, p0, Lcn/jingling/lib/filters/detection/EyeCorrector;->mDiameterOfEye:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    .line 43
    const-string v0, "EyeCorrector"

    const-string v2, "find eye."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-object v8

    .line 45
    :cond_0
    const-string v0, "EyeCorrector"

    const-string/jumbo v2, "no eye."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput p2, v8, Landroid/graphics/Point;->x:I

    .line 47
    iput p3, v8, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method
