.class public Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;
.super Ljava/lang/Object;
.source "RotateEffectDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaoHeDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

.field private mDialogRootLayout:Landroid/view/View;

.field private mDuiBiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRuiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

.field private mRunnable:Ljava/lang/Runnable;

.field private mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDuiBiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mBaoHeDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRuiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 190
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$4;-><init>(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_4

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 128
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04004a

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f1001c8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f1001c9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDuiBiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f100165

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDuiBiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mBaoHeDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10016a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mBaoHeDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRuiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    if-nez v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f10016f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRuiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->fadeOutDialog()V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->inflateDialogLayout()V

    .line 180
    return-void
.end method

.method public setOnBaoHeDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mBaoHeDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;-><init>(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    return-void
.end method

.method public setOnDuiBiDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mDuiBiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$1;-><init>(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    return-void
.end method

.method public setOnRuiDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRuiDuSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$3;-><init>(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->inflateDialogLayout()V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 47
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->resetRotateDialog()V

    .line 185
    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->mRunnable:Ljava/lang/Runnable;

    .line 187
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->fadeInDialog()V

    .line 188
    return-void
.end method
