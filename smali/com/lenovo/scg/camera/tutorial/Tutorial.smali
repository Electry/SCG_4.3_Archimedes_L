.class public Lcom/lenovo/scg/camera/tutorial/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

.field private mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

.field private mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

.field private mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScrollView:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;

.field private mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;

.field private mTutorialListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

.field private mViewsRoot:Landroid/widget/LinearLayout;

.field private mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial$3;-><init>(Lcom/lenovo/scg/camera/tutorial/Tutorial;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    iput-object p2, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mParentView:Landroid/view/ViewGroup;

    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/Tutorial;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/Tutorial;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->startPageAnim(IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/tutorial/Tutorial;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/Tutorial;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->tutorialPageChange(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/tutorial/Tutorial;)Lcom/lenovo/scg/camera/tutorial/TutorialController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/Tutorial;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 59
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040190

    iget-object v4, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mParentView:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f100986

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    .line 61
    const v3, 0x7f100988

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    .line 62
    const v3, 0x7f100987

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScrollView:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;

    .line 63
    iget-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScrollView:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;

    new-instance v4, Lcom/lenovo/scg/camera/tutorial/Tutorial$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial$1;-><init>(Lcom/lenovo/scg/camera/tutorial/Tutorial;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->setTutorialListener(Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;)V

    .line 71
    iget-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScrollView:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;

    new-instance v4, Lcom/lenovo/scg/camera/tutorial/Tutorial$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial$2;-><init>(Lcom/lenovo/scg/camera/tutorial/Tutorial;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->setPageChangeListener(Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;)V

    .line 80
    iget-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->initViews()V

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lenovo/scg/camera/tutorial/Tutorial;->TAG:Ljava/lang/String;

    const-string v4, "Tutorial init exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->getPageRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->getPageRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->getPageRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->getPageRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->setListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mViewsRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->getPageRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method private startPageAnim(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v0, 0x1

    .line 103
    if-ge p4, p1, :cond_5

    .line 104
    if-ne p2, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->stopAnim()V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnim()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    if-ne p2, v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->stopAnim()V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startAnim()V

    goto :goto_0

    .line 110
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->stopAnim()V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->startAnim()V

    goto :goto_0

    .line 113
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x3

    if-ne p2, v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->stopAnim()V

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startAnim()V

    goto :goto_0

    .line 116
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x4

    if-ne p2, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startAnim()V

    goto :goto_0

    .line 120
    :cond_5
    if-ne p2, v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->startAnim()V

    goto :goto_0

    .line 122
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    if-ne p2, v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mWelcomePage:Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialWelcomePage;->stopAnim()V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startAnim()V

    goto :goto_0

    .line 125
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_8

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->stopAnim()V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->startAnim()V

    goto :goto_0

    .line 128
    :cond_8
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x3

    if-ne p2, v0, :cond_9

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageTwo:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->stopAnim()V

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startAnim()V

    goto :goto_0

    .line 131
    :cond_9
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mScreenHeight:I

    mul-int/lit8 v0, v0, 0x4

    if-ne p2, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageThree:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->stopAnim()V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startAnim()V

    goto/16 :goto_0
.end method

.method private tutorialPageChange(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 161
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageFour:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->resetView()V

    .line 166
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mPageOne:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->resetView()V

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method public hideTutorialWindow()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    .line 183
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->hideTutorialWindow()V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialController;->hideTutorialWindow(Z)V

    .line 188
    return-void
.end method

.method public setTutorialController(Lcom/lenovo/scg/camera/tutorial/TutorialController;)V
    .locals 0
    .param p1, "tutorialController"    # Lcom/lenovo/scg/camera/tutorial/TutorialController;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial;->mTutorialController:Lcom/lenovo/scg/camera/tutorial/TutorialController;

    .line 175
    return-void
.end method
