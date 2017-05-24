.class public Lcn/jingling/lib/filters/partial/WhelkRemoveTest;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "WhelkRemoveTest.java"


# instance fields
.field private FSIZE:I

.field protected TAG:Ljava/lang/String;

.field isFirst:Z

.field private mAssistBitmap:Landroid/graphics/Bitmap;

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mRADIUS:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 22
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 23
    const-string v0, "PartialSkinSmoothEffect_OK"

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->TAG:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    .line 27
    iput v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->FSIZE:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->isFirst:Z

    .line 22
    return-void
.end method

.method private selectRound([IIIIIII)V
    .locals 12
    .param p1, "selection"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "r"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "featherSize"    # I

    .prologue
    .line 75
    move/from16 v4, p7

    .line 76
    .local v4, "f":I
    mul-int v8, p4, p4

    .line 77
    .local v8, "r2":I
    sub-int v9, p4, v4

    sub-int v10, p4, v4

    mul-int v5, v9, v10

    .line 79
    .local v5, "fr2":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p6

    if-lt v6, v0, :cond_0

    .line 93
    return-void

    .line 80
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    move/from16 v0, p5

    if-lt v7, v0, :cond_1

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 81
    :cond_1
    sub-int v9, v6, p2

    sub-int v10, v6, p2

    mul-int/2addr v9, v10

    sub-int v10, v7, p3

    sub-int v11, v7, p3

    mul-int/2addr v10, v11

    add-int v3, v9, v10

    .line 82
    .local v3, "d2":I
    if-ge v3, v5, :cond_2

    .line 83
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 80
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    :cond_2
    if-ge v3, v8, :cond_3

    .line 85
    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v2, v10

    .line 86
    .local v2, "d":I
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    sub-int v10, p4, v2

    mul-int/lit16 v10, v10, 0xff

    div-int/2addr v10, v4

    rsub-int v10, v10, 0xff

    aput v10, p1, v9

    goto :goto_2

    .line 88
    .end local v2    # "d":I
    :cond_3
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    const/16 v10, 0xff

    aput v10, p1, v9

    goto :goto_2
.end method

.method private whelkRemove(Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 59
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 106
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v49, v0

    .line 107
    .local v49, "x":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v54, v0

    .line 108
    .local v54, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 109
    .local v7, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 110
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    move/from16 v17, v0

    .line 111
    .local v17, "tw":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    move/from16 v18, v0

    .line 112
    .local v18, "th":I
    div-int/lit8 v4, v17, 0x2

    sub-int v50, v49, v4

    .line 113
    .local v50, "x0":I
    if-gez v50, :cond_0

    .line 114
    const/16 v50, 0x0

    .line 115
    :cond_0
    div-int/lit8 v4, v18, 0x2

    sub-int v55, v54, v4

    .line 116
    .local v55, "y0":I
    if-gez v55, :cond_1

    .line 117
    const/16 v54, 0x0

    .line 118
    :cond_1
    div-int/lit8 v4, v17, 0x2

    add-int v51, v49, v4

    .line 119
    .local v51, "x00":I
    move/from16 v0, v51

    if-le v0, v7, :cond_2

    .line 120
    add-int/lit8 v51, v7, -0x1

    .line 121
    :cond_2
    div-int/lit8 v4, v18, 0x2

    add-int v56, v54, v4

    .line 122
    .local v56, "y00":I
    move/from16 v0, v56

    if-le v0, v11, :cond_3

    .line 123
    add-int/lit8 v56, v11, -0x1

    .line 125
    :cond_3
    const/16 v4, 0x9

    new-array v0, v4, [I

    move-object/from16 v53, v0

    .line 126
    .local v53, "xx":[I
    const/16 v4, 0x9

    new-array v0, v4, [I

    move-object/from16 v58, v0

    .line 127
    .local v58, "yy":[I
    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v48, v0

    .line 128
    .local v48, "var":[F
    const/16 v4, 0x9

    new-array v0, v4, [I

    move-object/from16 v42, v0

    .line 129
    .local v42, "mean":[I
    const/16 v4, 0x9

    const/16 v6, 0x10

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 130
    .local v31, "hist":[[I
    const/16 v4, 0x10

    new-array v0, v4, [I

    move-object/from16 v32, v0

    .line 131
    .local v32, "histAll":[I
    const/16 v33, 0x0

    .line 132
    .local v33, "histAllMax":I
    const/16 v4, 0x9

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 133
    .local v34, "histMax":[I
    const/16 v35, 0x0

    .line 134
    .local v35, "indexMax":I
    const/16 v46, 0x0

    .line 135
    .local v46, "num":I
    const/16 v43, 0x0

    .line 136
    .local v43, "meanAll":I
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 137
    .local v5, "origPixels":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 151
    const/16 v38, 0x0

    .local v38, "m":I
    :goto_0
    const/16 v4, 0x9

    move/from16 v0, v38

    if-lt v0, v4, :cond_4

    .line 156
    const/16 v38, 0x0

    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v38

    if-lt v0, v4, :cond_6

    .line 215
    const/16 v36, 0x0

    .local v36, "l":I
    :goto_2
    const/16 v4, 0x10

    move/from16 v0, v36

    if-lt v0, v4, :cond_10

    .line 235
    div-int/lit8 v43, v43, 0x9

    .line 236
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 237
    .local v40, "maxHist":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v41, v0

    .line 238
    .local v41, "maxHistInd":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    aget-object v6, v31, v6

    aget v6, v6, v35

    aput v6, v40, v4

    .line 240
    const/16 v38, 0x0

    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v38

    if-lt v0, v4, :cond_13

    .line 257
    const/16 v45, 0x0

    .local v45, "n":I
    :goto_4
    const/4 v4, 0x3

    move/from16 v0, v45

    if-lt v0, v4, :cond_17

    .line 283
    const/4 v4, 0x0

    aget v4, v41, v4

    aget v44, v48, v4

    .line 284
    .local v44, "minVar":F
    const/4 v4, 0x0

    aget v4, v41, v4

    aget v52, v53, v4

    .line 285
    .local v52, "x1":I
    const/4 v4, 0x0

    aget v4, v41, v4

    aget v57, v58, v4

    .line 286
    .local v57, "y1":I
    const/16 v38, 0x0

    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v38

    if-lt v0, v4, :cond_21

    .line 345
    sub-int v4, v51, v50

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v17, v4, 0x1

    .line 346
    sub-int v4, v56, v55

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v18, v4, 0x1

    .line 347
    add-int/lit8 v4, v17, -0x1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v18, -0x1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 349
    .local v16, "r":I
    mul-int v4, v17, v18

    new-array v13, v4, [I

    .line 350
    .local v13, "selection":[I
    add-int/lit8 v14, v16, 0x1

    .line 351
    .local v14, "centerX":I
    add-int/lit8 v15, v16, 0x1

    .line 353
    .local v15, "centerY":I
    mul-int/lit8 v4, v16, 0x3

    div-int/lit8 v19, v4, 0x4

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->selectRound([IIIIIII)V

    .line 357
    mul-int v4, v17, v18

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 358
    .local v20, "pixels":[I
    mul-int v4, v17, v18

    new-array v0, v4, [I

    move-object/from16 v37, v0

    .line 360
    .local v37, "layerPixels":[I
    const/16 v21, 0x0

    sub-int v23, v49, v16

    sub-int v24, v54, v16

    move-object/from16 v19, p1

    move/from16 v22, v17

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 361
    const/16 v23, 0x0

    sub-int v25, v52, v16

    sub-int v26, v57, v16

    move-object/from16 v21, p1

    move-object/from16 v22, v37

    move/from16 v24, v17

    move/from16 v27, v17

    move/from16 v28, v18

    invoke-virtual/range {v21 .. v28}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 404
    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v13, v2, v3}, Lcn/jingling/lib/filters/CMTProcessor;->mergeSelection([I[I[III)V

    .line 405
    const/16 v21, 0x0

    sub-int v23, v49, v16

    sub-int v24, v54, v16

    move-object/from16 v19, p1

    move/from16 v22, v17

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 406
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mAssistBitmap:Landroid/graphics/Bitmap;

    .line 407
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    .line 408
    .local v39, "mPaint":Landroid/graphics/Paint;
    const v4, -0xff0100

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 410
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    new-instance v30, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mAssistBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 413
    .local v30, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Canvas;->save()I

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mAssistBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    move/from16 v0, v49

    int-to-float v4, v0

    move/from16 v0, v54

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    const/high16 v4, -0x10000

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    move/from16 v0, v52

    int-to-float v4, v0

    move/from16 v0, v57

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 418
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Canvas;->restore()V

    .line 420
    sub-int v4, v49, v17

    sub-int v6, v54, v17

    .line 421
    mul-int/lit8 v8, v17, 0x2

    mul-int/lit8 v9, v18, 0x2

    .line 420
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 422
    .local v29, "bitmap":Landroid/graphics/Bitmap;
    new-instance v30, Landroid/graphics/Canvas;

    .end local v30    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .restart local v30    # "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    const v4, -0xff0100

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    mul-int/lit8 v4, v17, 0x2

    int-to-float v4, v4

    mul-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 428
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->isFirst:Z

    .line 429
    return-void

    .line 152
    .end local v13    # "selection":[I
    .end local v14    # "centerX":I
    .end local v15    # "centerY":I
    .end local v16    # "r":I
    .end local v20    # "pixels":[I
    .end local v29    # "bitmap":Landroid/graphics/Bitmap;
    .end local v30    # "canvas":Landroid/graphics/Canvas;
    .end local v36    # "l":I
    .end local v37    # "layerPixels":[I
    .end local v39    # "mPaint":Landroid/graphics/Paint;
    .end local v40    # "maxHist":[I
    .end local v41    # "maxHistInd":[I
    .end local v44    # "minVar":F
    .end local v45    # "n":I
    .end local v52    # "x1":I
    .end local v57    # "y1":I
    :cond_4
    const/16 v45, 0x0

    .restart local v45    # "n":I
    :goto_6
    const/16 v4, 0x10

    move/from16 v0, v45

    if-lt v0, v4, :cond_5

    .line 151
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 153
    :cond_5
    aget-object v4, v31, v38

    const/4 v6, 0x0

    aput v6, v4, v45

    .line 152
    add-int/lit8 v45, v45, 0x1

    goto :goto_6

    .line 157
    .end local v45    # "n":I
    :cond_6
    const/16 v45, 0x0

    .restart local v45    # "n":I
    :goto_7
    const/4 v4, 0x3

    move/from16 v0, v45

    if-lt v0, v4, :cond_7

    .line 156
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 158
    :cond_7
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_c

    .line 159
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    move/from16 v0, v49

    int-to-double v8, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe6a0902de00d1bL    # 0.7071

    mul-double v22, v22, v24

    add-int/lit8 v6, v45, -0x1

    int-to-double v0, v6

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v8, v8, v22

    double-to-int v6, v8

    aput v6, v53, v4

    .line 160
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    move/from16 v0, v54

    int-to-double v8, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe6a0902de00d1bL    # 0.7071

    mul-double v22, v22, v24

    add-int/lit8 v6, v38, -0x1

    int-to-double v0, v6

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v8, v8, v22

    double-to-int v6, v8

    aput v6, v58, v4

    .line 167
    :goto_8
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    const/4 v6, 0x0

    aput v6, v42, v4

    .line 168
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    const/4 v6, 0x0

    aput v6, v48, v4

    .line 169
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v53, v4

    if-gez v4, :cond_8

    .line 170
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    const/4 v6, 0x0

    aput v6, v53, v4

    .line 171
    :cond_8
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v53, v4

    add-int/lit8 v6, v7, -0x1

    if-le v4, v6, :cond_9

    .line 172
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    add-int/lit8 v6, v7, -0x1

    aput v6, v53, v4

    .line 173
    :cond_9
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v58, v4

    if-gez v4, :cond_a

    .line 174
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    const/4 v6, 0x0

    aput v6, v58, v4

    .line 175
    :cond_a
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v58, v4

    add-int/lit8 v6, v11, -0x1

    if-le v4, v6, :cond_b

    .line 176
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    add-int/lit8 v6, v11, -0x1

    aput v6, v53, v4

    .line 177
    :cond_b
    const/16 v36, 0x0

    .restart local v36    # "l":I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    .line 186
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    mul-int/lit8 v6, v38, 0x3

    add-int v6, v6, v45

    aget v6, v42, v6

    mul-int v8, v17, v18

    div-int/2addr v6, v8

    aput v6, v42, v4

    .line 187
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v42, v4

    add-int v43, v43, v4

    .line 198
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    mul-int/lit8 v6, v38, 0x3

    add-int v6, v6, v45

    aget v6, v48, v6

    mul-int v8, v17, v18

    int-to-float v8, v8

    div-float/2addr v6, v8

    aput v6, v48, v4

    .line 199
    const/16 v36, 0x0

    :goto_a
    const/16 v4, 0x10

    move/from16 v0, v36

    if-lt v0, v4, :cond_f

    .line 157
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_7

    .line 163
    .end local v36    # "l":I
    :cond_c
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    add-int/lit8 v6, v45, -0x1

    mul-int v6, v6, v17

    add-int v6, v6, v49

    aput v6, v53, v4

    .line 164
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    add-int/lit8 v6, v38, -0x1

    mul-int v6, v6, v17

    add-int v6, v6, v54

    aput v6, v58, v4

    goto/16 :goto_8

    .line 178
    .restart local v36    # "l":I
    :cond_d
    const/16 v47, 0x0

    .local v47, "p":I
    :goto_b
    move/from16 v0, v47

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    .line 177
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 179
    :cond_e
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v6, v42, v4

    mul-int/lit8 v8, v38, 0x3

    add-int v8, v8, v45

    aget v8, v53, v8

    div-int/lit8 v9, v17, 0x2

    sub-int/2addr v8, v9

    add-int v8, v8, v47

    mul-int/2addr v8, v7

    .line 180
    mul-int/lit8 v9, v38, 0x3

    add-int v9, v9, v45

    aget v9, v58, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v17, 0x2

    sub-int/2addr v8, v9

    add-int v8, v8, v36

    aget v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    .line 179
    add-int/2addr v6, v8

    aput v6, v42, v4

    .line 181
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v4, v53, v4

    div-int/lit8 v6, v17, 0x2

    sub-int/2addr v4, v6

    add-int v4, v4, v47

    mul-int/2addr v4, v7

    .line 182
    mul-int/lit8 v6, v38, 0x3

    add-int v6, v6, v45

    aget v6, v58, v6

    add-int/2addr v4, v6

    div-int/lit8 v6, v17, 0x2

    sub-int/2addr v4, v6

    add-int v4, v4, v36

    .line 181
    aget v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    div-int/lit8 v46, v4, 0x10

    .line 183
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget-object v4, v31, v4

    mul-int/lit8 v6, v38, 0x3

    add-int v6, v6, v45

    aget-object v6, v31, v6

    aget v6, v6, v46

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v46

    .line 178
    add-int/lit8 v47, v47, 0x1

    goto :goto_b

    .line 200
    .end local v47    # "p":I
    :cond_f
    aget v4, v32, v36

    aget v6, v32, v36

    mul-int/lit8 v8, v38, 0x3

    add-int v8, v8, v45

    aget-object v8, v31, v8

    aget v8, v8, v36

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    aput v4, v32, v36

    .line 199
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_a

    .line 216
    .end local v45    # "n":I
    :cond_10
    if-nez v36, :cond_12

    .line 217
    const/4 v4, 0x0

    aget v33, v32, v4

    .line 218
    const/16 v35, 0x0

    .line 215
    :cond_11
    :goto_c
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 220
    :cond_12
    aget v4, v32, v36

    move/from16 v0, v33

    if-ge v0, v4, :cond_11

    .line 221
    aget v33, v32, v36

    .line 222
    move/from16 v35, v36

    goto :goto_c

    .line 241
    .restart local v40    # "maxHist":[I
    .restart local v41    # "maxHistInd":[I
    :cond_13
    const/16 v45, 0x0

    .restart local v45    # "n":I
    :goto_d
    const/4 v4, 0x3

    move/from16 v0, v45

    if-lt v0, v4, :cond_14

    .line 240
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 242
    :cond_14
    const/16 v36, 0x0

    :goto_e
    move/from16 v0, v36

    move/from16 v1, v17

    if-lt v0, v1, :cond_15

    .line 252
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    mul-int/lit8 v6, v38, 0x3

    add-int v6, v6, v45

    aget v6, v48, v6

    mul-int v8, v17, v18

    int-to-float v8, v8

    div-float/2addr v6, v8

    aput v6, v48, v4

    .line 241
    add-int/lit8 v45, v45, 0x1

    goto :goto_d

    .line 243
    :cond_15
    const/16 v47, 0x0

    .restart local v47    # "p":I
    :goto_f
    move/from16 v0, v47

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    .line 242
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 244
    :cond_16
    mul-int/lit8 v4, v38, 0x3

    add-int v4, v4, v45

    aget v6, v48, v4

    mul-int/lit8 v8, v38, 0x3

    add-int v8, v8, v45

    aget-object v8, v31, v8

    aget v8, v8, v35

    .line 245
    mul-int/lit8 v9, v38, 0x3

    add-int v9, v9, v45

    aget v9, v53, v9

    div-int/lit8 v10, v17, 0x2

    sub-int/2addr v9, v10

    add-int v9, v9, v47

    mul-int/2addr v9, v7

    .line 246
    mul-int/lit8 v10, v38, 0x3

    add-int v10, v10, v45

    aget v10, v58, v10

    add-int/2addr v9, v10

    div-int/lit8 v10, v18, 0x2

    sub-int/2addr v9, v10

    add-int v9, v9, v36

    .line 245
    aget v9, v5, v9

    sub-int/2addr v8, v9

    .line 246
    and-int/lit16 v8, v8, 0xff

    .line 247
    mul-int/lit8 v9, v38, 0x3

    add-int v9, v9, v45

    aget-object v9, v31, v9

    aget v9, v9, v35

    .line 248
    mul-int/lit8 v10, v38, 0x3

    add-int v10, v10, v45

    aget v10, v53, v10

    div-int/lit8 v12, v17, 0x2

    sub-int/2addr v10, v12

    add-int v10, v10, v47

    mul-int/2addr v10, v7

    .line 249
    mul-int/lit8 v12, v38, 0x3

    add-int v12, v12, v45

    aget v12, v58, v12

    add-int/2addr v10, v12

    div-int/lit8 v12, v18, 0x2

    sub-int/2addr v10, v12

    add-int v10, v10, v36

    .line 248
    aget v10, v5, v10

    .line 247
    sub-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    mul-int/2addr v8, v9

    int-to-float v8, v8

    .line 244
    add-float/2addr v6, v8

    aput v6, v48, v4

    .line 243
    add-int/lit8 v47, v47, 0x1

    goto :goto_f

    .line 258
    .end local v47    # "p":I
    :cond_17
    const/4 v4, 0x0

    aput v4, v40, v45

    .line 259
    const/16 v38, 0x0

    :goto_10
    const/16 v4, 0x9

    move/from16 v0, v38

    if-lt v0, v4, :cond_18

    .line 257
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_4

    .line 260
    :cond_18
    if-nez v45, :cond_1a

    .line 261
    aget-object v4, v31, v38

    aget v4, v4, v35

    const/4 v6, 0x0

    aget v6, v40, v6

    if-le v4, v6, :cond_19

    .line 262
    const/4 v4, 0x0

    aget-object v6, v31, v38

    aget v6, v6, v35

    aput v6, v40, v4

    .line 263
    const/4 v4, 0x0

    aput v38, v41, v4

    .line 259
    :cond_19
    :goto_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_10

    .line 266
    :cond_1a
    const/4 v4, 0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_1d

    .line 267
    aget-object v4, v31, v38

    aget v4, v4, v35

    aget v6, v40, v45

    if-le v4, v6, :cond_1b

    const/4 v4, 0x1

    :goto_12
    aget-object v6, v31, v38

    aget v6, v6, v35

    add-int/lit8 v8, v45, -0x1

    aget v8, v40, v8

    if-ge v6, v8, :cond_1c

    const/4 v6, 0x1

    :goto_13
    and-int/2addr v4, v6

    if-eqz v4, :cond_19

    .line 268
    aget-object v4, v31, v38

    aget v4, v4, v35

    aput v4, v40, v45

    .line 269
    aput v38, v41, v45

    goto :goto_11

    .line 267
    :cond_1b
    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    goto :goto_13

    .line 273
    :cond_1d
    aget-object v4, v31, v38

    aget v4, v4, v35

    aget v6, v40, v45

    if-le v4, v6, :cond_1e

    const/4 v4, 0x1

    :goto_14
    aget-object v6, v31, v38

    aget v6, v6, v35

    add-int/lit8 v8, v45, -0x1

    aget v8, v40, v8

    if-ge v6, v8, :cond_1f

    const/4 v6, 0x1

    :goto_15
    and-int/2addr v6, v4

    aget-object v4, v31, v38

    aget v4, v4, v35

    add-int/lit8 v8, v45, -0x2

    aget v8, v40, v8

    if-ge v4, v8, :cond_20

    const/4 v4, 0x1

    :goto_16
    and-int/2addr v4, v6

    if-eqz v4, :cond_19

    .line 274
    aget-object v4, v31, v38

    aget v4, v4, v35

    aput v4, v40, v45

    .line 275
    aput v38, v41, v45

    goto :goto_11

    .line 273
    :cond_1e
    const/4 v4, 0x0

    goto :goto_14

    :cond_1f
    const/4 v6, 0x0

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    goto :goto_16

    .line 287
    .restart local v44    # "minVar":F
    .restart local v52    # "x1":I
    .restart local v57    # "y1":I
    :cond_21
    aget v4, v41, v38

    aget v4, v48, v4

    cmpg-float v4, v4, v44

    if-gez v4, :cond_22

    .line 288
    aget v4, v41, v38

    aget v44, v48, v4

    .line 289
    aget v4, v41, v38

    aget v52, v53, v4

    .line 290
    aget v4, v41, v38

    aget v57, v58, v4

    .line 286
    :cond_22
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_5
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->whelkRemove(Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 40
    return-object p1
.end method

.method public getRelativeRadius()I
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 434
    invoke-super {p0}, Lcn/jingling/lib/filters/PartialFilter;->release()V

    .line 435
    return-void
.end method

.method public setRelativeRadius(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I

    .prologue
    .line 44
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    .line 45
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    if-ge v0, v1, :cond_1

    .line 46
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMinRadius:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    if-le v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    goto :goto_0
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mRADIUS:I

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest;->mMaxRadius:I

    .line 35
    return-void
.end method
