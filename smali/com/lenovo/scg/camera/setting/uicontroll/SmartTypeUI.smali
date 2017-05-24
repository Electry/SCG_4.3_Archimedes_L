.class public Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "SmartTypeUI.java"


# static fields
.field public static final SETTINGOFF_STRING:Ljava/lang/String; = "off"

.field public static final SETTINGON_STRING:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "SmartTypeUI"


# instance fields
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

.field private mSettingItemNameLayout:Landroid/widget/RelativeLayout;

.field private mSmartOffRadionButton:Landroid/widget/RadioButton;

.field private mSmartOffTV:Landroid/widget/TextView;

.field private mSmartOnRadioButton:Landroid/widget/RadioButton;

.field private mSmartOnTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 45
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 46
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 49
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 51
    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingItemNameLayout:Landroid/widget/RelativeLayout;

    .line 53
    const v1, 0x7f1001b2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    .line 54
    const v1, 0x7f1001b3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnTV:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->rotateView(Landroid/view/View;)V

    .line 68
    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffTV:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->rotateView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 76
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 77
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 188
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    const v1, 0x7f02004b

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 191
    const v1, 0x7f0f04e2

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 196
    :pswitch_1
    const v1, 0x7f02004a

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 197
    const v1, 0x7f0f04e1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001b2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 180
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 1
    .param p1, "radioButtonID"    # I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 218
    const-string/jumbo v0, "on"

    :goto_0
    return-object v0

    .line 212
    :pswitch_0
    const-string/jumbo v0, "on"

    goto :goto_0

    .line 215
    :pswitch_1
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001b2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 104
    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 106
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_smart_auto_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 111
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 112
    const-string v5, "SmartTypeUI"

    const-string/jumbo v6, "onCheckedChanged()  setChecked(false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 119
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 121
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .end local v4    # "mSettingValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 8
    .param p1, "takePicType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    const-string/jumbo v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "flash":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "torch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 172
    :goto_1
    return-void

    .line 136
    .end local v0    # "flash":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 159
    .restart local v0    # "flash":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnTV:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffTV:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOnRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSmartOffRadionButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_1
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 1
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const v0, 0x7f0204de

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const v0, 0x7f0204e1

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v1, v2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_smart_auto_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->updatePopViewNameVisibility(I)V

    .line 87
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->mSettingItemNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    return-void
.end method
