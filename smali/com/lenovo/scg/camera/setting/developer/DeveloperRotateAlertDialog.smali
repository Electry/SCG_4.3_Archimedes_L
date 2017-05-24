.class public Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;
.super Ljava/lang/Object;
.source "DeveloperRotateAlertDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRadioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog$1;-><init>(Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mListener:Landroid/view/View$OnTouchListener;

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    return-object v0
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040167

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mViewParent:Landroid/view/ViewGroup;

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f100855

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mViewParent:Landroid/view/ViewGroup;

    const v2, 0x7f100856

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const v2, 0x7f100407

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method

.method private setCheckBoxListener(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_2

    .line 112
    check-cast v1, Landroid/widget/CheckBox;

    .end local v1    # "v":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    const-string/jumbo v3, "setListener()=="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 114
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 115
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setCheckBoxListener(Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 118
    :cond_3
    return-void
.end method

.method private setRadioGroupListener(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_1

    .line 99
    check-cast v1, Landroid/widget/RadioGroup;

    .end local v1    # "v":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRadioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 101
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setRadioGroupListener(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 104
    :cond_2
    return-void
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->fadeOutDialog()V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckBoxByID(I)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getRadioButtonByID(I)Landroid/widget/RadioButton;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method public resetRotateDialog()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->inflateDialogLayout()V

    .line 154
    return-void
.end method

.method public setCheckBoxOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "mOnCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setCheckBoxListener(Landroid/view/ViewGroup;)V

    .line 123
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->inflateDialogLayout()V

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 55
    return-void
.end method

.method public setRadioGroupCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "mOnCheckedChangeListener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mRadioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->mDevSettingItemsLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setRadioGroupListener(Landroid/view/ViewGroup;)V

    .line 130
    return-void
.end method

.method public showAlertDialog()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->resetRotateDialog()V

    .line 159
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->fadeInDialog()V

    .line 160
    return-void
.end method
