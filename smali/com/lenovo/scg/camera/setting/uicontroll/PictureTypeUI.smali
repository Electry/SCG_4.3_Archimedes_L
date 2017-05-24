.class public Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "PictureTypeUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePicTypePopViewUI"


# instance fields
.field private mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

.field private mNormal:Landroid/widget/RadioButton;

.field private mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

.field private mPicTypeNormalTv:Landroid/widget/TextView;

.field private mPicTypeSmileTv:Landroid/widget/TextView;

.field private mPicTypeTimeTv:Landroid/widget/TextView;

.field private mPicTypeTouchTv:Landroid/widget/TextView;

.field private mPicTypeVoiceTv:Landroid/widget/TextView;

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

.field private mSmile:Landroid/widget/RadioButton;

.field private mTiming:Landroid/widget/RadioButton;

.field private mTouch:Landroid/widget/RadioButton;

.field private mVoice:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 6
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    const/high16 v5, 0x41400000    # 12.0f

    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 50
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 51
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    .line 53
    .local v1, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v1, :cond_0

    .line 55
    const v2, 0x7f10025a

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    .line 57
    const v2, 0x7f100277

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    .line 58
    const v2, 0x7f100276

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    .line 59
    const v2, 0x7f100272

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    .line 60
    const v2, 0x7f100275

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    .line 61
    const v2, 0x7f100273

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    const v2, 0x7f10025e

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeVoiceTv:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeVoiceTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->rotateView(Landroid/view/View;)V

    .line 82
    const v2, 0x7f10025d

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTimeTv:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTimeTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->rotateView(Landroid/view/View;)V

    .line 85
    const v2, 0x7f10025f

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeSmileTv:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeSmileTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->rotateView(Landroid/view/View;)V

    .line 88
    const v2, 0x7f10025c

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTouchTv:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTouchTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->rotateView(Landroid/view/View;)V

    .line 91
    const v2, 0x7f10025b

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeNormalTv:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeNormalTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->rotateView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "country":Ljava/lang/String;
    const-string v2, "TakePicTypePopViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "EN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeNormalTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeVoiceTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeSmileTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mPicTypeTouchTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    :cond_1
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


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 269
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 270
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    return-object v0

    .line 272
    :pswitch_1
    const v1, 0x7f02004d

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 273
    const v1, 0x7f0f00f5

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 278
    :pswitch_2
    const v1, 0x7f02004e

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 279
    const v1, 0x7f0f00f3

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 284
    :pswitch_3
    const v1, 0x7f020050

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 285
    const v1, 0x7f0f00f2

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 290
    :pswitch_4
    const v1, 0x7f020051

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 291
    const v1, 0x7f0f00f4

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 295
    :pswitch_5
    const v1, 0x7f02004f

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 296
    const v1, 0x7f0f00f1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x7f100272
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 263
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 332
    :pswitch_0
    const-string v0, "getFlashValue"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 309
    :pswitch_1
    const-string v0, "getFlashValue"

    const-string v1, "cs_takepic_type_normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "0"

    goto :goto_0

    .line 314
    :pswitch_2
    const-string v0, "getFlashValue"

    const-string v1, "cs_takepic_type_smile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "4"

    goto :goto_0

    .line 319
    :pswitch_3
    const-string v0, "getFlashValue"

    const-string v1, "cs_takepic_type_timing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v0, "2"

    goto :goto_0

    .line 324
    :pswitch_4
    const-string v0, "getFlashValue"

    const-string v1, "cs_takepic_type_touch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, "1"

    goto :goto_0

    .line 328
    :pswitch_5
    const-string v0, "getFlashValue"

    const-string v1, "cs_takepic_type_voice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "3"

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x7f100272
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 138
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 140
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_takepicture_type_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->shwoTipsAfterSettingUiRemove(I)V

    .line 145
    const-string v5, "TakePicTypePopViewUI"

    const-string/jumbo v6, "onCheckedChanged()================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 148
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 149
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 155
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 157
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

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 208
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    return-void

    .line 183
    :cond_1
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 201
    :cond_4
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTouch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSmile:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mTiming:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mVoice:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 3
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    .local v0, "takePicType":I
    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 353
    :pswitch_0
    const v1, 0x7f0204e4

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 354
    const-string/jumbo v1, "switch (takePicType)"

    const-string v2, "cs_lw_takepic_type_normal_selector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :pswitch_1
    const v1, 0x7f0204e7

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 360
    const-string/jumbo v1, "switch (takePicType)"

    const-string v2, "cs_lw_takepic_type_smile_selector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :pswitch_2
    const v1, 0x7f0204ea

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 366
    const-string/jumbo v1, "switch (takePicType)"

    const-string v2, "cs_lw_takepic_type_timing_selector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :pswitch_3
    const v1, 0x7f0204ed

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 372
    const-string/jumbo v1, "switch (takePicType)"

    const-string v2, "cs_lw_takepic_type_touch_selector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :pswitch_4
    const v1, 0x7f0204f0

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 378
    const-string/jumbo v1, "switch (takePicType)"

    const-string v2, "cs_lw_takepic_type_voice_selector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v1, v2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_takepicture_type_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
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

    .line 119
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->updatePopViewNameVisibility(I)V

    .line 122
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    return-void
.end method
