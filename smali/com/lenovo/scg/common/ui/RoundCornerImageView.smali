.class public Lcom/lenovo/scg/common/ui/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "RoundCornerImageView.java"


# static fields
.field private static final LAYERS_FLAGS:I = 0x1f


# instance fields
.field private commonPaint:Landroid/graphics/Paint;

.field private commonRectF:Landroid/graphics/RectF;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private roundPx:F

.field private roundPy:F

.field private srcBitmap:Landroid/graphics/Bitmap;

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x41000000    # 8.0f

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPx:F

    .line 26
    iput v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPy:F

    .line 33
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 44
    sget-object v1, Lcom/lenovo/scg/R$styleable;->RoundCornerImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPx:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPx:F

    .line 47
    iget v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPy:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPy:F

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private initMatrix()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 125
    iget-object v7, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 126
    .local v1, "dwidth":I
    iget-object v7, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 128
    .local v0, "dheight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingRight()I

    move-result v8

    sub-int v6, v7, v8

    .line 129
    .local v6, "vwidth":I
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingBottom()I

    move-result v8

    sub-int v5, v7, v8

    .line 131
    .local v5, "vheight":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 134
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 136
    .local v3, "dy":F
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-le v7, v8, :cond_0

    .line 137
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 138
    .local v4, "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v2, v7, v9

    .line 144
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 145
    iget-object v7, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v8, v2, v9

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 146
    return-void

    .line 140
    .end local v4    # "scale":F
    :cond_0
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 141
    .restart local v4    # "scale":F
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v3, v7, v9

    goto :goto_0
.end method

.method private initParams()V
    .locals 6

    .prologue
    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v0, "bitmapRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonRectF:Landroid/graphics/RectF;

    .line 122
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->srcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->initMatrix()V

    .line 66
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->initParams()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 75
    .local v7, "saveCount":I
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPx:F

    iget v2, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->roundPy:F

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->commonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 109
    .end local v7    # "saveCount":I
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->srcBitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->invalidate()V

    .line 57
    return-void
.end method
