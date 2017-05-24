.class public Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;
.super Lcom/lenovo/scg/camera/tutorial/TutorialPage;
.source "TutorialWelcomePage.java"


# instance fields
.field private mAlpha1:Landroid/view/animation/AlphaAnimation;

.field private mAlpha2:Landroid/view/animation/AlphaAnimation;

.field private mAlpha3:Landroid/view/animation/AlphaAnimation;

.field private mArrowView:Landroid/widget/ImageView;

.field private mArrowView2:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mImageViewContent:Landroid/widget/ImageView;

.field private mIsAnim:Z

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mStartScanView:Landroid/widget/ImageView;

.field private mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

.field private mTextViewDetailCamera:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPage;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mIsAnim:Z

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startNextStepAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startHideAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnimation()V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x3fa3d70a    # 1.28f

    .line 48
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040195

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1009b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mRootView:Landroid/widget/RelativeLayout;

    .line 51
    const v2, 0x7f1009b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mImageViewContent:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f1009be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    .line 53
    const v2, 0x7f1009bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    .line 55
    const v2, 0x7f1009bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 56
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x7f0f01f8

    invoke-virtual {v2, v4, v3}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 57
    const v2, 0x7f1009bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mTextViewDetailCamera:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mTextViewDetailCamera:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x7f0f0a65

    invoke-virtual {v2, v4, v3}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 59
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mIsAnim:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$1;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startHideAnim()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$3;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    return-void
.end method

.method private startNextStepAnim()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage$2;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getPageRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "welcomePage-----------startAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mIsAnim:Z

    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnimation()V

    .line 99
    return-void
.end method

.method public stopAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "welcomePage-----------stopAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mIsAnim:Z

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 162
    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha1:Landroid/view/animation/AlphaAnimation;

    .line 163
    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha2:Landroid/view/animation/AlphaAnimation;

    .line 164
    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->mAlpha3:Landroid/view/animation/AlphaAnimation;

    .line 165
    return-void
.end method
