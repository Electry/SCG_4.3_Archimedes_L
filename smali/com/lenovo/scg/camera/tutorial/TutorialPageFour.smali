.class public Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;
.super Lcom/lenovo/scg/camera/tutorial/TutorialPage;
.source "TutorialPageFour.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private forceShowAnimation:Z

.field private mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private mAutoButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mImageViewCircle:Landroid/widget/ImageView;

.field private mImageViewCircleBg:Landroid/widget/ImageView;

.field private mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLeftImageView:Landroid/widget/ImageView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mProButton:Landroid/widget/ImageView;

.field private mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRightImageView:Landroid/widget/ImageView;

.field private mRoateAnimation:Landroid/view/animation/Animation;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScaleLeft2RightAnim:Landroid/view/animation/Animation;

.field private mScaleRight2LeftAnim:Landroid/view/animation/Animation;

.field private mTextViewAutoButtonText:Landroid/widget/TextView;

.field private mTextViewProButtonText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "TutorialPageFour"

    sput-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPage;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->forceShowAnimation:Z

    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startSecondSetpAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startThirdSetpAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040191

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100989

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRootView:Landroid/widget/RelativeLayout;

    .line 71
    const v2, 0x7f10098e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    .line 72
    const v2, 0x7f100990

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    .line 75
    const v2, 0x7f10098c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    .line 76
    const v2, 0x7f10098d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    .line 77
    const v2, 0x7f100993

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    .line 78
    const v2, 0x7f100992

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f10098f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f100991

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->invisibleAnimationView()V

    .line 84
    return-void
.end method

.method private invisibleAnimationView()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 120
    :cond_7
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->forceShowAnimation:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mContext:Landroid/content/Context;

    const v1, 0x7f050029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleLeft2RightAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mContext:Landroid/content/Context;

    const v1, 0x7f05002a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleLeft2RightAnim:Landroid/view/animation/Animation;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 174
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_5

    .line 179
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRoateAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mContext:Landroid/content/Context;

    const v1, 0x7f050024

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRoateAnimation:Landroid/view/animation/Animation;

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRoateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRoateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$2;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$3;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$4;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0
.end method

.method private startSecondSetpAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mLeftImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRightImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 329
    :cond_2
    return-void
.end method

.method private startThirdSetpAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewAutoButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleLeft2RightAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mTextViewProButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mScaleLeft2RightAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    :cond_3
    return-void
.end method


# virtual methods
.method public getPageRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public resetView()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->invisibleAnimationView()V

    .line 129
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mListener:Landroid/view/View$OnClickListener;

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mAutoButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mProButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startAnimation()V

    .line 138
    return-void
.end method

.method public stopAnim()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
