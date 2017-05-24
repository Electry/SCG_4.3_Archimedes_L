.class public Lcom/lenovo/scg/common/animation/SmartAnimation;
.super Ljava/lang/Object;
.source "SmartAnimation.java"


# static fields
.field private static final DESTROY_VIEWS:I = 0x2

.field private static final HIDE_SMART_BUTTON:I = 0x6

.field private static final HIDE_SMART_TEXT:I = 0x5

.field private static final SHOW_SMART_TEXT:I = 0x4

.field private static final START_SMART_ANIM:I = 0x1

.field private static final START_SMART_ANIM_DELAY_TIME:J = 0x320L

.field private static sRunning:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSmartTextIndex:I

.field private mFunction:I

.field private mHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSmartText:Landroid/widget/TextView;

.field private mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/animation/SmartAnimation;->sRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "function"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/SmartAnimation$1;-><init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mParentView:Landroid/view/ViewGroup;

    .line 91
    iput p3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mFunction:I

    .line 92
    iput p4, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mOrientation:I

    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->initViews()V

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/animation/SmartAnimation;->sRunning:Z

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->destroyViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/animation/SmartAnimation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartTextAnim(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->startHideSmartAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/animation/SmartAnimation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/SmartAnimation;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method private destroyViews()V
    .locals 4

    .prologue
    .line 226
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/scg/common/animation/SmartAnimation;->sRunning:Z

    .line 227
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040064

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mParentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1002a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mRootView:Landroid/widget/RelativeLayout;

    .line 101
    const v2, 0x7f1002a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 102
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 104
    const v2, 0x7f1002aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 105
    const v2, 0x7f1002ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 106
    const v2, 0x7f1002ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartText:Landroid/widget/TextView;

    .line 107
    return-void
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/lenovo/scg/common/animation/SmartAnimation;->sRunning:Z

    return v0
.end method

.method private startHideSmartAnim()V
    .locals 13

    .prologue
    .line 155
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 156
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 157
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

    .line 158
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 159
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 164
    .local v12, "smartAnim":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 165
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

    .line 166
    .local v1, "smartScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 168
    .local v2, "rotate":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v12}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    new-instance v3, Lcom/lenovo/scg/common/animation/SmartAnimation$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/animation/SmartAnimation$3;-><init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    return-void
.end method

.method private startSmartAnim()V
    .locals 13

    .prologue
    .line 115
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 117
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 118
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 119
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

    .line 120
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 121
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 126
    .local v12, "smartAnim":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xa7

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 127
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

    .line 128
    .local v1, "smartScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 129
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 130
    .local v2, "rotate":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v12}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget v3, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 134
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartTextAnim(Z)V

    .line 137
    :cond_0
    new-instance v3, Lcom/lenovo/scg/common/animation/SmartAnimation$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/animation/SmartAnimation$2;-><init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    return-void
.end method

.method private startSmartTextAnim(Z)V
    .locals 10
    .param p1, "isShow"    # Z

    .prologue
    const-wide/16 v8, 0x1c

    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 194
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "text":Ljava/lang/String;
    iget v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_0
    if-eqz p1, :cond_5

    .line 199
    iget v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    .line 200
    .local v0, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 203
    :cond_1
    if-gtz v0, :cond_3

    .line 204
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 209
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :cond_2
    :goto_1
    return-void

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 214
    .end local v0    # "pos":I
    :cond_5
    iget v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    .line 215
    .restart local v0    # "pos":I
    if-gez v0, :cond_6

    .line 216
    const/4 v0, 0x0

    .line 218
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mCurrentSmartTextIndex:I

    if-lez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    return-void
.end method

.method public startAnim()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 110
    sput-boolean v1, Lcom/lenovo/scg/common/animation/SmartAnimation;->sRunning:Z

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void
.end method
