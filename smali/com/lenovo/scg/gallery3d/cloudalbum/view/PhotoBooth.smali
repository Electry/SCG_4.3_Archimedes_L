.class public Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;
.super Landroid/view/View;
.source "PhotoBooth.java"


# instance fields
.field private final end_angle:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mFrameColor:I

.field private mFrameMargin:I

.field private mFrameWidth:I

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressBg:I

.field private mProgressColor:I

.field private mProgressMax:I

.field private mProgressWidth:I

.field private mResource:Landroid/content/res/Resources;

.field private mRingColor:I

.field private mRingPadding:I

.field private mRingWidth:I

.field private final start_angle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mContext:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mOval:Landroid/graphics/RectF;

    .line 32
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgress:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressMax:I

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->start_angle:I

    .line 44
    const/16 v0, 0x168

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->end_angle:I

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mOval:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingWidth:I

    .line 64
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingPadding:I

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingColor:I

    .line 67
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressWidth:I

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0d00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressBg:I

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0d00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressColor:I

    .line 71
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameWidth:I

    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameMargin:I

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0d00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameColor:I

    .line 75
    const v0, 0x7f020427

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->setBitmap(I)V

    .line 76
    return-void
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 178
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private drawBitmap(I)V
    .locals 14
    .param p1, "diameter"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 117
    .local v3, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 118
    .local v4, "height":I
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v13, v0, v1

    .line 120
    .local v13, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 122
    const-string v0, "WYJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 127
    .local v9, "output":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v10, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    .local v11, "rect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 131
    .local v12, "rectF":Landroid/graphics/RectF;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 133
    const v0, -0xbdbdbe

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, v12, v0, v1, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 137
    invoke-virtual {v8, v7, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_1
    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->getWidth()I

    move-result v9

    .line 81
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->getHeight()I

    move-result v7

    .line 82
    .local v7, "height":I
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 83
    .local v6, "center":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingWidth:I

    sub-int v8, v6, v0

    .line 84
    .local v8, "radius":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    int-to-float v0, v6

    int-to-float v1, v6

    int-to-float v2, v8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mRingPadding:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressBg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    int-to-float v0, v6

    int-to-float v1, v6

    int-to-float v2, v8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mOval:Landroid/graphics/RectF;

    sub-int v1, v6, v8

    int-to-float v1, v1

    sub-int v2, v6, v8

    int-to-float v2, v2

    add-int v3, v6, v8

    int-to-float v3, v3

    add-int v4, v6, v8

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mOval:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressMax:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    int-to-float v0, v6

    int-to-float v1, v6

    int-to-float v2, v8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mFrameWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v8, v0

    .line 110
    mul-int/lit8 v0, v8, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->drawBitmap(I)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    div-int/lit8 v1, v9, 0x2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-int/lit8 v2, v7, 0x2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public setBitmap(I)V
    .locals 1
    .param p1, "drawable"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mResource:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mBitmap:Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->invalidate()V

    .line 151
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 158
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressMax:I

    if-gt p1, v0, :cond_0

    .line 159
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgress:I

    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->invalidate()V

    .line 162
    :cond_0
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressMax:I

    if-eq v0, p1, :cond_0

    .line 170
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->mProgressMax:I

    .line 171
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/PhotoBooth;->invalidate()V

    .line 173
    :cond_0
    return-void
.end method
