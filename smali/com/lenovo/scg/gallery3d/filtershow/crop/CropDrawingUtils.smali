.class public abstract Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;
.super Ljava/lang/Object;
.source "CropDrawingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public static drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSizeWidth"    # I
    .param p3, "indicatorSizeHeight"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .prologue
    .line 106
    float-to-int v4, p4

    div-int/lit8 v5, p2, 0x2

    sub-int v1, v4, v5

    .line 107
    .local v1, "left":I
    float-to-int v4, p5

    div-int/lit8 v5, p3, 0x2

    sub-int v3, v4, v5

    .line 108
    .local v3, "top":I
    add-int v2, v1, p2

    .line 109
    .local v2, "right":I
    add-int v0, v3, p3

    .line 110
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    const-string v4, "dongyu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indicatorSize is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and indicatorSizeHeight is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public static drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IILandroid/graphics/RectF;ZI)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropIndicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSizeWidth"    # I
    .param p3, "indicatorSizeHeight"    # I
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "fixedAspect"    # Z
    .param p6, "selection"    # I

    .prologue
    .line 116
    if-nez p6, :cond_8

    const/4 v6, 0x1

    .line 117
    .local v6, "notMoving":Z
    :goto_0
    if-eqz p5, :cond_9

    .line 118
    const/4 v0, 0x3

    if-eq p6, v0, :cond_0

    if-eqz v6, :cond_1

    .line 119
    :cond_0
    iget v4, p4, Landroid/graphics/RectF;->left:F

    iget v5, p4, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 121
    :cond_1
    const/4 v0, 0x6

    if-eq p6, v0, :cond_2

    if-eqz v6, :cond_3

    .line 122
    :cond_2
    iget v4, p4, Landroid/graphics/RectF;->right:F

    iget v5, p4, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 124
    :cond_3
    const/16 v0, 0x9

    if-eq p6, v0, :cond_4

    if-eqz v6, :cond_5

    .line 125
    :cond_4
    iget v4, p4, Landroid/graphics/RectF;->left:F

    iget v5, p4, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 127
    :cond_5
    const/16 v0, 0xc

    if-eq p6, v0, :cond_6

    if-eqz v6, :cond_7

    .line 128
    :cond_6
    iget v4, p4, Landroid/graphics/RectF;->right:F

    iget v5, p4, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 144
    :cond_7
    :goto_1
    return-void

    .line 116
    .end local v6    # "notMoving":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    .restart local v6    # "notMoving":Z
    :cond_9
    and-int/lit8 v0, p6, 0x2

    if-nez v0, :cond_a

    if-eqz v6, :cond_b

    .line 132
    :cond_a
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p4, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 134
    :cond_b
    and-int/lit8 v0, p6, 0x8

    if-nez v0, :cond_c

    if-eqz v6, :cond_d

    .line 135
    :cond_c
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p4, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 137
    :cond_d
    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_e

    if-eqz v6, :cond_f

    .line 138
    :cond_e
    iget v4, p4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    .line 140
    :cond_f
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_10

    if-eqz v6, :cond_7

    .line 141
    :cond_10
    iget v4, p4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    goto :goto_1
.end method

.method public static drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 17
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 32
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v6, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    const/16 v1, 0x80

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v15, v1, v3

    .line 37
    .local v15, "stepX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v16, v1, v3

    .line 38
    .local v16, "stepY":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v1, v15

    .line 39
    .local v2, "x":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v16

    .line 40
    .local v9, "y":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v13, v1, :cond_0

    .line 41
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p0

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    add-float/2addr v2, v15

    .line 40
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    const/4 v1, 0x2

    if-ge v14, v1, :cond_1

    .line 45
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v7, p0

    move v11, v9

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    add-float v9, v9, v16

    .line 44
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method

.method public static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "innerBounds"    # Landroid/graphics/RectF;
    .param p3, "outerBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 184
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    return-void
.end method

.method public static drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "spotX"    # F
    .param p3, "spotY"    # F
    .param p4, "p"    # Landroid/graphics/Paint;
    .param p5, "shadowPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float v6, v9, p2

    .line 149
    .local v6, "sx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v7, v9, p3

    .line 150
    .local v7, "sy":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 151
    .local v1, "cx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 152
    .local v2, "cy":F
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    sub-float v10, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v7, v12

    add-float/2addr v12, v2

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    .local v4, "r1":Landroid/graphics/RectF;
    move v8, v6

    .line 154
    .local v8, "temp":F
    move v6, v7

    .line 155
    move v7, v8

    .line 156
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    sub-float v10, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v7, v12

    add-float/2addr v12, v2

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    .local v5, "r2":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 159
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v4, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 160
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v5, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 161
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 163
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 164
    .local v3, "path":Landroid/graphics/Path;
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 165
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 169
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 177
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public static getBitmapToDisplayMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "imageBounds"    # Landroid/graphics/RectF;
    .param p1, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-static {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropDrawingUtils;->setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 193
    return-object v0
.end method

.method public static setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "imageBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 198
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v0

    return v0
.end method

.method public static setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 7
    .param p0, "dst"    # Landroid/graphics/Matrix;
    .param p1, "image"    # Landroid/graphics/RectF;
    .param p2, "screen"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I

    .prologue
    const/4 v3, 0x0

    .line 202
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 203
    .local v2, "rotatedImage":Landroid/graphics/RectF;
    int-to-float v4, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 204
    invoke-virtual {p0, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v2, p2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v0

    .line 209
    .local v0, "rToR":Z
    int-to-float v4, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v1

    .line 210
    .local v1, "rot":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method
