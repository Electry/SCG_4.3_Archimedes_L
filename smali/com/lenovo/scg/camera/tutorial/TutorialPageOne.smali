.class public Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;
.super Lcom/lenovo/scg/camera/tutorial/TutorialPage;
.source "TutorialPageOne.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private forceShowAnimation:Z

.field private mContext:Landroid/content/Context;

.field private mHandImage:Landroid/widget/ImageView;

.field private mImageViewShutter:Landroid/widget/ImageView;

.field private mImageViewShutterHi:Landroid/widget/ImageView;

.field private mImageViewWheel:Landroid/widget/ImageView;

.field private mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScaleRight2LeftAnim:Landroid/view/animation/Animation;

.field private mShutterAnimSet:Landroid/animation/AnimatorSet;

.field private mTextViewDetail2:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

.field private mTextViewDetail3:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

.field private translateX:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPage;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->forceShowAnimation:Z

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startShutterButtonStep2Anim()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startWheelAnim()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040192

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100994

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRootView:Landroid/widget/RelativeLayout;

    .line 64
    const v2, 0x7f10099e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f10099a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mTextViewDetail2:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mTextViewDetail2:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x7f0f01ee

    invoke-virtual {v2, v4, v3}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 68
    const v2, 0x7f10099b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mTextViewDetail3:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mTextViewDetail3:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x7f0f0a64

    invoke-virtual {v2, v4, v3}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 71
    const v2, 0x7f100997

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    .line 73
    const v2, 0x7f10099c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    .line 75
    const v2, 0x7f10099d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;

    .line 78
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->initAnimationView()V

    .line 81
    return-void
.end method

.method private initAnimationView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 107
    :cond_4
    return-void
.end method

.method private startAnimiation()V
    .locals 12

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->forceShowAnimation:Z

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, -0x3d100000    # -120.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 144
    .local v11, "translateX":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    const-string/jumbo v2, "scaleX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3f333333    # 0.7f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 146
    .local v9, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    const-string/jumbo v2, "scaleY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3f333333    # 0.7f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 148
    .local v10, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    invoke-virtual {v11, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 181
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 182
    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mShutterAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private startShutterButtonStep2Anim()V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->translateX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 243
    return-void
.end method

.method private startWheelAnim()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mContext:Landroid/content/Context;

    const v1, 0x7f050029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mScaleRight2LeftAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    :cond_1
    return-void
.end method


# virtual methods
.method public getPageRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public resetView()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->initAnimationView()V

    .line 116
    return-void
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "pageOne-------------------startAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startAnimiation()V

    .line 126
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "pageOne-------------------stopAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 287
    return-void
.end method
