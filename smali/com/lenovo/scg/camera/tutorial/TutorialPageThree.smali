.class public Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;
.super Lcom/lenovo/scg/camera/tutorial/TutorialPage;
.source "TutorialPageThree.java"


# instance fields
.field private mAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private mAnimModeIndex:I

.field private mAnimModeTextView:Landroid/widget/TextView;

.field private mAnimModeTextView2:Landroid/widget/TextView;

.field private mAnimModeView:Landroid/widget/ImageView;

.field private mAnimModeView2:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mIsAnim:Z

.field private mModeTextView:Landroid/widget/TextView;

.field private mModeTextView2:Landroid/widget/TextView;

.field private mModeView:Landroid/widget/ImageView;

.field private mModeView2:Landroid/widget/ImageView;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPage;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mIsAnim:Z

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startNextStepAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 56
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040193

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10099f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mRootView:Landroid/widget/RelativeLayout;

    .line 67
    const v2, 0x7f1009a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextViewDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x3fc7ae14    # 1.56f

    const v4, 0x7f0f01f0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 69
    return-void
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mIsAnim:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 95
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;

    const v1, 0x7f020996

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;

    const v1, 0x7f020997

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private startNextStepAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    const v1, 0x7f020994

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    const v1, 0x7f020992

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mTextAlphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method


# virtual methods
.method public getPageRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "tutorialPageThree-------startAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "tutorialPageThree-------stopAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
