.class public Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;
.super Ljava/lang/Object;
.source "AutoSettingCommentsUI.java"


# instance fields
.field private littleCommon:Landroid/widget/TextView;

.field private mAutoSettingImg:Landroid/widget/ImageView;

.field private mAutoSettingName:Landroid/widget/TextView;

.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mSettingNameComment:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "mActivity"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p2, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 41
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->initView()V

    .line 43
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f10026a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f10026c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f100270

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f10026f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    .line 398
    :cond_3
    return-void
.end method

.method private showAboutComm()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v1, 0x7f0f05fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5173\u4e8e\u8bf4\u660e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    return-void
.end method

.method private showAutoSmartComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f0048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_smart_auto_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "mSmartString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showFlashComm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v3, 0x7f0f00df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_flash_key"

    const-string v4, "auto"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "flashMode":Ljava/lang/String;
    const v1, 0x7f0f0516

    .line 67
    .local v1, "stringID":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const v1, 0x7f0f0516

    .line 72
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    return-void

    .line 73
    :cond_0
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const v1, 0x7f0f0517

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const v1, 0x7f0f0518

    .line 78
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :cond_2
    const v1, 0x7f0f0519

    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f02003d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showGPSComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f00e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_location_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "mShutterString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showPicSizeComm()V
    .locals 6

    .prologue
    const v5, 0x7f020046

    const/4 v4, 0x0

    .line 186
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v3, 0x7f0f00d5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_square_pic_key"

    const-string/jumbo v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "squarePic":Ljava/lang/String;
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const-string v3, "1:1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f020045

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_picture_size_key"

    const-string v4, "16x9"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "mPicSizeString":Ljava/lang/String;
    const-string v2, "16x9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const-string v3, "16:9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 206
    :cond_1
    const-string v2, "4x3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const-string v3, "4:3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showShutterSoundComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_shutter_voice_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "mShutterString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showTakePicTypeComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f00d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_takepicture_type_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "mTakePicType":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00f4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00f2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 138
    :cond_4
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showTimePrinCommt()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_time_print_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "mShutterString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f04e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showVideoSizeTypeComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f00cc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_quality_key"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "mTakePicType":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 300
    :cond_2
    const-string v1, "7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 303
    :cond_3
    const-string v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01e0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 306
    :cond_4
    const-string v1, "21"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 309
    :cond_5
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showVideoTypeComm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingNameComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingName:Landroid/widget/TextView;

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "videoType":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00cb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f01fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 161
    :cond_2
    const-string/jumbo v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 164
    :cond_3
    const-string/jumbo v1, "rapid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 167
    :cond_4
    const-string/jumbo v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateAutoName(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 2
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showTakePicTypeComm()V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_ABOUT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showAboutComm()V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showFlashComm()V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showPicSizeComm()V

    goto :goto_0

    .line 360
    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_5

    .line 361
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showTimePrinCommt()V

    goto :goto_0

    .line 363
    :cond_5
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_6

    .line 364
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showShutterSoundComm()V

    goto :goto_0

    .line 366
    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_7

    .line 367
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showAutoSmartComm()V

    goto :goto_0

    .line 368
    :cond_7
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SUPER_LIGHT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-eq v0, v1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_8

    .line 371
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showVideoTypeComm()V

    goto :goto_0

    .line 372
    :cond_8
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_9

    .line 373
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showVideoSizeTypeComm()V

    goto :goto_0

    .line 374
    :cond_9
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v0, v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->showGPSComm()V

    goto :goto_0
.end method

.method public updateCommon(II)V
    .locals 1
    .param p1, "iconID"    # I
    .param p2, "commonID"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->mAutoSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->littleCommon:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    return-void
.end method
