.class public Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;
.super Ljava/lang/Object;
.source "BackgroundGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatorBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "corner"    # Landroid/graphics/Bitmap;
    .param p1, "edge"    # Landroid/graphics/Bitmap;
    .param p2, "content"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 17
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 18
    .local v11, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v12, -0x1

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 21
    .local v4, "conWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 22
    .local v3, "conHeight":I
    div-int v12, p4, v3

    add-int/lit8 v6, v12, 0x1

    .line 23
    .local v6, "contentRow":I
    div-int v12, p3, v4

    add-int/lit8 v5, v12, 0x1

    .line 24
    .local v5, "contentColum":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_1

    .line 25
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v5, :cond_0

    .line 26
    mul-int v12, v10, v4

    int-to-float v12, v12

    mul-int v13, v9, v3

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 25
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 29
    .end local v10    # "j":I
    :cond_1
    if-eqz p1, :cond_3

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 31
    .local v7, "edgeHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 32
    .local v8, "edgeWidth":I
    const/4 v9, 0x0

    :goto_2
    div-int v12, p4, v7

    add-int/lit8 v12, v12, 0x1

    if-ge v9, v12, :cond_2

    .line 33
    const/4 v12, 0x0

    mul-int v13, v9, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 34
    const/16 v12, 0xb4

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    sub-int v13, p3, v8

    int-to-float v13, v13

    mul-int v14, v9, v7

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 32
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 36
    :cond_2
    const/4 v9, 0x0

    :goto_3
    div-int v12, p3, v7

    add-int/lit8 v12, v12, 0x1

    if-ge v9, v12, :cond_3

    .line 37
    const/16 v12, 0x5a

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    mul-int v13, v9, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    const/16 v12, 0x10e

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    mul-int v13, v9, v7

    int-to-float v13, v13

    sub-int v14, p4, v8

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 41
    .end local v7    # "edgeHeight":I
    .end local v8    # "edgeWidth":I
    :cond_3
    return-object v11
.end method

.method public static generatorBitmap2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "corner"    # Landroid/graphics/Bitmap;
    .param p1, "edge"    # Landroid/graphics/Bitmap;
    .param p2, "content"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 45
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 46
    .local v14, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 48
    const/4 v10, 0x0

    .line 49
    .local v10, "cornerWidth":I
    const/4 v8, 0x0

    .line 50
    .local v8, "cornerHeight":I
    const/4 v9, 0x0

    .line 51
    .local v9, "cornerLength":I
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 54
    add-int v9, v10, v8

    .line 55
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    const/16 v3, 0x5a

    invoke-static {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int v4, p3, v8

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    const/16 v3, 0xb4

    invoke-static {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int v4, p3, v10

    int-to-float v4, v4

    sub-int v5, p4, v8

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    const/16 v3, 0x10e

    invoke-static {p0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    sub-int v5, p4, v10

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    :cond_0
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 62
    .local v11, "edgeHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 63
    .local v12, "edgeWidth":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    sub-int v3, p4, v9

    div-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x1

    if-ge v13, v3, :cond_1

    .line 64
    const/4 v3, 0x0

    mul-int v4, v13, v11

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    const/16 v3, 0xb4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int v4, p3, v12

    int-to-float v4, v4

    mul-int v5, v13, v11

    add-int/2addr v5, v8

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v13, 0x0

    :goto_1
    sub-int v3, p3, v10

    div-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x1

    if-ge v13, v3, :cond_2

    .line 68
    const/16 v3, 0x5a

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    mul-int v4, v13, v11

    add-int/2addr v4, v10

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    const/16 v3, 0x10e

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/BackgroundGenerator;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    mul-int v4, v13, v11

    add-int/2addr v4, v8

    int-to-float v4, v4

    sub-int v5, p4, v12

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 72
    .end local v11    # "edgeHeight":I
    .end local v12    # "edgeWidth":I
    .end local v13    # "i":I
    :cond_2
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-object v14
.end method

.method private static roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roatation"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
