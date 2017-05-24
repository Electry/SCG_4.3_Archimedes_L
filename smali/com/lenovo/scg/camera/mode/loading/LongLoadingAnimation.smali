.class public Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
.super Ljava/lang/Object;
.source "LongLoadingAnimation.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

.field private mCurrentIndex:I

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mImageView4:Landroid/widget/ImageView;

.field private mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStartTextAnim:Z

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mIsStartTextAnim:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mIsStartTextAnim:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mIsStartTextAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startTextAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const v8, 0x7f100635

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 58
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 85
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "vChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 64
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400f2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 71
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 72
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const v4, 0x7f1001e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView1:Landroid/widget/ImageView;

    .line 76
    const v4, 0x7f1001ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView2:Landroid/widget/ImageView;

    .line 77
    const v4, 0x7f1001f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView3:Landroid/widget/ImageView;

    .line 78
    const v4, 0x7f100200

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView4:Landroid/widget/ImageView;

    .line 79
    const v4, 0x7f100637

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f100636

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 81
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private startAnim()V
    .locals 7

    .prologue
    .line 120
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, "imageView1":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 122
    .local v2, "imageView2":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 123
    .local v3, "imageView3":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 124
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 125
    new-instance v4, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;-><init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    return-void
.end method

.method private startBgAnim()V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 99
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    new-instance v1, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$1;-><init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    return-void
.end method

.method private startTextAnim()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 159
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    new-instance v1, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$3;-><init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    return-void
.end method


# virtual methods
.method public startAnim(Z)V
    .locals 2
    .param p1, "bgIsTransparent"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->init()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startBgAnim()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim()V

    goto :goto_0
.end method

.method public stopAnim()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 182
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 183
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    new-instance v1, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;-><init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
