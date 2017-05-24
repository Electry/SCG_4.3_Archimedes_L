.class public Lcom/lenovo/scg/camera/ui/Wheel;
.super Landroid/view/View;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ANGLE:D = 0.7036355

.field private static final DEFAULT_MIN_ANGLE:D = -0.7036355

.field private static final PI_HALF:D = 1.5707963267948966

.field private static final TAG:Ljava/lang/String; = "Wheel"

.field private static final TWO_PI:D = 6.283185307179586

.field private static sPixelDensity:F


# instance fields
.field private mBmpRect:Landroid/graphics/Rect;

.field private mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

.field private mCenter:Landroid/graphics/Point;

.field private final mClipPath:Landroid/graphics/Path;

.field private mCurIndex:I

.field private mElemCount:I

.field private mIndicatorBmp:Landroid/graphics/drawable/Drawable;

.field private mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mMagBmp:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mThetaIvl:D

.field private mThetaMax:D

.field private mThetaMin:D

.field private mThetaOffset:D

.field private mWheelBmp:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/lenovo/scg/camera/ui/Wheel;->sPixelDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/ui/Wheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/ui/Wheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    .line 43
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mClipPath:Landroid/graphics/Path;

    .line 45
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCenter:Landroid/graphics/Point;

    .line 49
    const/4 v3, -0x1

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    .line 88
    const-wide v4, -0x40197bd1676640a7L    # -0.7036355

    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    .line 89
    const-wide v4, 0x3fe6842e9899bf59L    # 0.7036355

    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMax:D

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    sget-object v3, Lcom/lenovo/scg/R$styleable;->Wheel:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    .line 99
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 105
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/lenovo/scg/camera/ui/Wheel;->sPixelDensity:F

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 109
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 111
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    .line 113
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 114
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 115
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 118
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Wheel;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Wheel;->dpToPixel(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 121
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Wheel;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 122
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Wheel;->dpToPixel(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 124
    const/4 v3, 0x0

    invoke-virtual {p0, v7, v3}, Lcom/lenovo/scg/camera/ui/Wheel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method private final angleToIndex(D)I
    .locals 5
    .param p1, "angle"    # D

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "index":I
    iget-wide v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    .line 434
    const/4 v0, 0x0

    .line 440
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    if-lt v0, v1, :cond_0

    .line 441
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v1, -0x1

    .line 443
    :cond_0
    return v0

    .line 437
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    sub-double/2addr p1, v2

    .line 438
    iget-wide v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaIvl:D

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0
.end method

.method private createBitmap(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 139
    const-string v0, "Wheel"

    const-string v1, "creating bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 141
    const-string v0, "Wheel"

    const-string v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    return-void
.end method

.method public static dpToPixel(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 130
    sget v0, Lcom/lenovo/scg/camera/ui/Wheel;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getIndex()I

    move-result v3

    .line 344
    .local v3, "index":I
    int-to-double v6, v3

    iget-wide v8, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaOffset:D

    add-double/2addr v6, v8

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v6, v8

    double-to-float v0, v6

    .line 346
    .local v0, "angle":F
    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v5, v0

    float-to-double v6, v5

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 348
    .local v4, "rotAngle":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .line 351
    .local v1, "dx":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .line 352
    .local v2, "dy":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 355
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 361
    return-void

    .line 358
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWheel(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 333
    .local v0, "dx":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 334
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 337
    return-void
.end method

.method private final getAngleRestricted(DD)D
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr p1, v2

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr p3, v2

    .line 423
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v0, v2

    .line 424
    .local v0, "angle":D
    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 425
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    .line 427
    :cond_0
    return-wide v0
.end method

.method private final getIndex()I
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private updateAngleParams()V
    .locals 4

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMax:D

    iget-wide v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaIvl:D

    .line 220
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaOffset:D

    .line 221
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaOffset:D

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/Wheel;->wrapAngle(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaOffset:D

    .line 222
    return-void
.end method

.method private final wrapAngle(D)D
    .locals 7
    .param p1, "angle"    # D

    .prologue
    const-wide/16 v4, 0x0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 225
    :cond_0
    :goto_0
    cmpg-double v0, p1, v4

    if-ltz v0, :cond_1

    cmpl-double v0, p1, v2

    if-ltz v0, :cond_3

    .line 226
    :cond_1
    cmpg-double v0, p1, v4

    if-gez v0, :cond_2

    .line 227
    add-double/2addr p1, v2

    goto :goto_0

    .line 228
    :cond_2
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    .line 229
    sub-double/2addr p1, v2

    goto :goto_0

    .line 232
    :cond_3
    return-wide p1
.end method

.method private final wrapIndex(II)I
    .locals 0
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 403
    if-gez p1, :cond_1

    .line 404
    const/4 p1, 0x0

    .line 408
    :cond_0
    :goto_0
    return p1

    .line 405
    :cond_1
    if-lt p1, p2, :cond_0

    .line 406
    add-int/lit8 p1, p2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurIndex()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 267
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mClipPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 268
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .local v1, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .local v0, "dst":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 273
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 274
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 276
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 277
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 287
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 295
    const-string v2, "Wheel"

    const-string v3, "getMeasuredWidth=%d,getMeasuredHeight=%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v2, "Wheel"

    const-string v3, "mMagBmp.getWidth()=%d,mMagBmp.getHeight()=%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Wheel;->drawWheel(Landroid/graphics/Canvas;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Wheel;->drawIndicator(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 280
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 281
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 283
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 284
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "dw":I
    const/4 v0, 0x0

    .line 240
    .local v0, "dh":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 244
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 246
    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/ui/Wheel;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/ui/Wheel;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/Wheel;->setMeasuredDimension(II)V

    .line 247
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mWheelBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mIndicatorBmpHl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 365
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 399
    :goto_0
    return v5

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 369
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 371
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 372
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/ui/Wheel;->setPressed(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    .line 377
    :cond_1
    int-to-double v6, v3

    int-to-double v8, v4

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/lenovo/scg/camera/ui/Wheel;->getAngleRestricted(DD)D

    move-result-wide v0

    .line 378
    .local v0, "angle":D
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/Wheel;->angleToIndex(D)I

    move-result v2

    .line 379
    .local v2, "index":I
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    invoke-direct {p0, v2, v6}, Lcom/lenovo/scg/camera/ui/Wheel;->wrapIndex(II)I

    move-result v2

    .line 381
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v2, v6, v2

    .line 383
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    if-eq v2, v6, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    .line 386
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    if-eqz v6, :cond_2

    .line 387
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    invoke-interface {v6, p0, v2}, Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;->onIndexChanged(Landroid/view/View;I)V

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 392
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/ui/Wheel;->setPressed(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    .line 394
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    if-eqz v6, :cond_3

    .line 395
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    invoke-interface {v6, p0, v2}, Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;->onIndexSelected(Landroid/view/View;I)V

    .line 398
    :cond_3
    iput v2, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 252
    if-nez p2, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->updateAngleParams()V

    .line 255
    :cond_0
    return-void
.end method

.method public select(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCurIndex:I

    .line 170
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    .line 171
    return-void
.end method

.method public setAngleInterval(DD)V
    .locals 1
    .param p1, "angleMin"    # D
    .param p3, "angleMax"    # D

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMin:D

    .line 214
    iput-wide p3, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mThetaMax:D

    .line 215
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->updateAngleParams()V

    .line 216
    return-void
.end method

.method public setCallback(Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mCallback:Lcom/lenovo/scg/camera/ui/Wheel$WheelCallback;

    .line 453
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    const-string v1, "Wheel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImage bitmap == null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez p1, :cond_1

    .line 161
    :goto_1
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 199
    if-gtz p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Wheel;->mElemCount:I

    .line 203
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Wheel;->invalidate()V

    .line 204
    return-void
.end method
