.class public Lcom/lenovo/scg/camera/front/FrontSettingPanel;
.super Landroid/widget/RelativeLayout;
.source "FrontSettingPanel.java"


# static fields
.field private static final HIGH_LIGHT_TEXT_COLOR:Ljava/lang/String; = "#25c6ff"

.field private static final NORMAL_TEXT_COLOR:Ljava/lang/String; = "#FFFFFF"

.field private static final TIP_SHOW_TIME:I = 0x320


# instance fields
.field private final ENABLEALLBUTTONS:I

.field private final TAG:Ljava/lang/String;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

.field private mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFrontSettingPanelContent:Landroid/widget/LinearLayout;

.field private mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

.field private mHighButton:Landroid/widget/TextView;

.field private mLowButton:Landroid/widget/TextView;

.field private mMediumButton:Landroid/widget/TextView;

.field private mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mSize11Button:Landroid/widget/TextView;

.field private mSize169Button:Landroid/widget/TextView;

.field private mSize43Button:Landroid/widget/TextView;

.field private mSizeButton:Landroid/widget/TextView;

.field private mSizePanel:Landroid/widget/LinearLayout;

.field private mSizePanelContainer:Landroid/widget/FrameLayout;

.field private mSizePanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mSizePanelFadeOutAnimation:Landroid/view/animation/Animation;

.field private mSupplyButton:Landroid/widget/TextView;

.field private mSupplyOrangeButton:Landroid/widget/TextView;

.field private mSupplyPanel:Landroid/widget/LinearLayout;

.field private mSupplyPanelContainer:Landroid/widget/FrameLayout;

.field private mSupplyPanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

.field private mSupplyPinkButton:Landroid/widget/TextView;

.field private mSupplySwitchButton:Landroid/widget/TextView;

.field private mVideoButton:Landroid/widget/TextView;

.field private mVideoLowId:I

.field private mVideoLowId_hi:I

.field private mVideoPanel:Landroid/widget/LinearLayout;

.field private mVideoPanelContainer:Landroid/widget/FrameLayout;

.field private mVideoPanelFadeInAnimation:Landroid/view/animation/Animation;

.field private mVideoPanelFadeOutAnimation:Landroid/view/animation/Animation;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "FrontSettingPanel"

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->TAG:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->ENABLEALLBUTTONS:I

    .line 127
    new-instance v0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->myHandler:Landroid/os/Handler;

    .line 152
    const-string v0, "FrontSettingPanel"

    const-string v1, "FrontSettingPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getSupplyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->udpateCameraDefaultPreferencesForSupply(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraShutterButton(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraVideoButton(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSupplyBeautyBotton(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->is169Open()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->showTip(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    return-object v0
.end method

.method private getSupplyValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_supply"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method private getVideoLowImage()V
    .locals 1

    .prologue
    .line 1009
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    :cond_0
    const v0, 0x7f020174

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId_hi:I

    .line 1011
    const v0, 0x7f020173

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    .line 1017
    :goto_0
    return-void

    .line 1014
    :cond_1
    const v0, 0x7f020170

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId_hi:I

    .line 1015
    const v0, 0x7f02016f

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    goto :goto_0
.end method

.method private is169Open()Z
    .locals 5

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "value":Ljava/lang/String;
    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private showTip(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 1085
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "showTip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-nez v0, :cond_0

    .line 1088
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "showTip, mRotateTips = null, create a new one."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "showTip,mRotateTips is not visible, to show."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 1094
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 1096
    :cond_1
    return-void
.end method

.method private udpateCameraDefaultPreferencesForSupply(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_supply"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1127
    return-void
.end method

.method private updateBntLayout4Row(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/TextView;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1024
    :cond_0
    return-void
.end method

.method private updateCameraShutterButton(Z)V
    .locals 2
    .param p1, "supply"    # Z

    .prologue
    .line 1101
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1105
    :cond_0
    if-eqz p1, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 1109
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCameraVideoButton(Z)V
    .locals 2
    .param p1, "supply"    # Z

    .prologue
    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSizeButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 428
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 442
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    return-void

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 438
    :cond_2
    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSupplyBeautyBotton(Z)V
    .locals 1
    .param p1, "supply"    # Z

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->updateSupplyBeautyBotton(Z)V

    .line 1123
    return-void
.end method

.method private updateVideoButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 894
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_video"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "value":Ljava/lang/String;
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 906
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 907
    return-void

    .line 899
    :cond_1
    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 902
    :cond_2
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/TextView;
    .param p2, "drawableId"    # I
    .param p3, "color"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1028
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1030
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1031
    return-void
.end method

.method public changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/TextView;
    .param p2, "drawableId"    # I
    .param p3, "color"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1034
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1035
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1036
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1052
    const-string/jumbo v0, "panhui1"

    const-string v1, "FrontSettingPanel, hide!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->isClickable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideSizePanel()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideVideoPanel()V

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingPanelContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1074
    :cond_3
    return-void
.end method

.method public hideSizePanel()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 594
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSizeButton()V

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    const v1, 0x7f0205e4

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    const v1, 0x7f0205e8

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    const v1, 0x7f0205e6

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hideSupplyPanel()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideVideoPanel()V
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 972
    const-string v0, "FrontSettingPanel"

    const-string v1, "hideVideoPanel, mVideoPanel == GONE!! return!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 977
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateVideoButton()V

    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    const v1, 0x7f020171

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    const v1, 0x7f02016d

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initSizeButton()V
    .locals 2

    .prologue
    .line 446
    const v0, 0x7f100580

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 449
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSizeButton()V

    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$11;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$11;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method public initSizePanel()V
    .locals 2

    .prologue
    .line 465
    const v0, 0x7f100588

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanel:Landroid/widget/LinearLayout;

    .line 466
    const v0, 0x7f100589

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 468
    const v0, 0x7f10058a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 470
    const v0, 0x7f10058b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$13;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$13;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    return-void
.end method

.method public initSupplyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 765
    const v2, 0x7f10057f

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    .line 766
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 774
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getSupplyValue()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "supplyValue":Ljava/lang/String;
    const v0, 0x7f02017a

    .line 777
    .local v0, "resId":I
    const-string/jumbo v2, "pink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    const v0, 0x7f020176

    .line 785
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontSettingPanel$21;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$21;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-void

    .line 779
    :cond_0
    const-string/jumbo v2, "orange"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    const v0, 0x7f020175

    goto :goto_0

    .line 782
    :cond_1
    const v0, 0x7f020177

    goto :goto_0
.end method

.method public initSupplyPanel()V
    .locals 2

    .prologue
    .line 652
    const v0, 0x7f100583

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanel:Landroid/widget/LinearLayout;

    .line 653
    const v0, 0x7f100584

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplySwitchButton:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplySwitchButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 655
    const v0, 0x7f100585

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPinkButton:Landroid/widget/TextView;

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPinkButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 657
    const v0, 0x7f100586

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyOrangeButton:Landroid/widget/TextView;

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyOrangeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplySwitchButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPinkButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyOrangeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$20;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$20;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    return-void
.end method

.method public initVideoButton()V
    .locals 2

    .prologue
    .line 910
    const v0, 0x7f100581

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 913
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateVideoButton()V

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    return-void
.end method

.method public initVideoPanel()V
    .locals 2

    .prologue
    .line 602
    const v0, 0x7f10058d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanel:Landroid/widget/LinearLayout;

    .line 604
    const v0, 0x7f10058e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 606
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 610
    :cond_1
    const v0, 0x7f10058f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    .line 611
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 613
    const v0, 0x7f100590

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$15;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$15;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$16;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$16;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$17;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$17;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    return-void
.end method

.method public isMirrorOpen()Z
    .locals 5

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_mirror"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSupplyOpen()Z
    .locals 5

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_supply"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 388
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSupplyButton()V

    .line 392
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSizeButton()V

    .line 393
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initVideoButton()V

    .line 395
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSupplyPanel()V

    .line 397
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSizePanel()V

    .line 398
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initVideoPanel()V

    .line 402
    new-instance v0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$10;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 420
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 425
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const v5, 0x7f050041

    const v4, 0x7f05003f

    const-wide/16 v2, 0x64

    .line 163
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 164
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const v0, 0x7f100587

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    .line 167
    const v0, 0x7f10058c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    .line 170
    const v0, 0x7f100582

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    .line 173
    const v0, 0x7f10057e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingPanelContent:Landroid/widget/LinearLayout;

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeInAnimation:Landroid/view/animation/Animation;

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 197
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getVideoLowImage()V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$2;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$3;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$4;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$5;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$6;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$7;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$8;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontSettingPanel$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel$9;-><init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 379
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 157
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 159
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1148
    rsub-int v1, p1, 0x168

    int-to-float v0, v1

    .line 1149
    .local v0, "rotation":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1150
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1151
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1153
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1154
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1155
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1157
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1158
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1159
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1161
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplySwitchButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1162
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPinkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1163
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyOrangeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 1164
    return-void
.end method

.method public setParent(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    .line 1080
    return-void
.end method

.method public showSizePanel()V
    .locals 9

    .prologue
    const v8, 0x7f0205e9

    const v7, 0x7f0205e7

    const v6, 0x7f0205e5

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 557
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateVideoButton()V

    .line 559
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v1, v6, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 582
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 585
    return-void

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v1, v8, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_2
    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v1, v7, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public showSupplyPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 987
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 991
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateVideoButton()V

    .line 993
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSizeButton()V

    .line 995
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 996
    return-void
.end method

.method public showVideoPanel()V
    .locals 9

    .prologue
    const v8, 0x7f020171

    const v7, 0x7f02016e

    const v6, 0x7f02016d

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 937
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSizeButton()V

    .line 939
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizePanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 940
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyPanelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 943
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_video"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "value1":Ljava/lang/String;
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId_hi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 948
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId_hi:I

    const-string v3, "#25c6ff"

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v1, v8, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v1, v6, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 965
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 966
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 967
    return-void

    .line 951
    :cond_1
    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 954
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    const-string v3, "#FFFFFF"

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    const v2, 0x7f020172

    const-string v3, "#25c6ff"

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v1, v6, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_2
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 960
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoLowId:I

    const-string v3, "#FFFFFF"

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v1, v8, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v1, v7, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->changeButtonUIWithClickable(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startAni()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingPanelContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontSettingFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    return-void
.end method
