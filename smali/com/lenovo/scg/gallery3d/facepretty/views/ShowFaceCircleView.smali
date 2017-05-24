.class public Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
.super Landroid/view/View;
.source "ShowFaceCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyCircleView"


# instance fields
.field private circleWH:I

.field private draw_base_face_flag:Z

.field private endX:F

.field private endY:F

.field private faceBitmap:Landroid/graphics/Bitmap;

.field private faceEffectBitmap:Landroid/graphics/Bitmap;

.field public mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

.field private mOnCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->faceBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->faceEffectBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 43
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->circleWH:I

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    .line 48
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    .line 50
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getCircleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02054b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setCircleBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getMyCircleViewSize()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    .line 74
    return-void
.end method

.method private cutCanvasToCircle(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "dstCanvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09043b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 234
    .local v2, "mCircleViewSize":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 237
    .local v0, "dstRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 238
    .local v1, "mCirclePath":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 240
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 241
    return-void
.end method

.method private cutCanvasToRectLeftRight(Landroid/graphics/Canvas;FF)V
    .locals 6
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;
    .param p2, "endX"    # F
    .param p3, "endY"    # F

    .prologue
    const/4 v1, 0x0

    .line 199
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 200
    .local v0, "mPath":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 203
    return-void
.end method

.method private cutCanvasToRectUpDown(Landroid/graphics/Canvas;FF)V
    .locals 6
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;
    .param p2, "endX"    # F
    .param p3, "endY"    # F

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 218
    .local v0, "mPath":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 220
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 221
    return-void
.end method

.method private rotateCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 227
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 228
    return-void
.end method


# virtual methods
.method public doinvalidate()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->invalidate()V

    .line 140
    return-void
.end method

.method public getCircleWH()I
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getCircleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "mCircleBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->circleWH:I

    .line 178
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->circleWH:I

    .line 180
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMyCircleViewSize()I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->clearAnimation()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setVisibility(I)V

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const v4, -0x7f000001

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getCircleBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 249
    .local v6, "mCircleBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 250
    .local v7, "mFaceBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 252
    .local v8, "mFaceEffectBitmap":Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    if-nez v0, :cond_4

    .line 255
    if-eqz v6, :cond_0

    .line 256
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    :cond_0
    if-eqz v8, :cond_1

    .line 263
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    if-eqz v0, :cond_3

    .line 269
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->cutCanvasToRectLeftRight(Landroid/graphics/Canvas;FF)V

    .line 272
    if-eqz v7, :cond_2

    .line 273
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 282
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->cutCanvasToCircle(Landroid/graphics/Canvas;)V

    .line 283
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 284
    .local v5, "drawLinePaint":Landroid/graphics/Paint;
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 286
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    .line 290
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    .line 291
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    .line 338
    .end local v5    # "drawLinePaint":Landroid/graphics/Paint;
    :cond_3
    :goto_0
    return-void

    .line 295
    :cond_4
    if-eqz v6, :cond_5

    .line 296
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 297
    invoke-direct {p0, p1, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->rotateCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 303
    :cond_5
    if-eqz v8, :cond_6

    .line 304
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 305
    invoke-direct {p0, p1, v8}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->rotateCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    :cond_6
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0, p1, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->rotateCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 313
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->cutCanvasToRectLeftRight(Landroid/graphics/Canvas;FF)V

    .line 314
    if-eqz v7, :cond_7

    .line 315
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->cutCanvasToCircle(Landroid/graphics/Canvas;)V

    .line 324
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 325
    .restart local v5    # "drawLinePaint":Landroid/graphics/Paint;
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 331
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    .line 332
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    .line 333
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mOnCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;->OnCircleViewTouch(Landroid/view/MotionEvent;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endY:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->endX:F

    .line 112
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->draw_base_face_flag:Z

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->doinvalidate()V

    .line 116
    :cond_0
    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 80
    if-ne p1, p0, :cond_0

    .line 81
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 82
    const-string v0, "MyCircleView"

    const-string/jumbo v1, "\u56de\u6536\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method

.method public setCircleWH(I)V
    .locals 0
    .param p1, "circleWH"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->circleWH:I

    .line 186
    return-void
.end method

.method public setFaceBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "faceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method public setFaceEffectBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "faceEffectBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setEffectFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    return-void
.end method

.method public setOnClicleViewTouchListener(Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;)V
    .locals 0
    .param p1, "listner"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->mOnCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;

    .line 349
    return-void
.end method
