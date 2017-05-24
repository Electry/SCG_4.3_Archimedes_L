.class public Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "FlashTypeUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashPopViewUI"


# instance fields
.field private mButtonAuto:Landroid/widget/RadioButton;

.field private mButtonOff:Landroid/widget/RadioButton;

.field private mButtonOn:Landroid/widget/RadioButton;

.field private mButtonTorch:Landroid/widget/RadioButton;

.field mCurrentSmart:Ljava/lang/String;

.field private mFlashAutoTv:Landroid/widget/TextView;

.field private mFlashOffTv:Landroid/widget/TextView;

.field private mFlashOnTv:Landroid/widget/TextView;

.field private mFlashTorchTv:Landroid/widget/TextView;

.field private mLittleAutoWheelTV:Landroid/widget/RelativeLayout;

.field private mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

.field private mRadioButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    .line 116
    const-string/jumbo v1, "on"

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 50
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 52
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 53
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 55
    if-eqz v0, :cond_0

    .line 57
    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mLittleAutoWheelTV:Landroid/widget/RelativeLayout;

    .line 59
    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    .line 60
    const v1, 0x7f100220

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    .line 61
    const v1, 0x7f10021f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    .line 62
    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashAutoTv:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashAutoTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->rotateView(Landroid/view/View;)V

    .line 80
    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashTorchTv:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashTorchTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->rotateView(Landroid/view/View;)V

    .line 83
    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashOnTv:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashOnTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->rotateView(Landroid/view/View;)V

    .line 86
    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashOffTv:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mFlashOffTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->rotateView(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 111
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 112
    return-void
.end method

.method private showTipsToast()V
    .locals 6

    .prologue
    const/16 v5, 0x10e

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "sMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 314
    :cond_0
    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v2, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 316
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 317
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 234
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 235
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    return-object v0

    .line 237
    :pswitch_1
    const v1, 0x7f02003c

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 238
    const v1, 0x7f0f0517

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 242
    :pswitch_2
    const v1, 0x7f02003b

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 243
    const v1, 0x7f0f04e1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 247
    :pswitch_3
    const v1, 0x7f02003a

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 248
    const v1, 0x7f0f0516

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 252
    :pswitch_4
    const v1, 0x7f02003d

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 253
    const v1, 0x7f0f0519

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f10021f
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 228
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 1
    .param p1, "radioButtonID"    # I

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 286
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 268
    :pswitch_1
    const-string/jumbo v0, "on"

    goto :goto_0

    .line 273
    :pswitch_2
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 278
    :pswitch_3
    const-string v0, "auto"

    goto :goto_0

    .line 283
    :pswitch_4
    const-string/jumbo v0, "torch"

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x7f10021f
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isRecordSmart()Z
    .locals 3

    .prologue
    .line 173
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_change_auto_smart_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, "isRecord":Z
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x1

    .line 123
    sget-boolean v5, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    .line 127
    const-string/jumbo v5, "off"

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->showTipsToast()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 136
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "mSettingValue":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "torch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->isRecordSmart()Z

    move-result v5

    if-nez v5, :cond_3

    .line 141
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    const-string v6, "camera_setting_smart_auto_key"

    const-string/jumbo v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_smart_auto_key"

    const-string/jumbo v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->recordSmart()V

    .line 147
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSmart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-----------save"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 156
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_flash_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "FlashPopViewUI"

    const-string/jumbo v6, "onCheckedChanged()================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 160
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 161
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_4

    .line 162
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 164
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 149
    .end local v1    # "i":I
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->isRecordSmart()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 150
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_smart_auto_key"

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->unRecordSmart()V

    .line 153
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSmart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mCurrentSmart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-----------rstore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_1

    .line 167
    .restart local v1    # "i":I
    :cond_7
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 168
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    goto/16 :goto_0
.end method

.method public recordSmart()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_flash_change_auto_smart_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "falshType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    return-void

    .line 200
    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 205
    :cond_2
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 210
    :cond_3
    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonAuto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mButtonTorch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 1
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const v0, 0x7f0204b7

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const v0, 0x7f0204bd

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 299
    :cond_2
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const v0, 0x7f0204ba

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 301
    :cond_3
    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const v0, 0x7f0204c0

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0
.end method

.method public unRecordSmart()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_flash_change_auto_smart_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->updatePopViewNameVisibility(I)V

    .line 107
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->mLittleAutoWheelTV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    return-void
.end method
