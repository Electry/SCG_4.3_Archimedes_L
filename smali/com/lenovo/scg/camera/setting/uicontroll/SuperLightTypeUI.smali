.class public Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "SuperLightTypeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI$VIDEO_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePicTypePopViewUI"

.field public static final VIDEO_HDR:Ljava/lang/String; = "hdr"

.field public static final VIDEO_NORMAL:Ljava/lang/String; = "normal"

.field public static final VIDEO_RAPID:Ljava/lang/String; = "rapid"

.field public static final VIDEO_SLOW:Ljava/lang/String; = "slow"


# instance fields
.field private mHDRTv:Landroid/widget/TextView;

.field private mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

.field private mNormalTv:Landroid/widget/TextView;

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

.field private mSuperLightOFF:Landroid/widget/RadioButton;

.field private mSuperLightON:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 4
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    const v2, 0x7f100286

    const v3, 0x7f100266

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 55
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 56
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 58
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 60
    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    .line 62
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    .line 63
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mNormalTv:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mNormalTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->rotateView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mHDRTv:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mHDRTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->rotateView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 86
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 87
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 176
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    :pswitch_0
    return-object v0

    .line 178
    :pswitch_1
    const v1, 0x7f020043

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 179
    const v1, 0x7f0f00cb

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 183
    :pswitch_2
    const v1, 0x7f02004c

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 184
    const v1, 0x7f0f00ca

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 188
    :pswitch_3
    const v1, 0x7f020049

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 189
    const v1, 0x7f0f00c9

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x7f100286
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 167
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 215
    const-string v0, "getFlashValue"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string/jumbo v0, "normal"

    :goto_0
    return-object v0

    .line 204
    :sswitch_0
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 208
    :sswitch_1
    const-string/jumbo v0, "rapid"

    goto :goto_0

    .line 212
    :sswitch_2
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x7f100266 -> :sswitch_0
        0x7f100288 -> :sswitch_1
        0x7f100289 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 114
    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 117
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_video_type_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v5, "TakePicTypePopViewUI"

    const-string/jumbo v6, "onCheckedChanged()================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 123
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 126
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 130
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 132
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .end local v4    # "mSettingValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "takePicType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void

    .line 142
    :cond_1
    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 148
    :cond_3
    const-string/jumbo v0, "rapid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 151
    :cond_4
    const-string/jumbo v0, "slow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightON:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSuperLightOFF:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 0
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 227
    return-void
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v1, v2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "type":Ljava/lang/String;
    const-string v1, "mPicTypePopView.selectRadioButton(type)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pictype :        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->updatePopViewNameVisibility(I)V

    .line 97
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SuperLightTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    return-void
.end method
