.class public Lcom/lenovo/scg/camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

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

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "layoutResource"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    .line 68
    iput p2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mLayoutResourceID:I

    .line 69
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 72
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .local v1, "layoutRoot":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f100869

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 77
    const v3, 0x7f10086a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 78
    const v3, 0x7f10086b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 79
    const v3, 0x7f10086f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 80
    const v3, 0x7f10086c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f10086d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 82
    const v3, 0x7f10086e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f100871

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f100870

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 88
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layoutRoot":Landroid/view/ViewGroup;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->fadeOutDialog()V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->inflateDialogLayout()V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->inflateDialogLayout()V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 97
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "button1Text"    # Ljava/lang/String;
    .param p4, "r1"    # Ljava/lang/Runnable;
    .param p5, "button2Text"    # Ljava/lang/String;
    .param p6, "r2"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->resetRotateDialog()V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "language":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    if-eqz p3, :cond_2

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/scg/camera/RotateDialogController$1;

    invoke-direct {v3, p0, p4}, Lcom/lenovo/scg/camera/RotateDialogController$1;-><init>(Lcom/lenovo/scg/camera/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_2
    if-eqz p5, :cond_3

    .line 156
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/scg/camera/RotateDialogController$2;

    invoke-direct {v3, p0, p6}, Lcom/lenovo/scg/camera/RotateDialogController$2;-><init>(Lcom/lenovo/scg/camera/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->fadeInDialog()V

    .line 171
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->resetRotateDialog()V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/lenovo/scg/camera/RotateDialogController;->fadeInDialog()V

    .line 180
    return-void
.end method
