.class public Lcom/lenovo/scg/common/ui/ScrollLayout;
.super Ljava/lang/Object;
.source "ScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;
    }
.end annotation


# static fields
.field private static final DURIATION:I = 0x12c


# instance fields
.field private mBottomPoint1:Landroid/widget/ImageView;

.field private mBottomPoint2:Landroid/widget/ImageView;

.field private mBottomPoint3:Landroid/widget/ImageView;

.field private mBottomPoints:Landroid/widget/RelativeLayout;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHiItemImage:Landroid/widget/ImageView;

.field private mHiItemText:Landroid/widget/TextView;

.field private mHorParams:Landroid/view/ViewGroup$LayoutParams;

.field private mIsInAnim:Z

.field private mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mScrollViewsRoot:Landroid/widget/LinearLayout;

.field private mTopPoint1:Landroid/widget/ImageView;

.field private mTopPoint2:Landroid/widget/ImageView;

.field private mTopPoint3:Landroid/widget/ImageView;

.field private mTopPoints:Landroid/widget/RelativeLayout;

.field private mVerParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "orientation"    # I

    .prologue
    const v5, 0x7f1003cf

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v3, Lcom/lenovo/scg/common/ui/ScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$1;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mClickListener:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mParentView:Landroid/view/ViewGroup;

    .line 81
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 83
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 86
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04008e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 88
    const v3, 0x7f1003d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRootView:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 90
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v3, v4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const v3, 0x7f1003d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    .line 93
    const v3, 0x7f1003d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    .line 94
    const v3, 0x7f1003d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint1:Landroid/widget/ImageView;

    .line 95
    const v3, 0x7f1003d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint2:Landroid/widget/ImageView;

    .line 96
    const v3, 0x7f1003da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint3:Landroid/widget/ImageView;

    .line 97
    const v3, 0x7f1003d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoints:Landroid/widget/RelativeLayout;

    .line 98
    const v3, 0x7f1003d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint1:Landroid/widget/ImageView;

    .line 99
    const v3, 0x7f1003d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint2:Landroid/widget/ImageView;

    .line 100
    const v3, 0x7f1003d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;

    .line 101
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoints:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, p4, p3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateOrientation(ILandroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideAnim()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->startShowNextStepAnim()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/common/ui/ScrollLayout;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/common/ui/ScrollLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/common/ui/ScrollLayout;)Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideLastStepAnim()V

    return-void
.end method

.method static synthetic access$802(Lcom/lenovo/scg/common/ui/ScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mIsInAnim:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/ScrollLayout;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateLayout()V

    return-void
.end method

.method private startHideAnim()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mIsInAnim:Z

    .line 127
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 128
    .local v0, "hideAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 129
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v4, Lcom/lenovo/scg/common/ui/ScrollLayout$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$2;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 148
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v1, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 149
    .local v1, "point1Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 150
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 151
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint1:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    new-instance v4, Lcom/lenovo/scg/common/ui/ScrollLayout$3;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$3;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v2, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 170
    .local v2, "point2Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 171
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 172
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint2:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    new-instance v4, Lcom/lenovo/scg/common/ui/ScrollLayout$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$4;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v3, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 191
    .local v3, "point3Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 192
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    new-instance v4, Lcom/lenovo/scg/common/ui/ScrollLayout$5;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$5;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0
.end method

.method private startHideLastStepAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint1:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint3:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v0, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 219
    .local v0, "point1Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 220
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint1:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v1, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 224
    .local v1, "point2Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 225
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint2:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 229
    .local v2, "point3Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 230
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint3:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    new-instance v3, Lcom/lenovo/scg/common/ui/ScrollLayout$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$6;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    return-void
.end method

.method private startShowNextStepAnim()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 334
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 339
    .local v0, "hideAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 340
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v1, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 343
    .local v1, "point1Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 344
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint1:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v2, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 348
    .local v2, "point2Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 349
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 350
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint2:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 352
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v3, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 353
    .local v3, "point3Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 354
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 355
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    new-instance v4, Lcom/lenovo/scg/common/ui/ScrollLayout$10;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$10;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 374
    return-void
.end method

.method private updateItemMargin()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 480
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 481
    .local v1, "n":I
    const/4 v0, 0x0

    .line 482
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 483
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 484
    .local v3, "rotateLayout":Lcom/lenovo/scg/camera/ui/RotateLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 485
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 486
    iget v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 487
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 492
    :cond_0
    :goto_1
    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 494
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "rotateLayout":Lcom/lenovo/scg/camera/ui/RotateLayout;
    :cond_2
    return-void
.end method

.method private updateLayout()V
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mVerParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mVerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateLayout(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHorParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHorParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateLayout(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateLayout(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 460
    iget v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 461
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mVerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateItemMargin()V

    .line 469
    return-void

    .line 464
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHorParams:Landroid/view/ViewGroup$LayoutParams;

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mRotateRoot:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method public initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmapResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "stringResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, -0x2

    .line 377
    if-nez p1, :cond_1

    .line 446
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 381
    move v2, v0

    .line 382
    .local v2, "index":I
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 383
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04008f

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 384
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f1003db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 385
    .local v5, "rotateLayout":Lcom/lenovo/scg/camera/ui/RotateLayout;
    const v9, 0x7f1003dc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 388
    .local v6, "scrollViewItem":Landroid/widget/RelativeLayout;
    new-instance v9, Lcom/lenovo/scg/common/ui/ScrollLayout$11;

    invoke-direct {v9, p0, v2}, Lcom/lenovo/scg/common/ui/ScrollLayout$11;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;I)V

    invoke-static {v6, v9}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 417
    const v9, 0x7f1003dd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 418
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    if-nez v0, :cond_2

    .line 420
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020476

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iput-object v1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;

    .line 423
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v0, :cond_4

    .line 424
    const v9, 0x7f1003de

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 425
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 426
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 427
    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    :cond_3
    if-nez v0, :cond_4

    .line 430
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020478

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iput-object v7, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;

    .line 435
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_5

    .line 437
    iget v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_6

    .line 438
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902a1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 444
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 440
    :cond_6
    iget-object v9, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902a2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public setOnViewClickListener(Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    .line 450
    return-void
.end method

.method public startShowAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    .line 254
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mIsInAnim:Z

    .line 263
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v0, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 266
    .local v0, "point1Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 267
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint1:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    new-instance v3, Lcom/lenovo/scg/common/ui/ScrollLayout$7;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$7;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 286
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v1, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 288
    .local v1, "point2Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 289
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint2:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    new-instance v3, Lcom/lenovo/scg/common/ui/ScrollLayout$8;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$8;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 308
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v2, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 310
    .local v2, "point3Anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 311
    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoint3:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    new-instance v3, Lcom/lenovo/scg/common/ui/ScrollLayout$9;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/ui/ScrollLayout$9;-><init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public updateOrientation(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 453
    iput p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mOrientation:I

    .line 454
    iget-boolean v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout;->mIsInAnim:Z

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0, p2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateLayout(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :cond_0
    return-void
.end method
