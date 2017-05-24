.class public Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;
.super Ljava/lang/Object;
.source "ProgressRotateDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;

.field private mViewParent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 67
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04016b

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100872

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100873

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100874

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100875

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100876

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100877

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->fadeOutDialog()V

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->inflateDialogLayout()V

    .line 98
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->inflateDialogLayout()V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 94
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->resetRotateDialog()V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->fadeInDialog()V

    .line 132
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
