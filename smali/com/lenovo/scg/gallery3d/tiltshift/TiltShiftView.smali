.class public Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
.super Landroid/widget/RelativeLayout;
.source "TiltShiftView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;,
        Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$TYPE;,
        Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;
    }
.end annotation


# instance fields
.field private final DELAYRESET:I

.field private final DRAWLINE:I

.field private final TAG:Ljava/lang/String;

.field private drawMaskPaint:Landroid/graphics/Paint;

.field private mAlpha:[I

.field private mAlphaIndex:I

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mBaseLine_Degree:D

.field private mBaseLine_K:D

.field private mBlurLevel:I

.field private mBottomBar:Landroid/widget/RelativeLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private mCircleTextView:Landroid/widget/TextView;

.field private mCircleView:Landroid/widget/ImageView;

.field private mCircleX:I

.field private mCircleY:I

.field private mCircle_layout:Landroid/widget/LinearLayout;

.field private mClearData:[B

.field private mContext:Landroid/content/Context;

.field private mControlLayout:Landroid/widget/RelativeLayout;

.field private mCurrentTwoTouch_Degree:D

.field private mCurrentTwoTouch_K:F

.field mDetector:Landroid/view/GestureDetector;

.field private mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;

.field private mIncrement:I

.field private mIsMove:Z

.field public mIsSaveOrCancle:Z

.field private mIsVisible:Z

.field private mLineTextView:Landroid/widget/TextView;

.field private mLineView:Landroid/widget/ImageView;

.field private mLine_layout:Landroid/widget/LinearLayout;

.field private mMaxRadius:I

.field private mMinRadius:I

.field public mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

.field private mOriginalLength:D

.field private mOriginalTwoTouch_Degree:D

.field private mOriginalTwoTouch_K:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mSaveButton:Landroid/widget/Button;

.field public mTYPE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$TYPE;

.field private mTextColorHi:I

.field private mTextColorNormal:I

.field private mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

.field private mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

.field mTopArea:Landroid/widget/FrameLayout;

.field private mTopBar:Landroid/widget/RelativeLayout;

.field private mTopBarHeight:I

.field private mUnfoldView:Landroid/widget/ImageView;

.field private mfoldView:Landroid/widget/ImageView;

.field private myHandler:Landroid/os/Handler;

.field private seekBar1:Landroid/widget/SeekBar;

.field private seekBar2:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v0, "TiltShiftView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->TAG:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    .line 52
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->drawMaskPaint:Landroid/graphics/Paint;

    .line 62
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 64
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsMove:Z

    .line 66
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalLength:D

    .line 88
    sget-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    .line 91
    sget-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$TYPE;->PREVIEW:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$TYPE;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTYPE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$TYPE;

    .line 93
    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->DRAWLINE:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->DELAYRESET:I

    .line 97
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_K:F

    .line 99
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_K:F

    .line 101
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_K:D

    .line 103
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    .line 105
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    .line 109
    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    .line 121
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .line 123
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;

    .line 128
    const/16 v0, 0x96

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBlurLevel:I

    .line 130
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlpha:[I

    .line 132
    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    .line 134
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    .line 136
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mfoldView:Landroid/widget/ImageView;

    .line 138
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 140
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBarHeight:I

    .line 142
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircle_layout:Landroid/widget/LinearLayout;

    .line 144
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLine_layout:Landroid/widget/LinearLayout;

    .line 146
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleView:Landroid/widget/ImageView;

    .line 148
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineView:Landroid/widget/ImageView;

    .line 156
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    .line 158
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    .line 160
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 162
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsSaveOrCancle:Z

    .line 164
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBar:Landroid/widget/RelativeLayout;

    .line 166
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBottomBar:Landroid/widget/RelativeLayout;

    .line 235
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;

    .line 176
    const-string v0, "TiltShiftView"

    const-string v1, "TiltShiftView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->drawMaskPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->drawMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->setWillNotDraw(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->initCenterXYandRadius()V

    .line 193
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mDetector:Landroid/view/GestureDetector;

    .line 195
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .line 226
    return-void

    .line 130
    :array_0
    .array-data 4
        0xff
        0xc8
        0x96
        0x64
        0x32
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlpha:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar1:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->changeLineIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mControlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->showTopBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->changeCircleIcon()V

    return-void
.end method

.method private calculateK()V
    .locals 6

    .prologue
    .line 839
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBaseLine_Degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOriginalTwoTouch_Degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTwoTouch_Degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    double-to-int v0, v0

    if-eqz v0, :cond_1

    .line 844
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    .line 847
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 848
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    .line 851
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    .line 854
    :cond_1
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBaseLine_K = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_K:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_K:D

    .line 856
    return-void
.end method

.method private calculateLine(II)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    .line 859
    const/4 v1, 0x0

    .line 860
    .local v1, "yLeft":I
    const/4 v2, 0x0

    .line 862
    .local v2, "yRight":I
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    .line 863
    .local v0, "l":Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    .line 864
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    .line 866
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 868
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iput v8, v3, Landroid/graphics/Point;->x:I

    .line 869
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 871
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 872
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 885
    :goto_0
    return-object v0

    .line 873
    :cond_0
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    .line 874
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 875
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iput v8, v3, Landroid/graphics/Point;->y:I

    .line 876
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 877
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 879
    :cond_1
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    int-to-double v4, p2

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_K:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 880
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iput v8, v3, Landroid/graphics/Point;->y:I

    .line 881
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    sub-int v4, p2, v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_K:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 882
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private changeCircleIcon()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02097a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020973

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorHi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    return-void
.end method

.method private changeLineIcon()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020972

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02097b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorHi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    return-void
.end method

.method private dealwithViewEvent()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$2;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$3;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$4;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mfoldView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$5;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircle_layout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$6;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLine_layout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$7;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar1:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$8;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$9;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 459
    return-void
.end method

.method private drawBlurBitmap(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mShowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 826
    return-void
.end method

.method private enableControl()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mControlLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    return-void
.end method

.method private findViewId()V
    .locals 5

    .prologue
    .line 275
    const v3, 0x7f1000ab

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    .line 276
    const v3, 0x7f1000b0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mfoldView:Landroid/widget/ImageView;

    .line 277
    const v3, 0x7f1000ac

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 278
    const v3, 0x7f1000a3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircle_layout:Landroid/widget/LinearLayout;

    .line 279
    const v3, 0x7f1000a6

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLine_layout:Landroid/widget/LinearLayout;

    .line 280
    const v3, 0x7f1000a4

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleView:Landroid/widget/ImageView;

    .line 281
    const v3, 0x7f1000a7

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineView:Landroid/widget/ImageView;

    .line 282
    const v3, 0x7f1000a1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    .line 283
    const v3, 0x7f10009f

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    .line 284
    const v3, 0x7f10097e

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar1:Landroid/widget/SeekBar;

    .line 285
    const v3, 0x7f10097b

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;

    .line 286
    const v3, 0x7f10009e

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBar:Landroid/widget/RelativeLayout;

    .line 287
    const v3, 0x7f1000a2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBottomBar:Landroid/widget/RelativeLayout;

    .line 288
    const v3, 0x7f1000a0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    .local v2, "titleNameView":Landroid/widget/TextView;
    const v3, 0x7f1000a5

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleTextView:Landroid/widget/TextView;

    .line 290
    const v3, 0x7f1000a8

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineTextView:Landroid/widget/TextView;

    .line 291
    const v3, 0x7f10097a

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, "scaleTextView":Landroid/widget/TextView;
    const v3, 0x7f10097d

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    .local v0, "rangeTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorHi:I

    .line 295
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0207e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTextColorNormal:I

    .line 297
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 298
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 299
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 300
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 301
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mLineTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 302
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 303
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 304
    return-void
.end method

.method private getScaleHeightValue()F
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getScaleWitdhValue()F
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private removeHandler()V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 501
    return-void
.end method

.method private sendHandlerAgain()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 490
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 494
    return-void
.end method

.method private showTopBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    return-void
.end method


# virtual methods
.method public getBarHeight()I
    .locals 3

    .prologue
    .line 169
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUnfoldView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mUnfoldView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public initCenterXYandRadius()V
    .locals 3

    .prologue
    .line 504
    const-string v0, "TiltShiftView"

    const-string v1, "initCenterXYandRadius"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartLeft:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartTop:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMinRadius:I

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMaxRadius:I

    .line 514
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mScreenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mScreenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mScreenWidth/2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mScreenHeight/2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mShowViewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mShowViewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mShowViewWidth/2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mTiltActivity.mUtil.mShowViewHeight/2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mCircleX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mCircleY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mMaxRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMaxRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCenterXYandRadius() mIncrement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 904
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v4, 0x4056800000000000L    # 90.0

    .line 746
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 747
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-ne v0, v1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->changeCircleIcon()V

    .line 750
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "onDraw CIRCLE Bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->drawBlurBitmap(Landroid/graphics/Canvas;)V

    .line 754
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 755
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 756
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-ne v0, v1, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->changeLineIcon()V

    .line 761
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->drawBlurBitmap(Landroid/graphics/Canvas;)V

    .line 762
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "onDraw line"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->calculateK()V

    .line 767
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->calculateLine(II)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;

    move-result-object v6

    .line 769
    .local v6, "baseLine":Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;
    const-wide/16 v8, 0x0

    .line 770
    .local v8, "distancey1":D
    const-wide/16 v10, 0x0

    .line 772
    .local v10, "distancey2":D
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBaseLine_Degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    double-to-int v0, v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 775
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    int-to-double v8, v0

    .line 776
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v1

    int-to-double v10, v0

    .line 782
    :goto_1
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distancey1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distancey2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_4

    .line 785
    :cond_2
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x64

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x64

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 788
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 790
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 792
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x64

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x64

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 778
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 779
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mBaseLine_Degree:D

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v10, v0, v2

    goto/16 :goto_1

    .line 794
    :cond_4
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    sub-double/2addr v0, v10

    double-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v4, v0

    sub-double/2addr v4, v10

    double-to-float v3, v4

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 796
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    sub-double/2addr v0, v8

    double-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v4, v0

    sub-double/2addr v4, v8

    double-to-float v3, v4

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 798
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    add-double/2addr v0, v8

    double-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v4, v0

    add-double/2addr v4, v8

    double-to-float v3, v4

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 800
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    add-double/2addr v0, v10

    double-to-float v1, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v4, v0

    add-double/2addr v4, v10

    double-to-float v3, v4

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 260
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->setBackgroundResource(I)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->setFocusable(Z)V

    .line 263
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->setClickable(Z)V

    .line 266
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->setLongClickable(Z)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 269
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->findViewId()V

    .line 270
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->dealwithViewEvent()V

    .line 271
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 272
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 919
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    .line 717
    const-string/jumbo v0, "scall----------------"

    const-string/jumbo v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsMove:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-ne v0, v1, :cond_3

    .line 719
    :cond_1
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "move"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    .line 723
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    .line 724
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v0, "TiltShiftView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    if-le v0, v1, :cond_4

    .line 728
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    .line 733
    :cond_2
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    if-le v0, v1, :cond_5

    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mScreenHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    .line 741
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 742
    const/4 v0, 0x1

    return v0

    .line 729
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    if-gez v0, :cond_2

    .line 730
    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    goto :goto_0

    .line 735
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    if-gez v0, :cond_3

    .line 736
    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 909
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 914
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 618
    .local v0, "currentX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 619
    .local v1, "currentY":F
    cmpl-float v10, v0, v11

    if-lez v10, :cond_0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    cmpl-float v10, v1, v11

    if-lez v10, :cond_0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBarHeight:I

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-ltz v10, :cond_1

    :cond_0
    cmpl-float v10, v0, v11

    if-lez v10, :cond_2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTopBarHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-lez v10, :cond_2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-gez v10, :cond_2

    .line 712
    :cond_1
    :goto_0
    return v9

    .line 625
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    packed-switch v10, :pswitch_data_0

    .line 712
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    .line 628
    :pswitch_1
    const-string v10, "TiltShiftView"

    const-string v11, "MotionEvent.ACTION_DOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCircleY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 633
    .local v6, "tempRadius":D
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    add-int/2addr v10, v11

    int-to-double v10, v10

    cmpg-double v10, v6, v10

    if-gez v10, :cond_4

    :goto_2
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsMove:Z

    .line 634
    const-string v8, "TiltShiftView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsMove:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    goto :goto_1

    :cond_4
    move v8, v9

    .line 633
    goto :goto_2

    .line 638
    .end local v6    # "tempRadius":D
    :pswitch_2
    const-string v8, "TiltShiftView"

    const-string v10, "MotionEvent.ACTION_UP"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 640
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->updateBitmap()V

    .line 641
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    goto :goto_1

    .line 644
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 646
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 648
    .local v2, "length":D
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRadius = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget-wide v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalLength:D

    sub-double v12, v2, v12

    double-to-int v11, v12

    div-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    iput v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    .line 652
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRadius = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMinRadius:I

    if-lt v10, v11, :cond_6

    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMaxRadius:I

    if-gt v10, v11, :cond_6

    .line 654
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 655
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 662
    :cond_5
    :goto_3
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalLength:D

    .line 664
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMode:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v11, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    if-ne v10, v11, :cond_3

    .line 665
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getX(0) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getY(0) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getX(1) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getY(1) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    neg-int v9, v9

    invoke-direct {v4, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 671
    .local v4, "p1":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    neg-int v8, v8

    invoke-direct {v5, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 673
    .local v5, "p2":Landroid/graphics/Point;
    const-string v8, "lm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "p1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v8, "lm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "p2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    neg-float v8, v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_K:F

    .line 677
    iget v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_K:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    .line 678
    const-string v8, "lm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentTwoTouch_Degree = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    goto/16 :goto_1

    .line 656
    .end local v4    # "p1":Landroid/graphics/Point;
    .end local v5    # "p2":Landroid/graphics/Point;
    :cond_6
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMinRadius:I

    if-ge v10, v11, :cond_7

    .line 657
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMinRadius:I

    iput v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    goto/16 :goto_3

    .line 658
    :cond_7
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMaxRadius:I

    if-le v10, v11, :cond_5

    .line 659
    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mMaxRadius:I

    iput v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    goto/16 :goto_3

    .line 684
    .end local v2    # "length":D
    :pswitch_4
    const-string v10, "TiltShiftView"

    const-string v11, "ACTION_POINTER_DOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getX(0) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getY(0) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getX(1) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v10, "TiltShiftView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ev.getY(1) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalLength:D

    .line 692
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    neg-int v9, v9

    invoke-direct {v4, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 693
    .restart local v4    # "p1":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    neg-int v8, v8

    invoke-direct {v5, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 695
    .restart local v5    # "p2":Landroid/graphics/Point;
    const-string v8, "TiltShiftView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "p1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v8, "TiltShiftView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "p2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    neg-float v8, v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_K:F

    .line 699
    iget v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_K:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    .line 700
    const-string v8, "TiltShiftView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mOriginalTwoTouch_Degree = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 704
    .end local v4    # "p1":Landroid/graphics/Point;
    .end local v5    # "p2":Landroid/graphics/Point;
    :pswitch_5
    const-string v8, "TiltShiftView"

    const-string v9, "ACTION_POINTER_UP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iput-wide v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalLength:D

    .line 706
    iput-wide v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mOriginalTwoTouch_Degree:D

    .line 707
    iput-wide v12, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCurrentTwoTouch_Degree:D

    goto/16 :goto_1

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 900
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 533
    const-string v0, "TiltShiftView"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 536
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->initCenterXYandRadius()V

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIncrement:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->seekBar2:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mRadius:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;->clearParams()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    .line 544
    :cond_0
    return-void
.end method

.method public saveChangedView()V
    .locals 3

    .prologue
    .line 462
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltParams:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;

    .line 464
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getFilterStackIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    move-result-object v0

    .line 465
    .local v0, "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/TiltShiftExecCommand;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mTiltActivity:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    .line 468
    :cond_0
    return-void
.end method

.method public updateBitmap()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->updateBitmap([B)V

    .line 557
    return-void
.end method

.method public updateBitmap([B)V
    .locals 0
    .param p1, "jpegBytes"    # [B

    .prologue
    .line 606
    return-void
.end method
