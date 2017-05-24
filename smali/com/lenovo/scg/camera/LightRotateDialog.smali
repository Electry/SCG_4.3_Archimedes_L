.class public Lcom/lenovo/scg/camera/LightRotateDialog;
.super Ljava/lang/Object;
.source "LightRotateDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancleButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "mCancleClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "mConfirmClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mCancleButton:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mConfirmButton:Landroid/widget/Button;

    .line 122
    new-instance v0, Lcom/lenovo/scg/camera/LightRotateDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/LightRotateDialog$1;-><init>(Lcom/lenovo/scg/camera/LightRotateDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LightRotateDialog;->inflateDialogLayout()V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mCancleButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v1, 0x7f100632

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mCancleButton:Landroid/widget/Button;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mConfirmButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v1, 0x7f100633

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mConfirmButton:Landroid/widget/Button;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mCancleButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/LightRotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/LightRotateDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400ef

    iget-object v2, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10062e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10062f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LightRotateDialog;->fadeOutDialog()V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialogShowed()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LightRotateDialog;->inflateDialogLayout()V

    .line 114
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/LightRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 63
    return-void
.end method

.method public showAlertDialog()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/LightRotateDialog;->resetRotateDialog()V

    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LightRotateDialog;->fadeInDialog()V

    .line 120
    return-void
.end method
