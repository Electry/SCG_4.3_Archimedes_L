.class public Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;
.super Landroid/view/View;
.source "TemplateView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final ROTATE_ANGLE_DEFAULT:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "MySurfaceView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBorder:I

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mCenterX:F

.field private mCenterY:F

.field private mHasInit:Z

.field private mIndex:I

.field private mIsFrame:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMoveX:I

.field private mMoveY:I

.field private mOldZoomScale:F

.field private mPointDis:I

.field private mRecanvas:Landroid/graphics/Canvas;

.field private mScale:F

.field private mScaleBitmapHeight:F

.field private mScaleBitmapWidth:F

.field private mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

.field private mTouchX:F

.field private mTouchY:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mZoomScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    .line 69
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIsFrame:Z

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBorder:I

    .line 77
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    .line 81
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIndex:I

    .line 85
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    .line 69
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIsFrame:Z

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBorder:I

    .line 77
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    .line 81
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIndex:I

    .line 93
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setFocusableInTouchMode(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setClickable(Z)V

    .line 96
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 97
    return-void
.end method

.method private getPointDistance(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 308
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private initImage()V
    .locals 5

    .prologue
    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    .line 198
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    .line 199
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 200
    .local v1, "widthScale":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 201
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 202
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    .line 206
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    .line 207
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    .line 208
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    .line 211
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 212
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    goto :goto_0

    .line 204
    :cond_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    goto :goto_1
.end method


# virtual methods
.method public destoryTemplateView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 330
    const-string v0, "TemplateView"

    const-string/jumbo v1, "release mCanvasBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    .line 333
    return-void
.end method

.method public getmIndex()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIndex:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 319
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->initImage()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBorder:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBorder:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCenterX:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCenterY:F

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mRecanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIsFrame:Z

    if-eqz v0, :cond_1

    .line 121
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .local v5, "framePaint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    .end local v5    # "framePaint":Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIsFrame:Z

    .line 314
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 300
    :goto_0
    return v4

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 226
    .local v0, "action":I
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIsFrame:Z

    .line 227
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    if-eqz v6, :cond_1

    .line 228
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->setCurrentSurfaceView(Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;)V

    .line 229
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->switchMemu(Z)Z

    .line 231
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->postInvalidate()V

    move v4, v5

    .line 300
    goto :goto_0

    .line 233
    :pswitch_1
    const-string v6, "MySurfaceView"

    const-string v7, "MotionEvent.ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchX:F

    .line 235
    iput v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchY:F

    .line 236
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    .line 237
    const-string v6, "MySurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mZoomScale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 239
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->initImage()V

    .line 241
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 242
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    .line 255
    :cond_3
    :goto_2
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mOldZoomScale:F

    goto :goto_1

    .line 244
    :cond_4
    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    if-gez v6, :cond_6

    .line 245
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 249
    :cond_5
    :goto_3
    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    if-gez v6, :cond_7

    .line 250
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    goto :goto_2

    .line 246
    :cond_6
    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 247
    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    goto :goto_3

    .line 251
    :cond_7
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 252
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    goto :goto_2

    .line 258
    :pswitch_2
    const-string v4, "MySurfaceView"

    const-string v6, "MotionEvent.ACTION_DOWN"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->requestFocusFromTouch()Z

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchX:F

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchY:F

    goto/16 :goto_1

    .line 264
    :pswitch_3
    const-string v6, "MySurfaceView"

    const-string v7, "MotionEvent.ACTION_MOVE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 267
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 268
    .local v3, "y":F
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchX:F

    sub-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 269
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchY:F

    sub-float/2addr v6, v3

    float-to-int v6, v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    .line 270
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchX:F

    .line 271
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTouchY:F

    goto/16 :goto_1

    .line 272
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 273
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float v2, v6, v7

    .line 274
    .restart local v2    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float v3, v4, v6

    .line 275
    .restart local v3    # "y":F
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->getPointDistance(FF)I

    move-result v1

    .line 276
    .local v1, "value":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    if-nez v4, :cond_9

    .line 277
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    goto/16 :goto_1

    .line 279
    :cond_9
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    sub-int v4, v1, v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_a

    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    sub-int v4, v1, v4

    const/16 v6, -0xa

    if-gt v4, v6, :cond_2

    .line 280
    :cond_a
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mOldZoomScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_c

    .line 281
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mOldZoomScale:F

    int-to-float v6, v1

    iget v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    .line 285
    :goto_4
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    mul-float/2addr v6, v9

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_b

    .line 286
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    .line 288
    :cond_b
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    .line 289
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v4, v4

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    goto/16 :goto_1

    .line 283
    :cond_c
    iget v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    int-to-float v6, v1

    mul-float/2addr v4, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mPointDis:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    goto :goto_4

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 219
    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    .line 220
    return-void
.end method

.method public rotatePhoto()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 133
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 134
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    .line 138
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 139
    .local v8, "widthScale":F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 140
    .local v7, "heightScale":F
    cmpl-float v0, v8, v7

    if-lez v0, :cond_0

    .line 141
    iput v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    .line 145
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    .line 146
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    .line 147
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->invalidate()V

    .line 149
    return-void

    .line 143
    :cond_0
    iput v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    goto :goto_0
.end method

.method public rotatePhotoLeft()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 154
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveX:I

    .line 155
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMoveY:I

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    .line 159
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 160
    .local v8, "widthScale":F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 161
    .local v7, "heightScale":F
    cmpl-float v0, v8, v7

    if-lez v0, :cond_0

    .line 162
    iput v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    .line 166
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScale:F

    .line 167
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapWidth:F

    .line 168
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mScaleBitmapHeight:F

    .line 169
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->invalidate()V

    .line 170
    return-void

    .line 164
    :cond_0
    iput v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mZoomScale:F

    goto :goto_0
.end method

.method public setmBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapWidth:I

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmapHeight:I

    .line 191
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->invalidate()V

    .line 193
    return-void
.end method

.method public setmIndex(I)V
    .locals 0
    .param p1, "mIndex"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mIndex:I

    .line 349
    return-void
.end method

.method public setmTemplateMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;)V
    .locals 0
    .param p1, "mTemplateMosaic"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mTemplateMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    .line 305
    return-void
.end method

.method public switchTmplRelease()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mHasInit:Z

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 341
    :cond_0
    return-void
.end method

.method public turnLR()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->invalidate()V

    .line 177
    return-void
.end method

.method public turnUD()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/TemplateView;->invalidate()V

    .line 184
    return-void
.end method
