.class public Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
.super Landroid/widget/ImageView;
.source "CircleProgressView.java"


# instance fields
.field centerX:F

.field centerY:F

.field private endAngle:I

.field private isSelect:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field r:F

.field private stepsize:F

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbSelectedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbSelectedBitmap:Landroid/graphics/Bitmap;

    .line 25
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->stepsize:F

    .line 27
    const/16 v0, -0x5a

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 31
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerX:F

    .line 33
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerY:F

    .line 35
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->r:F

    .line 37
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->isSelect:Z

    .line 40
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mTypedArray:Landroid/content/res/TypedArray;

    .line 46
    sget-object v0, Lcom/lenovo/scg/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mTypedArray:Landroid/content/res/TypedArray;

    .line 48
    const v0, 0x7f020550

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setBackgroundResource(I)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbSelectedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbSelectedBitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerX:F

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerY:F

    .line 62
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerX:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->r:F

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private setSectorClip(Landroid/graphics/Canvas;FFFFF)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "center_X"    # F
    .param p3, "center_Y"    # F
    .param p4, "r"    # F
    .param p5, "startAngle"    # F
    .param p6, "endAngle"    # F

    .prologue
    .line 109
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 111
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    move/from16 v0, p2

    float-to-double v4, v0

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p3

    float-to-double v6, v0

    move/from16 v0, p4

    float-to-double v8, v0

    move/from16 v0, p5

    float-to-double v10, v0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    move/from16 v0, p2

    float-to-double v4, v0

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p3

    float-to-double v6, v0

    move/from16 v0, p4

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 118
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p2, p4

    sub-float v5, p3, p4

    add-float v6, p2, p4

    add-float v7, p3, p4

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    .local v3, "rectF":Landroid/graphics/RectF;
    sub-float v4, p6, p5

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 121
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public isSelect()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->isSelect:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->centerY:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->r:F

    const/high16 v5, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSectorClip(Landroid/graphics/Canvas;FFFFF)V

    .line 144
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->isSelect:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 89
    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v0, p1, v1

    .line 90
    .local v0, "angle":F
    neg-float v1, v0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->stepsize:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->invalidate()V

    .line 92
    return-void
.end method

.method public setProgress2ArcSoft(I)V
    .locals 1
    .param p1, "effectparam"    # I

    .prologue
    .line 76
    div-int/lit8 v0, p1, 0xa

    mul-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->invalidate()V

    .line 78
    return-void
.end method

.method public setProgressViaEffectParam(I)V
    .locals 2
    .param p1, "effectparam"    # I

    .prologue
    .line 71
    int-to-float v0, p1

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->invalidate()V

    .line 73
    return-void
.end method

.method public setSeekBarProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 103
    int-to-double v0, p1

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->endAngle:I

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->invalidate()V

    .line 105
    return-void
.end method

.method public setSelect(Z)V
    .locals 1
    .param p1, "isSelect"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->isSelect:Z

    .line 131
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->isSelect:Z

    if-eqz v0, :cond_0

    .line 132
    const v0, 0x7f02040c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setBackgroundResource(I)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const v0, 0x7f020550

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setBackgroundResource(I)V

    goto :goto_0
.end method
