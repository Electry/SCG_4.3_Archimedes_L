.class public Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;
.super Ljava/lang/Object;
.source "LoopForRemoveAcneState.java"


# static fields
.field private static penColor:I

.field private static penWidth:I


# instance fields
.field private last_X:I

.field private last_Y:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

.field private mImageView:Landroid/widget/ImageView;

.field private mPath:Landroid/graphics/Path;

.field protected paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;

.field private refresh_LastX:I

.field private refresh_LastY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    .line 29
    const/16 v0, 0x67

    const/16 v1, 0xba

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    .line 36
    iput-object p1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mCanvas:Landroid/graphics/Canvas;

    .line 37
    iput-object p2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mImageView:Landroid/widget/ImageView;

    .line 40
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->initPaint()V

    .line 41
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    iput-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    .line 45
    return-void
.end method

.method private PointSToRect(IIIIII)Landroid/graphics/Rect;
    .locals 2
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .local v0, "rect":Landroid/graphics/Rect;
    if-gt p1, p3, :cond_4

    .line 276
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 277
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 284
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt p5, v1, :cond_0

    .line 286
    iput p5, v0, Landroid/graphics/Rect;->left:I

    .line 288
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt p5, v1, :cond_1

    .line 290
    iput p5, v0, Landroid/graphics/Rect;->right:I

    .line 292
    :cond_1
    if-gt p2, p4, :cond_5

    .line 294
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 295
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 302
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gt p6, v1, :cond_2

    .line 304
    iput p6, v0, Landroid/graphics/Rect;->top:I

    .line 306
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-lt p6, v1, :cond_3

    .line 308
    iput p6, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    :cond_3
    return-object v0

    .line 281
    :cond_4
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 282
    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 299
    :cond_5
    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 300
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private getMidPixel(III)I
    .locals 8
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p3, "p3"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 252
    const/4 v4, 0x3

    new-array v3, v4, [I

    .line 253
    .local v3, "p":[I
    const/4 v4, 0x0

    aput p1, v3, v4

    .line 254
    aput p2, v3, v7

    .line 255
    aput p3, v3, v6

    .line 256
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 266
    aget v4, v3, v7

    return v4

    .line 257
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_1

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    aget v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v3, v5

    if-le v4, v5, :cond_2

    .line 261
    aget v0, v3, v1

    .line 262
    .local v0, "c":I
    add-int/lit8 v4, v1, 0x1

    aget v4, v3, v4

    aput v4, v3, v1

    .line 263
    add-int/lit8 v4, v1, 0x1

    aput v0, v3, v4

    .line 257
    .end local v0    # "c":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    sget v1, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    sget v1, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 54
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 55
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    return-void
.end method

.method private miniSmooth([III)V
    .locals 11
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x3

    .line 191
    mul-int v8, p2, p3

    const/16 v9, 0x9

    if-lt v8, v9, :cond_0

    if-lt p2, v10, :cond_0

    if-ge p3, v10, :cond_1

    .line 222
    :cond_0
    return-void

    .line 192
    :cond_1
    const/4 v4, 0x0

    .line 193
    .local v4, "pos":I
    mul-int/lit8 v8, p2, 0x2

    mul-int/lit8 v9, p3, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x4

    .line 194
    .local v6, "size":I
    new-array v7, v6, [I

    .line 195
    .local v7, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_0
    if-lt v1, p2, :cond_2

    .line 200
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v8, p3, -0x1

    if-lt v1, v8, :cond_3

    .line 205
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_4

    .line 217
    div-int/lit8 v8, v6, 0x2

    aget v3, v7, v8

    .line 218
    .local v3, "mid":I
    const/4 v1, 0x0

    :goto_3
    mul-int v8, p2, p3

    if-ge v1, v8, :cond_0

    .line 220
    aput v3, p1, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    .end local v3    # "mid":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aget v8, p1, v1

    aput v8, v7, v5

    .line 198
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 v8, p3, -0x1

    mul-int/2addr v8, p2

    add-int/2addr v8, v1

    aget v8, p1, v8

    aput v8, v7, v4

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    mul-int v8, v1, p2

    aget v8, p1, v8

    aput v8, v7, v5

    .line 203
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    mul-int v8, v1, p2

    add-int/2addr v8, p2

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    aput v8, v7, v4

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_4
    if-lt v2, v6, :cond_5

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 209
    :cond_5
    aget v8, v7, v2

    aget v9, v7, v1

    if-le v8, v9, :cond_6

    .line 211
    aget v0, v7, v1

    .line 212
    .local v0, "a":I
    aget v8, v7, v2

    aput v8, v7, v1

    .line 213
    aput v0, v7, v2

    .line 207
    .end local v0    # "a":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private removeAcne()V
    .locals 24

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v21, v0

    .line 127
    .local v21, "val":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 128
    const/4 v4, 0x0

    aget v4, v21, v4

    const/4 v8, 0x0

    aget v8, v21, v8

    mul-float/2addr v4, v8

    const/4 v8, 0x1

    aget v8, v21, v8

    const/4 v10, 0x1

    aget v10, v21, v10

    mul-float/2addr v8, v10

    add-float/2addr v4, v8

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v20, v0

    .line 129
    .local v20, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    div-float v8, v8, v20

    const/4 v10, 0x2

    aget v10, v21, v10

    div-float v10, v10, v20

    sub-float/2addr v8, v10

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-float v8, v8, v20

    const/4 v10, 0x2

    aget v10, v21, v10

    div-float v10, v10, v20

    sub-float/2addr v8, v10

    iput v8, v4, Landroid/graphics/RectF;->right:F

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    div-float v8, v8, v20

    const/4 v10, 0x5

    aget v10, v21, v10

    div-float v10, v10, v20

    sub-float/2addr v8, v10

    iput v8, v4, Landroid/graphics/RectF;->top:F

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    div-float v8, v8, v20

    const/4 v10, 0x5

    aget v10, v21, v10

    div-float v10, v10, v20

    sub-float/2addr v8, v10

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    .line 134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->refresh()V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v8}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-gez v4, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v8}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-gez v4, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v6, v4

    .line 144
    .local v6, "x0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v4

    .line 145
    .local v7, "y0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v0, v4

    move/from16 v22, v0

    .line 146
    .local v22, "x1":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v4

    move/from16 v23, v0

    .line 148
    .local v23, "y1":I
    sub-int v4, v22, v6

    div-int/lit8 v14, v4, 0x2

    .line 149
    .local v14, "xr0":I
    sub-int v4, v23, v7

    div-int/lit8 v15, v4, 0x2

    .line 150
    .local v15, "yr0":I
    sub-int v9, v23, v7

    .line 151
    .local v9, "h0":I
    sub-int v5, v22, v6

    .line 153
    .local v5, "w0":I
    mul-int/lit8 v4, v5, 0x2

    if-le v9, v4, :cond_2

    mul-int/lit8 v9, v5, 0x2

    .line 154
    :cond_2
    mul-int/lit8 v4, v9, 0x2

    if-le v5, v4, :cond_3

    mul-int/lit8 v5, v9, 0x2

    .line 156
    :cond_3
    if-le v9, v5, :cond_4

    div-int/lit8 v16, v5, 0x2

    .line 158
    .local v16, "r":I
    :goto_1
    mul-int v4, v5, v9

    :try_start_0
    new-array v3, v4, [I

    .line 159
    .local v3, "pixels":[I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->refresh()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v3    # "pixels":[I
    .end local v18    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v4}, Lcn/jingling/lib/textbubble/GroundImage;->refresh()V

    goto/16 :goto_0

    .line 156
    .end local v16    # "r":I
    :cond_4
    div-int/lit8 v16, v9, 0x2

    goto :goto_1

    .line 161
    .restart local v3    # "pixels":[I
    .restart local v16    # "r":I
    .restart local v18    # "i":I
    :cond_5
    const/4 v4, 0x0

    move v8, v5

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 162
    const/4 v4, 0x6

    if-lt v5, v4, :cond_6

    const/4 v4, 0x6

    if-ge v9, v4, :cond_7

    .line 164
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v9}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->miniSmooth([III)V

    .line 170
    :goto_4
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v19

    if-lt v0, v4, :cond_8

    .line 173
    const/4 v4, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 159
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .end local v19    # "j":I
    :cond_7
    move-object/from16 v10, p0

    move-object v11, v3

    move v12, v5

    move v13, v9

    .line 168
    invoke-direct/range {v10 .. v16}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->skinSmooth([IIIIII)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 176
    .end local v3    # "pixels":[I
    .end local v18    # "i":I
    :catch_0
    move-exception v17

    .line 178
    .local v17, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "pixels":[I
    .restart local v18    # "i":I
    .restart local v19    # "j":I
    :cond_8
    move-object v11, v3

    move v12, v5

    move v13, v9

    .line 171
    :try_start_2
    invoke-static/range {v11 .. v16}, Lcn/jingling/lib/filters/CMTProcessor;->skinSmoothPointEffect([IIIIII)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    add-int/lit8 v19, v19, 0x1

    goto :goto_5
.end method

.method private skinSmooth([IIIIII)V
    .locals 6
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "centerX"    # I
    .param p5, "centerY"    # I
    .param p6, "r"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    div-int/lit8 v2, p2, 0x2

    if-lt v0, v2, :cond_0

    .line 237
    add-int/lit8 v0, p2, -0x2

    :goto_1
    div-int/lit8 v2, p2, 0x2

    if-ge v0, v2, :cond_3

    .line 248
    return-void

    .line 228
    :cond_0
    div-int/lit8 v1, p3, 0x4

    .local v1, "j":I
    :goto_2
    div-int/lit8 v2, p3, 0x2

    if-lt v1, v2, :cond_1

    .line 232
    div-int/lit8 v2, p3, 0x4

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    :goto_3
    div-int/lit8 v2, p3, 0x2

    if-ge v1, v2, :cond_2

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    mul-int v2, v1, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    aget v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, p1, v5

    invoke-direct {p0, v3, v4, v5}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->getMidPixel(III)I

    move-result v3

    aput v3, p1, v2

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 234
    :cond_2
    mul-int v2, v1, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    aget v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, p1, v5

    invoke-direct {p0, v3, v4, v5}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->getMidPixel(III)I

    move-result v3

    aput v3, p1, v2

    .line 232
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 239
    .end local v1    # "j":I
    :cond_3
    div-int/lit8 v1, p3, 0x4

    .restart local v1    # "j":I
    :goto_4
    div-int/lit8 v2, p3, 0x2

    if-lt v1, v2, :cond_4

    .line 243
    div-int/lit8 v2, p3, 0x4

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    :goto_5
    div-int/lit8 v2, p3, 0x2

    if-ge v1, v2, :cond_5

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 241
    :cond_4
    mul-int v2, v1, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    aget v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    invoke-direct {p0, v3, v4, v5}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->getMidPixel(III)I

    move-result v3

    aput v3, p1, v2

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 245
    :cond_5
    mul-int v2, v1, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    aget v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    invoke-direct {p0, v3, v4, v5}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->getMidPixel(III)I

    move-result v3

    aput v3, p1, v2

    .line 243
    add-int/lit8 v1, v1, -0x1

    goto :goto_5
.end method


# virtual methods
.method public mouseDown(Lcn/jingling/lib/textbubble/PwMotion;)V
    .locals 6
    .param p1, "mEvent"    # Lcn/jingling/lib/textbubble/PwMotion;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 64
    .local v0, "x":I
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 66
    .local v1, "y":I
    iput v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    .line 67
    iput v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    .line 68
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    iput v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastX:I

    .line 71
    iput v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastY:I

    .line 73
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public mouseMove(Lcn/jingling/lib/textbubble/PwMotion;)V
    .locals 12
    .param p1, "mEvent"    # Lcn/jingling/lib/textbubble/PwMotion;

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 79
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getX()F

    move-result v0

    float-to-int v10, v0

    .line 80
    .local v10, "x":I
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getY()F

    move-result v0

    float-to-int v11, v0

    .line 82
    .local v11, "y":I
    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    sub-int v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v7, v0

    .line 83
    .local v7, "dx":F
    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    sub-int v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v8, v0

    .line 84
    .local v8, "dy":F
    cmpl-float v0, v7, v1

    if-gez v0, :cond_0

    cmpl-float v0, v8, v1

    if-ltz v0, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 88
    iget v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    iget v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    add-int/2addr v0, v10

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    add-int/2addr v0, v11

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastX:I

    iget v6, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->PointSToRect(IIIIII)Landroid/graphics/Rect;

    move-result-object v9

    .line 89
    .local v9, "tempRect":Landroid/graphics/Rect;
    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    add-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastX:I

    .line 90
    iget v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    add-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastY:I

    .line 91
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    int-to-float v2, v2

    iget v3, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastX:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->refresh_LastY:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 92
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mImageView:Landroid/widget/ImageView;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    sget v2, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    sget v3, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, v9, Landroid/graphics/Rect;->right:I

    sget v4, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->penWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 94
    iput v10, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_X:I

    .line 95
    iput v11, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->last_Y:I

    .line 98
    .end local v9    # "tempRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public mouseUp(Lcn/jingling/lib/textbubble/PwMotion;)V
    .locals 5
    .param p1, "mEvent"    # Lcn/jingling/lib/textbubble/PwMotion;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 103
    .local v0, "x":I
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 105
    .local v1, "y":I
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/PwMotion;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 110
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 112
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->initPaint()V

    .line 114
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->removeAcne()V

    .line 116
    :cond_0
    return-void
.end method
