.class public Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;
    }
.end annotation


# static fields
.field private static final DESTROY_VIEWS:I = 0x2

.field private static final HIDE_SMART_BUTTON:I = 0x6

.field private static final HIDE_SMART_TEXT:I = 0x5

.field private static final HIDE_VIEW:I = 0x3

.field private static final SHOW_SMART_TEXT:I = 0x4

.field private static final START_SHORTCUT_ANIM:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSmartTextIndex:I

.field private mFunction:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShowThumbnail:Z

.field private mListener:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;

.field private mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScaleBigAnim:Landroid/view/animation/ScaleAnimation;

.field private mScaleSmallAnim:Landroid/view/animation/ScaleAnimation;

.field private mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShutterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShutterButtonBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSmartText:Landroid/widget/TextView;

.field private mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mThumbnailImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;

.field private mVideoImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mVideoImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "function"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mIsShowThumbnail:Z

    .line 100
    new-instance v0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;

    .line 138
    iput p3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    .line 139
    iput p4, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    .line 140
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->initViews()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShortcutAnimNextStep(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShutterAnim()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mListener:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->destroyViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Lcom/lenovo/scg/common/ui/FunctionChangeToast;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;
    .param p1, "x1"    # Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartTextAnim(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startHideSmartAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startVideoAnim()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startThumbnailAnim()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartAnim()V

    return-void
.end method

.method private destroyViews()V
    .locals 4

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 503
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mRootView:Landroid/widget/RelativeLayout;

    .line 510
    return-void
.end method

.method private initSettingAnim()V
    .locals 12

    .prologue
    .line 387
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 388
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b18000    # 355.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 389
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 390
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 393
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 394
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 395
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 396
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 397
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 398
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 399
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    return-void
.end method

.method private initViews()V
    .locals 12

    .prologue
    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 145
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040030

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 146
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f10014a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mRootView:Landroid/widget/RelativeLayout;

    .line 147
    const v0, 0x7f10014b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 150
    const v0, 0x7f10014c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 151
    const v0, 0x7f10014d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 152
    const v0, 0x7f10014e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartText:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f10014f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 155
    const v0, 0x7f100150

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 156
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    if-ne v0, v5, :cond_2

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 163
    :goto_0
    const v0, 0x7f100151

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 168
    :cond_0
    const v0, 0x7f100152

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 169
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    if-ne v0, v5, :cond_3

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 174
    :goto_1
    const v0, 0x7f100153

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 176
    const v0, 0x7f100154

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 177
    const v0, 0x7f100156

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 179
    const v0, 0x7f100155

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 181
    const v0, 0x7f100157

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 182
    const v0, 0x7f100158

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 184
    const v0, 0x7f100159

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 185
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    if-ne v0, v5, :cond_4

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 192
    :goto_2
    iget v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleBigAnim:Landroid/view/animation/ScaleAnimation;

    .line 195
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, v11

    move v3, v11

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleSmallAnim:Landroid/view/animation/ScaleAnimation;

    .line 196
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSettingImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private startHideSmartAnim()V
    .locals 13

    .prologue
    .line 317
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 318
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 319
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 320
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 321
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 322
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 326
    .local v12, "smartAnim":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 327
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 328
    .local v1, "smartScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 329
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 330
    .local v2, "rotate":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v12}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    new-instance v3, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 349
    return-void
.end method

.method private startModeAnim()V
    .locals 12

    .prologue
    .line 403
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 404
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b18000    # 355.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 405
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 406
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 408
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 409
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 410
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 411
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 412
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 413
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 414
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 415
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mModeImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    new-instance v2, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$5;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 435
    return-void
.end method

.method private startShortcutAnim()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShortcutAnimNextStep(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method private startShortcutAnimNextStep(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x10b

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    new-instance v1, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    return-void
.end method

.method private startShutterAnim()V
    .locals 12

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-wide/16 v10, 0x12c

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 438
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 439
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 440
    .local v7, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 441
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleSmallAnim:Landroid/view/animation/ScaleAnimation;

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleSmallAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 448
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v5, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleSmallAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 453
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43340000    # 180.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 454
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 455
    .local v8, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleBigAnim:Landroid/view/animation/ScaleAnimation;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mScaleBigAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 458
    :cond_1
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 459
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 460
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mShutterButtonBg2:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    new-instance v1, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 498
    return-void
.end method

.method private startSmartAnim()V
    .locals 13

    .prologue
    .line 278
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 279
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 280
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 281
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 282
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 283
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 284
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 285
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 289
    .local v12, "smartAnim":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 290
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 291
    .local v1, "smartScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 292
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 293
    .local v2, "rotate":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v12}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 297
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartTextAnim(Z)V

    .line 300
    :cond_0
    new-instance v3, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$3;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    return-void
.end method

.method private startSmartTextAnim(Z)V
    .locals 8
    .param p1, "isShow"    # Z

    .prologue
    const-wide/16 v6, 0x1c

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 352
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :cond_0
    if-eqz p1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartText:Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 359
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartText:Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mCurrentSmartTextIndex:I

    if-lez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startThumbnailAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 236
    iget-boolean v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mIsShowThumbnail:Z

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 238
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 239
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 240
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 242
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    .local v1, "alpha1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 244
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "alpha1":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->initSettingAnim()V

    .line 272
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startModeAnim()V

    .line 275
    return-void
.end method

.method private startVideoAnim()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 373
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 374
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v12, 0x190

    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 375
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImageBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v9}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 378
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 379
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 380
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 381
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 382
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mVideoImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 522
    return-void
.end method

.method public initThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mThumbnailImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    return-void
.end method

.method public setAnimListener(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mListener:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;

    .line 518
    return-void
.end method

.method public setIsShowThumbnail(Z)V
    .locals 0
    .param p1, "isShowThumbnail"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mIsShowThumbnail:Z

    .line 526
    return-void
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShortcutAnim()V

    .line 200
    return-void
.end method
