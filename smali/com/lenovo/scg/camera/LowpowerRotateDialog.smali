.class public Lcom/lenovo/scg/camera/LowpowerRotateDialog;
.super Ljava/lang/Object;
.source "LowpowerRotateDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "mConfirmClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mConfirmButton:Landroid/widget/Button;

    .line 112
    new-instance v0, Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;-><init>(Lcom/lenovo/scg/camera/LowpowerRotateDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->inflateDialogLayout()V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mConfirmButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v1, 0x7f100642

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mConfirmButton:Landroid/widget/Button;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/LowpowerRotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400f5

    iget-object v2, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10063b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10063c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->fadeOutDialog()V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialogShowed()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->inflateDialogLayout()V

    .line 104
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 55
    return-void
.end method

.method public showAlertDialog()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->resetRotateDialog()V

    .line 109
    invoke-direct {p0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->fadeInDialog()V

    .line 110
    return-void
.end method
