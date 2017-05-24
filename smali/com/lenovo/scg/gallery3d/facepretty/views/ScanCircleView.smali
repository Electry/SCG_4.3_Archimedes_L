.class public Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
.super Landroid/widget/ImageView;
.source "ScanCircleView.java"


# static fields
.field public static final DRAW_NEXT_STEP:I = 0x0

.field private static final STOP_DRAW_ANGLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WDY:ScanCircleView"


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private center_x:F

.field private center_y:F

.field private endAngle:F

.field private isPort:Z

.field private isScaning:Z

.field private mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

.field mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mfaceRect:Landroid/graphics/Rect;

.field private r:F

.field private showScanCircleViewTimes:I

.field private startAngle:F

.field private stepSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 26
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    .line 28
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mfaceRect:Landroid/graphics/Rect;

    .line 30
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->startAngle:F

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F

    .line 34
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->stepSize:F

    .line 36
    iput v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_x:F

    .line 38
    iput v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_y:F

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->r:F

    .line 42
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isPort:Z

    .line 44
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->showScanCircleViewTimes:I

    .line 52
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 54
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isScaning:Z

    .line 211
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mHandler:Landroid/os/Handler;

    .line 59
    const v0, 0x7f02054b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setBackgroundResource(I)V

    .line 62
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getMyScanViewSize()F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_x:F

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getMyScanViewSize()F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_y:F

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getMyScanViewSize()F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->r:F

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isScaning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->stepSize:F

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    return-object p1
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
    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isPort:Z

    if-nez v4, :cond_0

    .line 174
    const/high16 v4, 0x42b40000    # 90.0f

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 177
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 179
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
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

    .line 182
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

    .line 184
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 186
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p2, p4

    sub-float v5, p3, p4

    add-float v6, p2, p4

    add-float v7, p3, p4

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 188
    .local v3, "rectF":Landroid/graphics/RectF;
    sub-float v4, p6, p5

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 189
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 191
    return-void
.end method


# virtual methods
.method public doinvalidate()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->invalidate()V

    .line 209
    return-void
.end method

.method public getMyScanViewSize()F
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public isScaning()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isScaning:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 249
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isPort:Z

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 266
    const-string v0, "WDY:ScanCircleView"

    const-string v1, "EffectFaceBitmap is null return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    :goto_1
    return-void

    .line 256
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    const-string v0, "WDY:ScanCircleView"

    const-string v1, "ScanCircleView start draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_x:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_y:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->r:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->startAngle:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setSectorClip(Landroid/graphics/Canvas;FFFFF)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public setBgBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "inbgBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 116
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_0
    return-void
.end method

.method public setCenter(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_x:F

    .line 195
    iput p2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->center_y:F

    .line 196
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method

.method public setFacePrettyBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "infacePrettyBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, "faceEffectBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    const/4 v0, 0x0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setEffectFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_1
    return-void
.end method

.method public setIsPort(Z)V
    .locals 0
    .param p1, "isPort"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isPort:Z

    .line 104
    return-void
.end method

.method public setMfaceRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mfaceRect"    # Landroid/graphics/Rect;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mfaceRect:Landroid/graphics/Rect;

    .line 100
    return-void
.end method
