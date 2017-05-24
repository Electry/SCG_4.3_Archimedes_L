.class public Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
.super Landroid/widget/RelativeLayout;
.source "BigCircleSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;,
        Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    }
.end annotation


# static fields
.field private static final EXPOSURE:I = 0x0

.field private static final ISO:I = 0x1

.field private static final MF:I = 0x3

.field private static final SHUTTER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BigCircleSeekBarView"

.field private static final WB:I = 0x4

.field private static final blackCircleHeight:I = 0xf0


# instance fields
.field private TYPE:I

.field private autoBitmap:Landroid/graphics/Bitmap;

.field private blackCircleRectF:Landroid/graphics/RectF;

.field cX:F

.field cY:F

.field private circleR:I

.field private cludeBitmap:Landroid/graphics/Bitmap;

.field devideNumber:I

.field private isCanshowBlackCircle:Z

.field isHasSeted:Z

.field isSeted:Z

.field private mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

.field private mBlackCircleLinePath:Landroid/graphics/Path;

.field private mBlackPaint:Landroid/graphics/Paint;

.field private mExpBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mISOBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLiteCircleLinePath:Landroid/graphics/Path;

.field private mMfBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

.field private mPlaySoundTime:J

.field private mShutterBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWhiteBlanceBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitePaint:Landroid/graphics/Paint;

.field private offsetToLine:I

.field oldRotation:F

.field private rectLiteCircleRectF:Landroid/graphics/RectF;

.field private riguangBitmap:Landroid/graphics/Bitmap;

.field private startAngle:F

.field private sunBitmap:Landroid/graphics/Bitmap;

.field private sweepAngle:F

.field viewHeight:F

.field private yingguangBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 581
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    .line 30
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    .line 33
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->viewHeight:F

    .line 34
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->devideNumber:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->offsetToLine:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLiteCircleLinePath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackCircleLinePath:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    .line 72
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    .line 78
    const/high16 v0, -0x3cfe0000    # -130.0f

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->startAngle:F

    .line 82
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sweepAngle:F

    .line 110
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->oldRotation:F

    .line 597
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z

    .line 750
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isSeted:Z

    .line 765
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isHasSeted:Z

    .line 818
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    .line 583
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    .line 30
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    .line 31
    iput v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    .line 33
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->viewHeight:F

    .line 34
    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->devideNumber:I

    .line 36
    const/16 v1, 0x78

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->offsetToLine:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    .line 60
    iput v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLiteCircleLinePath:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackCircleLinePath:Landroid/graphics/Path;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    .line 72
    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    .line 78
    const/high16 v1, -0x3cfe0000    # -130.0f

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->startAngle:F

    .line 82
    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sweepAngle:F

    .line 110
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->oldRotation:F

    .line 597
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z

    .line 750
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isSeted:Z

    .line 765
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isHasSeted:Z

    .line 818
    iput-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    .line 115
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initPaint()V

    .line 116
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/R$styleable;->BigWheel:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->devideNumber:I

    .line 125
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    .line 127
    new-instance v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;-><init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setDrawableID(I)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPressedDrawableID(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initMark(Landroid/content/res/TypedArray;)V

    .line 138
    new-instance v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;-><init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    .line 30
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    .line 33
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->viewHeight:F

    .line 34
    iput v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->devideNumber:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->offsetToLine:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLiteCircleLinePath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackCircleLinePath:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    .line 72
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    .line 78
    const/high16 v0, -0x3cfe0000    # -130.0f

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->startAngle:F

    .line 82
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sweepAngle:F

    .line 110
    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->oldRotation:F

    .line 597
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z

    .line 750
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isSeted:Z

    .line 765
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isHasSeted:Z

    .line 818
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isTouchOnLine(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationChildView(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getMiniRotation()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mPlaySoundTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mPlaySoundTime:J

    return-wide p1
.end method

.method private calRotation(FFFF)F
    .locals 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "touch_x"    # F
    .param p4, "touch_y"    # F

    .prologue
    .line 574
    sub-float v0, p3, p1

    .line 575
    .local v0, "dx":F
    sub-float v1, p2, p4

    .line 576
    .local v1, "dy":F
    div-float v2, v0, v1

    .line 577
    .local v2, "tanR":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v3, v4

    return v3
.end method

.method private drawExpMark(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 681
    const/high16 v1, -0x3e100000    # -30.0f

    .line 682
    .local v1, "startDegrees":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 684
    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    return-void
.end method

.method private drawISOMark(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 690
    const/high16 v2, -0x3e100000    # -30.0f

    .line 691
    .local v2, "startDegrees":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 692
    .local v0, "bmpSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 693
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 694
    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v2, v3

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method private drawMFMark(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 658
    const/high16 v1, -0x3e100000    # -30.0f

    .line 659
    .local v1, "startDegrees":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 661
    const/high16 v2, 0x42700000    # 60.0f

    add-float/2addr v1, v2

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method

.method private drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "degrees"    # F

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 709
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 710
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x43520000    # 210.0f

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 712
    return-void
.end method

.method private drawShutterMark(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x3e700000    # -18.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 674
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 677
    return-void
.end method

.method private drawWhiteBlanceMark(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 650
    const/high16 v1, -0x3e100000    # -30.0f

    .line 651
    .local v1, "startDegrees":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;F)V

    .line 653
    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    return-void
.end method

.method private getMiniRotation()F
    .locals 2

    .prologue
    .line 465
    const/high16 v0, 0x3f800000    # 1.0f

    .line 467
    .local v0, "miniRotation":F
    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    packed-switch v1, :pswitch_data_0

    .line 492
    :goto_0
    :pswitch_0
    return v0

    .line 469
    :pswitch_1
    const/high16 v0, 0x41700000    # 15.0f

    .line 470
    goto :goto_0

    .line 473
    :pswitch_2
    const/high16 v0, 0x41400000    # 12.0f

    .line 474
    goto :goto_0

    .line 477
    :pswitch_3
    const/high16 v0, 0x40800000    # 4.0f

    .line 478
    goto :goto_0

    .line 484
    :pswitch_4
    const/high16 v0, 0x41700000    # 15.0f

    .line 485
    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initExpMark(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, -0x1

    .line 333
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 334
    const/16 v5, 0x10

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 335
    .local v2, "m002ID":I
    if-eq v2, v8, :cond_0

    .line 336
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    :cond_0
    const/16 v5, 0x11

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 340
    .local v1, "m001ID":I
    if-eq v1, v8, :cond_1

    .line 341
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 343
    :cond_1
    const/16 v5, 0x12

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 344
    .local v0, "m000ID":I
    if-eq v0, v8, :cond_2

    .line 345
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    :cond_2
    const/16 v5, 0x13

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 348
    .local v3, "m11ID":I
    if-eq v3, v8, :cond_3

    .line 349
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 351
    :cond_3
    const/16 v5, 0x14

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 352
    .local v4, "m12ID":I
    if-eq v4, v8, :cond_4

    .line 353
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mExpBitmaps:Ljava/util/List;

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 355
    :cond_4
    return-void
.end method

.method private initISOMark(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, -0x1

    .line 386
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 387
    const/16 v6, 0x9

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 388
    .local v0, "autoID":I
    if-eq v0, v9, :cond_0

    .line 389
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 392
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 393
    .local v1, "iso100ID":I
    if-eq v1, v9, :cond_1

    .line 394
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    :cond_1
    const/16 v6, 0xb

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 398
    .local v3, "iso200ID":I
    if-eq v3, v9, :cond_2

    .line 399
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 402
    :cond_2
    const/16 v6, 0xc

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 403
    .local v4, "iso400ID":I
    if-eq v4, v9, :cond_3

    .line 404
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 407
    :cond_3
    const/16 v6, 0xd

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 408
    .local v5, "iso800ID":I
    if-eq v5, v9, :cond_4

    .line 409
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 412
    :cond_4
    const/16 v6, 0xe

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 413
    .local v2, "iso1600ID":I
    if-eq v2, v9, :cond_5

    .line 414
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mISOBitmaps:Ljava/util/List;

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 424
    :cond_5
    return-void
.end method

.method private initMFMark(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, -0x1

    .line 318
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 319
    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 320
    .local v0, "mf0ID":I
    if-eq v0, v5, :cond_0

    .line 321
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 324
    :cond_0
    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 325
    .local v1, "mfNullID":I
    if-eq v1, v5, :cond_1

    .line 326
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mMfBitmaps:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    :cond_1
    return-void
.end method

.method private initMark(Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 292
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 294
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initExpMark(Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initISOMark(Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 302
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initShutterMark(Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initMFMark(Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 310
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->initWhiteBlanceMark(Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initPaint()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 553
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 559
    return-void
.end method

.method private initShutterMark(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, -0x1

    .line 360
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 361
    const/16 v5, 0x15

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 362
    .local v0, "auto":I
    if-eq v0, v8, :cond_0

    .line 363
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 366
    :cond_0
    const/16 v5, 0x16

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 367
    .local v3, "s1_800":I
    if-eq v3, v8, :cond_1

    .line 368
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 370
    :cond_1
    const/16 v5, 0x17

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 371
    .local v2, "s1_600":I
    if-eq v2, v8, :cond_2

    .line 372
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 374
    :cond_2
    const/16 v5, 0x18

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 375
    .local v1, "s1_4":I
    if-eq v1, v8, :cond_3

    .line 376
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 378
    :cond_3
    const/16 v5, 0x19

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 379
    .local v4, "s4":I
    if-eq v4, v8, :cond_4

    .line 380
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mShutterBitmaps:Ljava/util/List;

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    :cond_4
    return-void
.end method

.method private initWhiteBlanceMark(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "mTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 430
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 431
    const/16 v5, 0x8

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 432
    .local v0, "autoID":I
    if-eq v0, v8, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->autoBitmap:Landroid/graphics/Bitmap;

    .line 435
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->autoBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 437
    const/4 v5, 0x7

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 438
    .local v4, "yingguangID":I
    if-eq v4, v8, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->yingguangBitmap:Landroid/graphics/Bitmap;

    .line 441
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->yingguangBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 443
    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 445
    .local v3, "sunID":I
    if-eq v3, v8, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sunBitmap:Landroid/graphics/Bitmap;

    .line 448
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sunBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 450
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 451
    .local v2, "riguangID":I
    if-eq v2, v8, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->riguangBitmap:Landroid/graphics/Bitmap;

    .line 454
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->riguangBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 457
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 458
    .local v1, "cludeID":I
    if-eq v1, v8, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cludeBitmap:Landroid/graphics/Bitmap;

    .line 461
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhiteBlanceBitmaps:Ljava/util/List;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cludeBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method private isTouchOnLine(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 101
    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/common/utils/SCGMath;->distance2Point(IIII)I

    move-result v0

    .line 102
    .local v0, "dis":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Circle R : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  dis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 103
    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->offsetToLine:I

    if-le v2, v3, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 106
    :cond_0
    return v1
.end method

.method private layout()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    .line 767
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isHasSeted:Z

    if-eqz v4, :cond_0

    .line 804
    :goto_0
    return-void

    .line 771
    :cond_0
    const-string v4, "BigCircleSeekBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLayout() ==  getTop() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   getRight() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getRight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   getBottom() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string/jumbo v4, "onLayout"

    invoke-static {v11, v4}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getWidth()I

    move-result v2

    .line 778
    .local v2, "screenWidth":I
    rsub-int v4, v2, 0x904

    shr-int/lit8 v4, v4, 0x1

    int-to-float v0, v4

    .line 780
    .local v0, "circleOffset":F
    const/16 v3, 0xfa

    .line 782
    .local v3, "topOffset":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    neg-float v5, v0

    int-to-float v6, v3

    int-to-float v7, v2

    add-float/2addr v7, v0

    int-to-float v8, v2

    mul-float v9, v0, v10

    add-float/2addr v8, v9

    int-to-float v9, v3

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 787
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLiteCircleLinePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->startAngle:F

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sweepAngle:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 789
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    if-nez v4, :cond_1

    .line 790
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    .line 791
    const/16 v1, 0x78

    .line 792
    .local v1, "offset":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 794
    .end local v1    # "offset":I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackCircleLinePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->blackCircleRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->startAngle:F

    iget v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->sweepAngle:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 798
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    .line 799
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    .line 801
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rectLiteCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I

    .line 803
    iput-boolean v11, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isHasSeted:Z

    goto/16 :goto_0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 735
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 737
    const/4 p1, 0x0

    .line 739
    :cond_0
    return-void
.end method

.method private recycleBitmapList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "mBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_1

    .line 725
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 726
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 732
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private rotationChildView(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 497
    .local v1, "touchX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 514
    .local v2, "touchY":F
    const-string v4, "BigCircleSeekBarViewonTouch() "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touch X : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  touch Y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  bottom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->viewHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-direct {p0, v4, v5, v1, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->calRotation(FFFF)F

    move-result v0

    .line 517
    .local v0, "rotation":F
    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 518
    const/high16 v0, 0x41f00000    # 30.0f

    .line 521
    :cond_0
    const/high16 v4, -0x3e100000    # -30.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 522
    const/high16 v0, -0x3e100000    # -30.0f

    .line 525
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 526
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 527
    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 528
    invoke-virtual {v3, v0}, Landroid/view/View;->setRotation(F)V

    .line 529
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setCurrentState(I)V

    .line 530
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 718
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 719
    const/4 v0, 0x1

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 720
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 603
    const-string v0, "BigCircleSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw() ==  getTop() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   getRight() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mLiteCircleLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 608
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackCircleLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 612
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->TYPE:I

    packed-switch v0, :pswitch_data_0

    .line 640
    :goto_0
    return-void

    .line 614
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawExpMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 619
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawISOMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 624
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawShutterMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 629
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawMFMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 634
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->drawWhiteBlanceMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 745
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 746
    const/4 v0, 0x1

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 747
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->layout()V

    .line 757
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getTop()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 760
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->viewHeight:F

    .line 761
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 588
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 589
    const-string v0, "BigCircleSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMeasure() ==  getTop() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   getRight() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void
.end method

.method public rotationBarView(F)V
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotX(F)V

    .line 808
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotY(F)V

    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setRotation(F)V

    .line 810
    return-void
.end method

.method public setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    .line 829
    return-void
.end method
