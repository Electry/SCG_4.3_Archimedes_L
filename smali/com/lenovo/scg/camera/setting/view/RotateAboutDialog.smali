.class public Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;
.super Ljava/lang/Object;
.source "RotateAboutDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;-><init>(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mActivity:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 44
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 46
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04002d

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mViewParent:Landroid/view/ViewGroup;

    .line 49
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10013d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->fadeOutDialog()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->inflateDialogLayout()V

    .line 85
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->inflateDialogLayout()V

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 40
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->resetRotateDialog()V

    .line 90
    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->fadeInDialog()V

    .line 93
    return-void
.end method
