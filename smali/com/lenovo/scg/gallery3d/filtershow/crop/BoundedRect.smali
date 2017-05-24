.class public Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;
.super Ljava/lang/Object;
.source "BoundedRect.java"


# instance fields
.field private inner:Landroid/graphics/RectF;

.field private innerRotated:[F

.field private outer:Landroid/graphics/RectF;

.field private rot:F


# direct methods
.method public constructor <init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/Rect;
    .param p3, "innerRect"    # Landroid/graphics/Rect;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 54
    :cond_0
    return-void
.end method

.method private getInverseRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 336
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 338
    return-object v0
.end method

.method private getRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 330
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 331
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 332
    return-object v0
.end method

.method private isConstrained()Z
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 312
    :goto_1
    return v1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reconstrain()V
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 318
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 319
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 320
    .local v1, "unrotated":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 321
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 322
    return-void
.end method

.method private rotateInner()V
    .locals 2

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 326
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 327
    return-void
.end method


# virtual methods
.method public fixedAspectResizeInner(Landroid/graphics/RectF;)V
    .locals 29
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 232
    .local v15, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v16

    .line 234
    .local v16, "m0":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 235
    .local v4, "aspectW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 236
    .local v3, "aspectH":F
    div-float v2, v4, v3

    .line 237
    .local v2, "aspRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v7

    .line 239
    .local v7, "corners":[F
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v21

    .line 241
    .local v21, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v19

    .line 244
    .local v19, "newInnerCorners":[F
    const/4 v8, -0x1

    .line 245
    .local v8, "fixed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1

    const/4 v8, 0x0

    .line 253
    :cond_0
    :goto_0
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_4

    .line 304
    :goto_1
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_3

    const/4 v8, 0x4

    goto :goto_0

    .line 250
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    .line 254
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v25

    .line 255
    .local v25, "widthSoFar":F
    const/16 v17, -0x1

    .line 256
    .local v17, "moved":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_8

    .line 257
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v5, v0, [F

    const/16 v26, 0x0

    aget v27, v19, v12

    aput v27, v5, v26

    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v19, v27

    aput v27, v5, v26

    .line 258
    .local v5, "c":[F
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    .line 259
    .local v6, "c0":[F
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v6, v27

    const/16 v28, 0x1

    aget v28, v6, v28

    invoke-static/range {v26 .. v28}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v26

    if-nez v26, :cond_5

    .line 261
    move/from16 v17, v12

    .line 262
    move/from16 v0, v17

    if-ne v0, v8, :cond_6

    .line 256
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x2

    goto :goto_2

    .line 263
    :cond_6
    invoke-static {v5, v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v14

    .line 264
    .local v14, "l2":[F
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v13, v0, [F

    const/16 v26, 0x0

    aget v27, v19, v12

    aput v27, v13, v26

    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v19, v27

    aput v27, v13, v26

    const/16 v26, 0x2

    aget v27, v21, v12

    aput v27, v13, v26

    const/16 v26, 0x3

    add-int/lit8 v27, v12, 0x1

    aget v27, v21, v27

    aput v27, v13, v26

    .line 265
    .local v13, "l1":[F
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/filtershow/crop/GeometryMath;->lineIntersect([F[F)[F

    move-result-object v22

    .line 266
    .local v22, "p":[F
    if-nez v22, :cond_7

    .line 269
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 270
    const/16 v26, 0x0

    aget v27, v21, v12

    aput v27, v22, v26

    .line 271
    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v21, v27

    aput v27, v22, v26

    .line 275
    :cond_7
    aget v9, v21, v8

    .line 276
    .local v9, "fixed_x":F
    add-int/lit8 v26, v8, 0x1

    aget v10, v21, v26

    .line 277
    .local v10, "fixed_y":F
    const/16 v26, 0x0

    aget v26, v22, v26

    sub-float v26, v9, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 278
    .local v20, "newWidth":F
    const/16 v26, 0x1

    aget v26, v22, v26

    sub-float v26, v10, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 279
    .local v18, "newHeight":F
    mul-float v26, v2, v18

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 280
    cmpg-float v26, v20, v25

    if-gez v26, :cond_5

    move/from16 v25, v20

    goto :goto_3

    .line 284
    .end local v5    # "c":[F
    .end local v6    # "c0":[F
    .end local v9    # "fixed_x":F
    .end local v10    # "fixed_y":F
    .end local v13    # "l1":[F
    .end local v14    # "l2":[F
    .end local v18    # "newHeight":F
    .end local v20    # "newWidth":F
    .end local v22    # "p":[F
    :cond_8
    div-float v11, v25, v2

    .line 285
    .local v11, "heightSoFar":F
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 286
    .local v23, "ret":Landroid/graphics/RectF;
    if-nez v8, :cond_a

    .line 287
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 288
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 299
    :cond_9
    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v24

    .line 300
    .local v24, "retCorners":[F
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 301
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    goto/16 :goto_1

    .line 289
    .end local v24    # "retCorners":[F
    :cond_a
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_b

    .line 290
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    sub-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 291
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 292
    :cond_b
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v8, v0, :cond_c

    .line 293
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    sub-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 294
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    sub-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_4

    .line 295
    :cond_c
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v8, v0, :cond_9

    .line 296
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 297
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    sub-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_4
.end method

.method public getInner()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getOuter()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public moveInner(FF)V
    .locals 16
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 113
    .local v8, "m0":Landroid/graphics/Matrix;
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v11, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 114
    .local v11, "translatedInner":Landroid/graphics/RectF;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 116
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v12

    .line 117
    .local v12, "translatedInnerCorners":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v10

    .line 119
    .local v10, "outerCorners":[F
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 120
    const/4 v13, 0x2

    new-array v5, v13, [F

    fill-array-data v5, :array_0

    .line 123
    .local v5, "correction":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v13, v12

    if-ge v7, v13, :cond_1

    .line 124
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 125
    .local v3, "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 126
    .local v4, "correctedInnerY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v3, v4}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-nez v13, :cond_0

    .line 127
    const/4 v13, 0x2

    new-array v2, v13, [F

    const/4 v13, 0x0

    aput v3, v2, v13

    const/4 v13, 0x1

    aput v4, v2, v13

    .line 128
    .local v2, "badCorner":[F
    invoke-static {v2, v10}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v9

    .line 129
    .local v9, "nearestSide":[F
    invoke-static {v2, v9}, Lcom/lenovo/scg/gallery3d/filtershow/crop/GeometryMath;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v6

    .line 130
    .local v6, "correctionVec":[F
    const/4 v13, 0x0

    aget v14, v5, v13

    const/4 v15, 0x0

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 131
    const/4 v13, 0x1

    aget v14, v5, v13

    const/4 v15, 0x1

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 123
    .end local v2    # "badCorner":[F
    .end local v6    # "correctionVec":[F
    .end local v9    # "nearestSide":[F
    :cond_0
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 135
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_1
    const/4 v7, 0x0

    :goto_1
    array-length v13, v12

    if-ge v7, v13, :cond_3

    .line 136
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 137
    .restart local v3    # "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 138
    .restart local v4    # "correctedInnerY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v3, v4}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-nez v13, :cond_2

    .line 139
    const/4 v13, 0x2

    new-array v6, v13, [F

    const/4 v13, 0x0

    aput v3, v6, v13

    const/4 v13, 0x1

    aput v4, v6, v13

    .line 140
    .restart local v6    # "correctionVec":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 141
    const/4 v13, 0x0

    aget v14, v6, v13

    sub-float/2addr v14, v3

    aput v14, v6, v13

    .line 142
    const/4 v13, 0x1

    aget v14, v6, v13

    sub-float/2addr v14, v4

    aput v14, v6, v13

    .line 143
    const/4 v13, 0x0

    aget v14, v5, v13

    const/4 v15, 0x0

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 144
    const/4 v13, 0x1

    aget v14, v5, v13

    const/4 v15, 0x1

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 135
    .end local v6    # "correctionVec":[F
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 149
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_3
    const/4 v7, 0x0

    :goto_2
    array-length v13, v12

    if-ge v7, v13, :cond_4

    .line 150
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 151
    .restart local v3    # "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 153
    .restart local v4    # "correctedInnerY":F
    aput v3, v12, v7

    .line 154
    add-int/lit8 v13, v7, 0x1

    aput v4, v12, v13

    .line 149
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 157
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 160
    return-void

    .line 120
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 61
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 63
    :cond_0
    return-void
.end method

.method public resizeInner(Landroid/graphics/RectF;)V
    .locals 17
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 168
    .local v4, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 170
    .local v5, "m0":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v8

    .line 171
    .local v8, "outerCorners":[F
    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v7

    .line 173
    .local v7, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v6

    .line 174
    .local v6, "newInnerCorners":[F
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 176
    .local v12, "ret":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v14, v6

    if-ge v3, v14, :cond_a

    .line 177
    const/4 v14, 0x2

    new-array v1, v14, [F

    const/4 v14, 0x0

    aget v15, v6, v3

    aput v15, v1, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v6, v15

    aput v15, v1, v14

    .line 178
    .local v1, "c":[F
    const/4 v14, 0x2

    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 179
    .local v2, "c0":[F
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x1

    aget v16, v2, v16

    invoke-static/range {v14 .. v16}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v14

    if-nez v14, :cond_1

    .line 181
    invoke-static {v1, v8}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v9

    .line 182
    .local v9, "outerSide":[F
    const/4 v14, 0x4

    new-array v11, v14, [F

    const/4 v14, 0x0

    aget v15, v6, v3

    aput v15, v11, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v6, v15

    aput v15, v11, v14

    const/4 v14, 0x2

    aget v15, v7, v3

    aput v15, v11, v14

    const/4 v14, 0x3

    add-int/lit8 v15, v3, 0x1

    aget v15, v7, v15

    aput v15, v11, v14

    .line 183
    .local v11, "pathOfCorner":[F
    invoke-static {v11, v9}, Lcom/lenovo/scg/gallery3d/filtershow/crop/GeometryMath;->lineIntersect([F[F)[F

    move-result-object v10

    .line 184
    .local v10, "p":[F
    if-nez v10, :cond_0

    .line 186
    const/4 v14, 0x2

    new-array v10, v14, [F

    .line 187
    const/4 v14, 0x0

    aget v15, v7, v3

    aput v15, v10, v14

    .line 188
    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v7, v15

    aput v15, v10, v14

    .line 192
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 176
    .end local v9    # "outerSide":[F
    .end local v10    # "p":[F
    .end local v11    # "pathOfCorner":[F
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 195
    .restart local v9    # "outerSide":[F
    .restart local v10    # "p":[F
    .restart local v11    # "pathOfCorner":[F
    :pswitch_0
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_2
    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 196
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_3
    iput v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 195
    :cond_2
    iget v14, v12, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 196
    :cond_3
    iget v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 200
    :pswitch_1
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_4

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_4
    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 201
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_5
    iput v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 200
    :cond_4
    iget v14, v12, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 201
    :cond_5
    iget v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_5

    .line 205
    :pswitch_2
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_6
    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 206
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_7
    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 205
    :cond_6
    iget v14, v12, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 206
    :cond_7
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    .line 210
    :pswitch_3
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_8
    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 211
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_9
    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 210
    :cond_8
    iget v14, v12, Landroid/graphics/RectF;->left:F

    goto :goto_8

    .line 211
    :cond_9
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    .line 218
    .end local v1    # "c":[F
    .end local v2    # "c0":[F
    .end local v9    # "outerSide":[F
    .end local v10    # "p":[F
    .end local v11    # "pathOfCorner":[F
    :cond_a
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v13

    .line 219
    .local v13, "retCorners":[F
    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 220
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 223
    return-void

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 73
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 82
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 85
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 86
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    goto :goto_0
.end method

.method public setToInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 91
    return-void
.end method

.method public setToOuter(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 95
    return-void
.end method
