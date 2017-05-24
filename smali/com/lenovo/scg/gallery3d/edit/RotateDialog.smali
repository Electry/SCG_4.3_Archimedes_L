.class public Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDetailsDevider:Landroid/widget/ImageView;

.field private mDetailsParent:Landroid/widget/LinearLayout;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRotateDialogButton:Landroid/widget/TextView;

.field private mRotateDialogParentView:Landroid/view/ViewGroup;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mViewParent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "layoutResource"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mActivity:Landroid/app/Activity;

    .line 79
    iput p2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mLayoutResourceID:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mLayoutResourceID:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100861

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100863

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogParentView:Landroid/view/ViewGroup;

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100862

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100864

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100865

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100868

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100866

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    const v2, 0x7f100867

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 116
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->fadeOutDialog()V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideButtonText()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :cond_1
    return-void
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->inflateDialogLayout()V

    .line 127
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    return-void
.end method

.method public setDetailsParentWidthHeight(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 187
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 120
    iput p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mOrientation:I

    .line 121
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->inflateDialogLayout()V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 123
    return-void
.end method

.method public setView(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 182
    :cond_0
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->resetRotateDialog()V

    .line 150
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    if-eqz p2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->fadeInDialog()V

    .line 172
    return-void
.end method

.method public showButtonText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialogButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mDetailsDevider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_1
    return-void
.end method
