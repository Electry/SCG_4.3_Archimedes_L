.class public Lcn/jingling/lib/widget/paster/PasterView;
.super Landroid/widget/ImageView;
.source "PasterView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasterView"


# instance fields
.field private mAspectRatio:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottom:I

.field private mDefaultPosition:Landroid/graphics/PointF;

.field private mDefaultScale:F

.field private mDirection:I

.field private mLastTouch:Landroid/graphics/PointF;

.field private mLeft:I

.field private mRectifiedMove:Landroid/graphics/PointF;

.field private mRectifiedRect:Landroid/graphics/RectF;

.field private mRight:I

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultPosition:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    .line 28
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/widget/paster/PasterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultPosition:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    .line 34
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/widget/paster/PasterView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    return-void
.end method

.method private rebound()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 98
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->rectifyMove()V

    .line 99
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 101
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/widget/paster/PasterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 103
    return-void
.end method

.method private rectifyMove()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 77
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 78
    .local v1, "bw":I
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 79
    .local v0, "bh":I
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 82
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 85
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 88
    :cond_1
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 89
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 91
    :cond_2
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 92
    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 94
    :cond_3
    return-void
.end method

.method private tapOnImage(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 108
    const/4 v3, 0x2

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    .line 109
    .local v0, "points":[F
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 110
    aget v3, v0, v2

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    aget v3, v0, v1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 111
    aget v3, v0, v1

    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 114
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateScaleAndPosition()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 118
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getWidth()I

    move-result v4

    .line 119
    .local v4, "vw":I
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getHeight()I

    move-result v3

    .line 120
    .local v3, "vh":I
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 121
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 122
    iput v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    .line 123
    iput v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    .line 124
    int-to-float v5, v4

    int-to-float v6, v3

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    .line 125
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    sub-int v5, v4, v5

    iput v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    .line 137
    :goto_0
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 138
    .local v1, "bw":I
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 139
    .local v0, "bh":I
    new-instance v5, Lcn/jingling/lib/widget/paster/PasterParams;

    .line 140
    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultPosition:Landroid/graphics/PointF;

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultScale:F

    iget v8, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    .line 139
    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/widget/paster/PasterParams;-><init>(Landroid/graphics/PointF;FI)V

    .line 140
    iget v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    iget v8, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    sub-int/2addr v7, v8

    .line 139
    invoke-static {v5, v1, v0, v6, v7}, Lcn/jingling/lib/widget/paster/PasterUtils;->getMatrixFromParams(Lcn/jingling/lib/widget/paster/PasterParams;IIII)Landroid/graphics/Matrix;

    move-result-object v2

    .line 141
    .local v2, "mat":Landroid/graphics/Matrix;
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    int-to-float v5, v5

    iget v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 142
    invoke-virtual {p0, v2}, Lcn/jingling/lib/widget/paster/PasterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 143
    return-void

    .line 127
    .end local v0    # "bh":I
    .end local v1    # "bw":I
    .end local v2    # "mat":Landroid/graphics/Matrix;
    :cond_0
    iput v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    .line 128
    iput v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    .line 129
    int-to-float v5, v3

    int-to-float v6, v4

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    .line 130
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    sub-int v5, v3, v5

    iput v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    goto :goto_0

    .line 133
    :cond_1
    iput v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    iput v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    .line 134
    iput v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    .line 135
    iput v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    goto :goto_0
.end method


# virtual methods
.method public getPasterParams()Lcn/jingling/lib/widget/paster/PasterParams;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 205
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 207
    .local v1, "bw":I
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 208
    .local v0, "bh":I
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    iget-object v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRight:I

    iget v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    sub-float v3, v5, v6

    .line 211
    .local v3, "maxWidth":F
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBottom:I

    iget v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 212
    .local v2, "maxHeight":F
    new-instance v4, Lcn/jingling/lib/widget/paster/PasterParams;

    invoke-direct {v4}, Lcn/jingling/lib/widget/paster/PasterParams;-><init>()V

    .line 213
    .local v4, "params":Lcn/jingling/lib/widget/paster/PasterParams;
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultScale:F

    iput v5, v4, Lcn/jingling/lib/widget/paster/PasterParams;->scale:F

    .line 214
    iget v5, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    iput v5, v4, Lcn/jingling/lib/widget/paster/PasterParams;->direction:I

    .line 215
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLeft:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v3

    .line 216
    iget-object v7, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 215
    iput-object v5, v4, Lcn/jingling/lib/widget/paster/PasterParams;->position:Landroid/graphics/PointF;

    .line 217
    return-object v4
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 70
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->updateScaleAndPosition()V

    .line 73
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/jingling/lib/widget/paster/PasterView;->tapOnImage(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 63
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 54
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 55
    iget-object v4, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 56
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->rectifyMove()V

    .line 57
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 58
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mRectifiedMove:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 60
    iget-object v1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcn/jingling/lib/widget/paster/PasterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 198
    iput p1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mAspectRatio:F

    .line 199
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->updateScaleAndPosition()V

    .line 202
    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 184
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    .line 185
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "setDirection: should be among 0 to 3"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_1
    iget v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v2, v3, 0x5a

    .line 188
    .local v2, "rotateAngle":I
    iput p1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDirection:I

    .line 189
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 190
    .local v1, "bw":I
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 191
    .local v0, "bh":I
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 193
    iget-object v3, p0, Lcn/jingling/lib/widget/paster/PasterView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcn/jingling/lib/widget/paster/PasterView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 194
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->rebound()V

    .line 195
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 169
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setPosition: should be between 0 to 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 173
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->updateScaleAndPosition()V

    .line 176
    :cond_2
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 153
    const-string/jumbo v1, "setScale: the value of scale should be between 0 to 1"

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iput p1, p0, Lcn/jingling/lib/widget/paster/PasterView;->mDefaultScale:F

    .line 156
    invoke-virtual {p0}, Lcn/jingling/lib/widget/paster/PasterView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcn/jingling/lib/widget/paster/PasterView;->updateScaleAndPosition()V

    .line 159
    :cond_2
    return-void
.end method
