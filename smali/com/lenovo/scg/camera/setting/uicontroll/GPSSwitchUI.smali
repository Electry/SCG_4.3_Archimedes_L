.class public Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "GPSSwitchUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPSSwitchUI"


# instance fields
.field private gpsOffRadioButton:Landroid/widget/RadioButton;

.field private gpsOffTextView:Landroid/widget/TextView;

.field private gpsOnRadioButton:Landroid/widget/RadioButton;

.field private gpsOnTextView:Landroid/widget/TextView;

.field private mLittleAutoWheelGPSTextViewLayout:Landroid/widget/RelativeLayout;

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

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 50
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 51
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 53
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 55
    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mLittleAutoWheelGPSTextViewLayout:Landroid/widget/RelativeLayout;

    .line 57
    const v1, 0x7f1001a7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    .line 58
    const v1, 0x7f1001a9

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const v1, 0x7f100245

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnTextView:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->rotateView(Landroid/view/View;)V

    .line 72
    const v1, 0x7f100246

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffTextView:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->rotateView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 80
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 81
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 154
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 155
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    :pswitch_0
    return-object v0

    .line 157
    :pswitch_1
    const v1, 0x7f02003f

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 158
    const v1, 0x7f0f04e2

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 163
    :pswitch_2
    const v1, 0x7f02003e

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 164
    const v1, 0x7f0f04e1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001a7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 147
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 1
    .param p1, "radioButtonID"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 187
    :pswitch_0
    const-string/jumbo v0, "on"

    :goto_0
    return-object v0

    .line 180
    :pswitch_1
    const-string/jumbo v0, "on"

    goto :goto_0

    .line 184
    :pswitch_2
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001a7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 124
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_location_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "GPSSwitchUI"

    const-string/jumbo v6, "onCheckedChanged()================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 130
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 137
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 139
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .end local v4    # "mSettingValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "onOrOff"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void

    .line 99
    :cond_1
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->gpsOffRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 1
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const v0, 0x7f0204c6

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const v0, 0x7f0204c3

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_location_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "mPicSize":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->selectRadioButton(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->updatePopViewNameVisibility(I)V

    .line 89
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->mLittleAutoWheelGPSTextViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    return-void
.end method
