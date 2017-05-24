.class public Lcom/lenovo/scg/gallery3d/edit/PinchImageView;
.super Landroid/widget/ImageView;
.source "PinchImageView.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mCurrentBottom:F

.field private mCurrentLeft:F

.field private mCurrentRight:F

.field private mCurrentScale:F

.field private mCurrentTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOldSpace:F

.field private mScale:F

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mStartPoint:Landroid/graphics/PointF;

.field private mode:I

.field private savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->init()V

    .line 61
    return-void
.end method

.method private getScale()F
    .locals 5

    .prologue
    .line 231
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapWidth:F

    .line 233
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapHeight:F

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "screenHeight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 240
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapWidth:F

    div-float v2, v3, v4

    .line 241
    .local v2, "widthScale":F
    int-to-float v3, v1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapHeight:F

    div-float v0, v3, v4

    .line 242
    .local v0, "heightScale":F
    cmpl-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    .line 245
    goto :goto_0

    .line 238
    .end local v0    # "heightScale":F
    .end local v2    # "widthScale":F
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1
.end method

.method private getSpace(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 199
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 200
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    .line 96
    return-void
.end method

.method private initBitmapBound()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 251
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 252
    .local v1, "rect":Landroid/graphics/Rect;
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 253
    .local v2, "values":[F
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 254
    const/4 v3, 0x2

    aget v3, v2, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    .line 255
    const/4 v3, 0x5

    aget v3, v2, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    .line 256
    iget v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    aget v5, v2, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    .line 257
    iget v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    aget v5, v2, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    .line 258
    const-string v3, "jiaxiaowei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initBitmapBounds------------mCurrentLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentRight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentBottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v11, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 194
    return v11

    .line 102
    :pswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 104
    iput v11, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    goto :goto_0

    .line 107
    :pswitch_2
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    if-ne v5, v11, :cond_7

    .line 108
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v4, v5, v6

    .line 110
    .local v4, "transWidth":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v3, v5, v6

    .line 111
    .local v3, "transHeight":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 112
    const/4 v3, 0x0

    .line 121
    :cond_1
    :goto_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    .line 122
    const/4 v4, 0x0

    .line 131
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 114
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    add-float/2addr v5, v3

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    .line 115
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    neg-float v3, v5

    .line 117
    :cond_4
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 118
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    sub-float v3, v5, v6

    goto :goto_1

    .line 124
    :cond_5
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    add-float/2addr v5, v4

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_6

    .line 125
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    neg-float v4, v5

    .line 127
    :cond_6
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 128
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    sub-float v4, v5, v6

    goto :goto_2

    .line 132
    .end local v3    # "transHeight":F
    .end local v4    # "transWidth":F
    :cond_7
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    if-ne v5, v9, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getSpace(Landroid/view/MotionEvent;)F

    move-result v1

    .line 134
    .local v1, "newDist":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mOldSpace:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 136
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mOldSpace:F

    div-float v5, v1, v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentScale:F

    .line 138
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mOldSpace:F

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_0

    .line 142
    :cond_8
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mOldSpace:F

    cmpl-float v5, v1, v5

    if-gtz v5, :cond_0

    .line 146
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentScale:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentScale:F

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    div-float/2addr v8, v10

    iget v9, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    div-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 151
    .end local v1    # "newDist":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getSpace(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mOldSpace:F

    .line 153
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 154
    iput v9, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    goto/16 :goto_0

    .line 159
    :pswitch_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mode:I

    .line 160
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->initBitmapBound()V

    .line 161
    const/4 v4, 0x0

    .line 162
    .restart local v4    # "transWidth":F
    const/4 v3, 0x0

    .line 163
    .restart local v3    # "transHeight":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_d

    .line 164
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    float-to-int v6, v6

    if-eq v5, v6, :cond_a

    .line 165
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090199

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 166
    .local v2, "topViewsHeight":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09019a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 167
    .local v0, "bottomViewsHeight":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    sub-float/2addr v5, v2

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float v3, v2, v5

    .line 178
    .end local v0    # "bottomViewsHeight":F
    .end local v2    # "topViewsHeight":F
    :cond_a
    :goto_3
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_f

    .line 179
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_b

    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 180
    :cond_b
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float v4, v5, v10

    .line 190
    :cond_c
    :goto_4
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMatrix-----------------:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",transWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",transHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 171
    :cond_d
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 172
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentBottom:F

    sub-float v3, v5, v6

    .line 174
    :cond_e
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_a

    .line 175
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentTop:F

    neg-float v3, v5

    goto :goto_3

    .line 183
    :cond_f
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    .line 184
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentRight:F

    sub-float v4, v5, v6

    .line 186
    :cond_10
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_c

    .line 187
    iget v5, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mCurrentLeft:F

    neg-float v4, v5

    goto :goto_4

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    :cond_0
    return-void
.end method

.method public resetScreenWidthAndHeight(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 273
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 276
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenWidth:F

    .line 277
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScreenHeight:F

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 279
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Z)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canScale"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    if-eqz p2, :cond_1

    .line 207
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getScale()F

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScale:F

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 210
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 212
    .local v1, "screenHeight":I
    if-le v2, v1, :cond_0

    .line 213
    move v6, v2

    .line 214
    .local v6, "width":I
    move v2, v1

    .line 215
    move v1, v6

    .line 218
    .end local v6    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090199

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 219
    .local v3, "topViewsHeight":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09019a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 220
    .local v0, "bottomViewsHeight":F
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScale:F

    iget v9, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScale:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 221
    int-to-float v7, v2

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapWidth:F

    iget v9, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScale:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float v5, v7, v10

    .line 223
    .local v5, "transWidth":F
    int-to-float v7, v1

    sub-float/2addr v7, v3

    sub-float/2addr v7, v0

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mBitmapHeight:F

    iget v9, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mScale:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float v4, v3, v7

    .line 224
    .local v4, "transHeight":F
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 225
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->invalidate()V

    .line 228
    .end local v0    # "bottomViewsHeight":F
    .end local v1    # "screenHeight":I
    .end local v2    # "screenWidth":I
    .end local v3    # "topViewsHeight":F
    .end local v4    # "transHeight":F
    .end local v5    # "transWidth":F
    :cond_1
    return-void
.end method
