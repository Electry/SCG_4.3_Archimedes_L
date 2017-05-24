.class public Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
.super Landroid/widget/ImageView;
.source "MulitPointTouchImageView.java"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "MulitPointTouchImageView"


# instance fields
.field _dy:F

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapOriginalHeight:I

.field private mBitmapOriginalWidth:I

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mFitScreenScale:F

.field protected mHandler:Landroid/os/Handler;

.field public mIsScaleFinish:Z

.field public mIsTranslateFinish:Z

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field mMinZoom:F

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisHeight:I

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    .line 55
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsScaleFinish:Z

    .line 56
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisHeight:I

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    .line 55
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsScaleFinish:Z

    .line 56
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 66
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    .line 67
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    .line 68
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisHeight:I

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    .line 55
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsScaleFinish:Z

    .line 56
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 82
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisHeight:I

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    .line 55
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsScaleFinish:Z

    .line 56
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 89
    iput p4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    .line 90
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->init()V

    .line 92
    return-void
.end method

.method private arithmeticFitScreenScale()V
    .locals 7

    .prologue
    .line 98
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-le v5, v6, :cond_4

    .line 100
    :cond_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-gt v5, v6, :cond_1

    .line 101
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 103
    .local v3, "fitScreenScaleWidth":F
    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    .line 134
    .end local v3    # "fitScreenScaleWidth":F
    :goto_0
    return-void

    .line 104
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-gt v5, v6, :cond_2

    .line 105
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 107
    .local v2, "fitScreenScaleHeight":F
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    goto :goto_0

    .line 109
    .end local v2    # "fitScreenScaleHeight":F
    :cond_2
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 111
    .local v4, "fitScreenWidthScale":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 113
    .local v0, "fitScreenHeight":F
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    .line 114
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 116
    .local v1, "fitScreenHeightScale":F
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    goto :goto_0

    .line 118
    .end local v1    # "fitScreenHeightScale":F
    :cond_3
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    goto :goto_0

    .line 122
    .end local v0    # "fitScreenHeight":F
    .end local v4    # "fitScreenWidthScale":F
    :cond_4
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 124
    .restart local v4    # "fitScreenWidthScale":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 126
    .restart local v0    # "fitScreenHeight":F
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    .line 127
    sget v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 129
    .restart local v1    # "fitScreenHeightScale":F
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    goto :goto_0

    .line 131
    .end local v1    # "fitScreenHeightScale":F
    :cond_5
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 317
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 13
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 238
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 314
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 245
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 246
    .local v4, "rect":Landroid/graphics/RectF;
    const-string v8, "MulitPointTouchImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap getWidth():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Bitmap getHeight()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 261
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 263
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 264
    .local v7, "width":F
    const-string v8, "MulitPointTouchImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rect width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect height"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 269
    .local v1, "deltaY":F
    const-string v8, "MulitPointTouchImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rect top:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect bottom:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect left:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect right:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v8, "MulitPointTouchImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageview Width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " imageview Height"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getHeight()I

    move-result v8

    int-to-float v5, v8

    .line 277
    .local v5, "viewHeight":F
    cmpg-float v8, v2, v5

    if-gez v8, :cond_3

    .line 279
    sub-float v8, v5, v2

    div-float/2addr v8, v12

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 294
    .end local v5    # "viewHeight":F
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getWidth()I

    move-result v8

    int-to-float v6, v8

    .line 296
    .local v6, "viewWidth":F
    cmpg-float v8, v7, v6

    if-gez v8, :cond_5

    .line 297
    sub-float v8, v6, v7

    div-float/2addr v8, v12

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 312
    .end local v6    # "viewWidth":F
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslate(FF)V

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 283
    .restart local v5    # "viewHeight":F
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_4

    .line 284
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 287
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v8, v5

    if-gez v8, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 300
    .end local v5    # "viewHeight":F
    .restart local v6    # "viewWidth":F
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_6

    .line 301
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 304
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_2

    .line 305
    iget v8, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v6, v8

    goto :goto_2
.end method

.method public getBitmapOriginalHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    return v0
.end method

.method public getBitmapOriginalWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    return v0
.end method

.method public getFitScreenScale()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 347
    sget v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMinZoom:F

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public layoutToCenter()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 325
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v7

    mul-float v5, v6, v7

    .line 326
    .local v5, "width":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v7

    mul-float v2, v6, v7

    .line 329
    .local v2, "height":F
    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v6, v6

    sub-float v1, v6, v5

    .line 330
    .local v1, "fill_width":F
    sget v6, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v6, v6

    sub-float v0, v6, v2

    .line 333
    .local v0, "fill_height":F
    const/4 v4, 0x0

    .line 334
    .local v4, "tran_width":F
    const/4 v3, 0x0

    .line 336
    .local v3, "tran_height":F
    cmpl-float v6, v1, v8

    if-lez v6, :cond_0

    .line 337
    div-float v4, v1, v9

    .line 338
    :cond_0
    cmpl-float v6, v0, v8

    if-lez v6, :cond_1

    .line 339
    div-float v3, v0, v9

    .line 341
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslate(FF)V

    .line 342
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 343
    return-void
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 382
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 383
    const/high16 v2, 0x3f800000    # 1.0f

    .line 389
    :goto_0
    return v2

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 387
    .local v1, "fw":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 388
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v2, v3, v4

    .line 389
    .local v2, "max":F
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 182
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 187
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(F)V

    .line 188
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 499
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 500
    return-void
.end method

.method protected postTranslateDur(FF)V
    .locals 7
    .param p1, "dy"    # F
    .param p2, "durationMs"    # F

    .prologue
    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 507
    div-float v6, p1, p2

    .line 508
    .local v6, "incrementPerMs":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 509
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;FJF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public setBitmapOriginalHeight(I)V
    .locals 0
    .param p1, "bitmapOriginalHeight"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    .line 169
    return-void
.end method

.method public setBitmapOriginalWidth(I)V
    .locals 0
    .param p1, "bitmapOriginalWidth"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    .line 156
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    .line 206
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 209
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->arithmeticFitScreenScale()V

    .line 211
    const-string v0, "MulitPointTouchImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImageBitmap() mFitScreenScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    sget v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    sget v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-le v0, v1, :cond_3

    .line 216
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mFitScreenScale:F

    sget v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sget v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFF)V

    .line 222
    :goto_1
    const-string v0, "MulitPointTouchImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImageBitmap() mBitmapOriginalHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBitmapOriginalWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmapOriginalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->layoutToCenter()V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v0

    sget v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_1
.end method

.method protected zoomOut(F)V
    .locals 7
    .param p1, "rate"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 477
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 495
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 482
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 485
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 486
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 488
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 489
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 493
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 494
    invoke-virtual {p0, v6, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->center(ZZ)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 470
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 471
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 473
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFF)V

    .line 474
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v4, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalWidth()I

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalHeight()I

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-le v2, v3, :cond_0

    .line 396
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 397
    iget p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMaxZoom:F

    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v1

    .line 403
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 405
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 406
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 407
    invoke-virtual {p0, v4, v4}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->center(ZZ)V

    .line 408
    return-void

    .line 398
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMinZoom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 399
    iget p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mMinZoom:F

    goto :goto_0
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "newScale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsScaleFinish:Z

    .line 427
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v6

    .line 432
    .local v6, "oldScale":F
    sub-float v0, p1, v6

    div-float v7, v0, p4

    .line 436
    .local v7, "incrementPerMs":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 438
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$1;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method
