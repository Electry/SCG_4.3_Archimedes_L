.class public Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
.super Ljava/lang/Object;
.source "RotateDeleteDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mDialogDeleteRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I

.field private mParentView:Landroid/view/View;

.field private mRotateDeleteDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRotateDeleteDialogButton1:Landroid/widget/TextView;

.field private mRotateDeleteDialogButton2:Landroid/widget/TextView;

.field private mRotateDeleteDialogButtonLayout:Landroid/view/View;

.field private mRotateDeleteDialogParentLayout:Landroid/widget/LinearLayout;

.field private mRotateDeleteDialogText:Landroid/widget/TextView;

.field private mRotateDeleteDialogTextParent:Landroid/widget/LinearLayout;

.field private mRotateDeleteDialogTitle:Landroid/widget/TextView;

.field private mRotateDeleteDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$3;-><init>(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mActivity:Landroid/app/Activity;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mCancelRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 84
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    if-nez v3, :cond_5

    .line 85
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 86
    .local v1, "layoutRoot":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040168

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "v":Landroid/view/View;
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 89
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mParentView:Landroid/view/View;

    .line 90
    const v3, 0x7f100857

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    .line 91
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    :cond_0
    const v3, 0x7f100858

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 95
    const v3, 0x7f10085a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitleLayout:Landroid/view/View;

    .line 96
    const v3, 0x7f10085e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButtonLayout:Landroid/view/View;

    .line 97
    const v3, 0x7f10085b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitle:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f10085d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f10085f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f100860

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f10085c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTextParent:Landroid/widget/LinearLayout;

    .line 103
    const v3, 0x7f100859

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogParentLayout:Landroid/widget/LinearLayout;

    .line 105
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layoutRoot":Landroid/view/ViewGroup;
    .end local v2    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mDialogDeleteRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->fadeOutDialog()V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDialog()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    return-void
.end method

.method public resetRotateDialog()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 134
    const-string v0, "hwj"

    const-string/jumbo v1, "resetRotateDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->inflateDialogLayout()V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 127
    iput p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mOrientation:I

    .line 128
    const-string v0, "hwj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->inflateDialogLayout()V

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 131
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "cancelRunnable"    # Ljava/lang/Runnable;
    .param p5, "okText"    # Ljava/lang/String;
    .param p6, "okRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->resetRotateDialog()V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mCancelRunnable:Ljava/lang/Runnable;

    .line 171
    if-eqz p3, :cond_1

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton1:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$1;

    invoke-direct {v1, p0, p4}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_1
    if-eqz p5, :cond_2

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButton2:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;

    invoke-direct {v1, p0, p6}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->fadeInDialog()V

    .line 201
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->resetRotateDialog()V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->fadeInDialog()V

    .line 209
    return-void
.end method

.method public updateRotateDeleteDialogBg(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 261
    const-string v0, "hwj"

    const-string/jumbo v1, "updateRotateDeleteDialogBg()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogParentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public updateRotateDeleteDialogLayout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 240
    const-string v1, "hwj"

    const-string/jumbo v2, "updateRotateDeleteDialogLayout()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTextParent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "hwj"

    const-string v2, "mRotateDeleteDialogTextParent != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTextParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 244
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogTextParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v1, "hwj"

    const-string v2, "mRotateDeleteDialogTextParent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateRotateDeleteDialogTextLayout(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 253
    const-string v0, "hwj"

    const-string/jumbo v1, "updateRotateDeleteDialogTextLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->mRotateDeleteDialogText:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    :cond_0
    return-void
.end method
