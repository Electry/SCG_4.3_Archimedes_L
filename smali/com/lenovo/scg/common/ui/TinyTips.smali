.class public Lcom/lenovo/scg/common/ui/TinyTips;
.super Ljava/lang/Object;
.source "TinyTips.java"


# static fields
.field private static final ANI_DURATION:I = 0x320

.field public static final TINY_TIPS_DURATION_LONG:I = 0xbb8

.field private static mInstance:Lcom/lenovo/scg/common/ui/TinyTips;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParent:Landroid/view/ViewGroup;

.field private mRoot:Landroid/view/View;

.field private mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    .line 28
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mTextView:Landroid/widget/TextView;

    .line 30
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mContext:Landroid/content/Context;

    .line 32
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    .line 34
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 36
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040067

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1002c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    const v3, 0x7f1002c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mTextView:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    const v3, 0x7f1002c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/ui/TinyTips;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/TinyTips;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/TinyTips;->hideTips()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/ui/TinyTips;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/TinyTips;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/TinyTips;->destroyTips()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {v0}, Lcom/lenovo/scg/common/ui/TinyTips;->destroyTips()V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    .line 52
    :cond_0
    return-void
.end method

.method private destroyTips()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->clearAnimation()V

    .line 113
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRoot:Landroid/view/View;

    .line 119
    :cond_1
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mParent:Landroid/view/ViewGroup;

    .line 120
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private hideTips()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 90
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    new-instance v1, Lcom/lenovo/scg/common/ui/TinyTips$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/ui/TinyTips$2;-><init>(Lcom/lenovo/scg/common/ui/TinyTips;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method private setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, -0x2

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_0

    .line 127
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    const/16 v1, 0x12c

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void

    .line 131
    :cond_0
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/16 v1, 0xc2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "duration"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {v0}, Lcom/lenovo/scg/common/ui/TinyTips;->destroyTips()V

    .line 43
    :cond_0
    new-instance v0, Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/ui/TinyTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    sput-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    .line 44
    sget-object v0, Lcom/lenovo/scg/common/ui/TinyTips;->mInstance:Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {v0, p2, p3, p4}, Lcom/lenovo/scg/common/ui/TinyTips;->showTips(Ljava/lang/String;II)V

    .line 45
    return-void
.end method

.method private showTips(Ljava/lang/String;II)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "duration"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/lenovo/scg/common/ui/TinyTips;->setOrientation(I)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 71
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 72
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    if-lez p3, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/TinyTips;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lenovo/scg/common/ui/TinyTips$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/common/ui/TinyTips$1;-><init>(Lcom/lenovo/scg/common/ui/TinyTips;)V

    int-to-long v4, p3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_0
    return-void
.end method
