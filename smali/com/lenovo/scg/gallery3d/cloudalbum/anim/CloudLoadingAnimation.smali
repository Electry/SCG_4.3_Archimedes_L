.class public Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;
.super Ljava/lang/Object;
.source "CloudLoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

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

.field public mLoadingListener:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f10030f

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mIsStartTextAnim:Z

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    .line 41
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mContext:Landroid/content/Context;

    .line 210
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mLoadingListener:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    .line 45
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 68
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mContext:Landroid/content/Context;

    .line 49
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "vChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 51
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040075

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const v4, 0x7f100311

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView1:Landroid/widget/ImageView;

    .line 60
    const v4, 0x7f100312

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView2:Landroid/widget/ImageView;

    .line 61
    const v4, 0x7f100313

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView3:Landroid/widget/ImageView;

    .line 62
    const v4, 0x7f100314

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView4:Landroid/widget/ImageView;

    .line 63
    const v4, 0x7f100315

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mTextView:Landroid/widget/TextView;

    .line 64
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mIsStartTextAnim:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mIsStartTextAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startTextAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private startAnim()V
    .locals 7

    .prologue
    .line 103
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->stopAnim()V

    .line 105
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mLoadingListener:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mLoadingListener:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;->onSetLoadingPlay(Z)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, "imageView1":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 112
    .local v2, "imageView2":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 113
    .local v3, "imageView3":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 114
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x258

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 115
    new-instance v4, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startBgAnim()V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 81
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    return-void
.end method

.method private startTextAnim()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 149
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    return-void
.end method


# virtual methods
.method public setLoadingListener(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mLoadingListener:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;

    .line 214
    return-void
.end method

.method public startAnim(Z)V
    .locals 2
    .param p1, "hasBackground"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startBgAnim()V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim()V

    goto :goto_0
.end method

.method public stopAnim()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 174
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
