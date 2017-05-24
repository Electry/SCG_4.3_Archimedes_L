.class public Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;
.super Ljava/lang/Object;
.source "AutoCameraDisplay.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# instance fields
.field private mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mContext:Landroid/content/Context;

.field private mDisableSmartRoot:Landroid/widget/RelativeLayout;

.field private mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mIsChangeFlashView:Z

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mIsChangeFlashView:Z

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    .line 46
    return-void
.end method

.method private hideCaptureModeView()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method private hideDisableSmartButton()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    .line 306
    :cond_0
    return-void
.end method

.method private hideFlashView()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method

.method private hideSmartView()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method private hideVideoModeView()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 49
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040023

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1000f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    .line 52
    const v2, 0x7f1000f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 53
    const v2, 0x7f1000f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 54
    const v2, 0x7f1000f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 55
    const v2, 0x7f1000fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 57
    return-void
.end method

.method private initCaptureModeDrawable()V
    .locals 6

    .prologue
    .line 264
    const-string v2, "jiaxiaowei"

    const-string v3, "initCaptureModeDrawable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_takepicture_type_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0004

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "key":I
    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 272
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideCaptureModeView()V

    goto :goto_0

    .line 276
    :pswitch_1
    const v2, 0x7f0201d8

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showCaptureModeView(I)V

    goto :goto_0

    .line 279
    :pswitch_2
    const v2, 0x7f0201d7

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showCaptureModeView(I)V

    goto :goto_0

    .line 282
    :pswitch_3
    const v2, 0x7f0201d9

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showCaptureModeView(I)V

    goto :goto_0

    .line 285
    :pswitch_4
    const v2, 0x7f0201d6

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showCaptureModeView(I)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initFlashDrawable()V
    .locals 6

    .prologue
    const v5, 0x7f02036a

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "value":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideFlashView()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mIsChangeFlashView:Z

    if-eqz v1, :cond_2

    .line 221
    const v1, 0x7f02036d

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showFlashView(I)V

    .line 222
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showDisableSmartButton()V

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideFlashView()V

    .line 225
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideDisableSmartButton()V

    goto :goto_0

    .line 227
    :cond_3
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mIsChangeFlashView:Z

    if-eqz v1, :cond_4

    .line 229
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showFlashView(I)V

    .line 230
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideDisableSmartButton()V

    goto :goto_0

    .line 235
    :cond_4
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showFlashView(I)V

    .line 238
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideDisableSmartButton()V

    goto :goto_0

    .line 240
    :cond_5
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const v1, 0x7f02036c

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showFlashView(I)V

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideDisableSmartButton()V

    goto :goto_0
.end method

.method private initSmartDrawable()V
    .locals 6

    .prologue
    .line 197
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_smart_auto_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideSmartView()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_flash_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    const v5, 0x7f0f000f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "flashValue":Ljava/lang/String;
    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideSmartView()V

    goto :goto_0

    .line 207
    :cond_2
    const v2, 0x7f020037

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showSmartView(I)V

    goto :goto_0
.end method

.method private initVideoDrawable()V
    .locals 5

    .prologue
    .line 247
    const-string v1, "jiaxiaowei"

    const-string v2, "initVideoDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    const v4, 0x7f0f001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideVideoModeView()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string/jumbo v1, "rapid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const v1, 0x7f0203f5

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showVideoModeView(I)V

    goto :goto_0

    .line 256
    :cond_2
    const-string/jumbo v1, "slow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    const v1, 0x7f0203f7

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showVideoModeView(I)V

    goto :goto_0

    .line 258
    :cond_3
    const-string v1, "live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const v1, 0x7f0203f3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->showVideoModeView(I)V

    goto :goto_0
.end method

.method private showCaptureModeView(I)V
    .locals 2
    .param p1, "drawable"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method

.method private showDisableSmartButton()V
    .locals 5

    .prologue
    .line 293
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 295
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040024

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mDisableSmartRoot:Landroid/widget/RelativeLayout;

    .line 298
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showFlashView(I)V
    .locals 2
    .param p1, "drawable"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method

.method private showSmartView(I)V
    .locals 2
    .param p1, "drawable"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 144
    :cond_0
    return-void
.end method

.method private showVideoModeView(I)V
    .locals 2
    .param p1, "drawable"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hideDisableSmartButton()V

    .line 194
    return-void
.end method

.method public setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 310
    return-void
.end method

.method public setIsChangeFlashMode(Z)V
    .locals 0
    .param p1, "isChangeFlashMode"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mIsChangeFlashView:Z

    .line 314
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x1

    .line 73
    if-gez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 156
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->init()V

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->initSmartDrawable()V

    .line 167
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->initFlashDrawable()V

    .line 168
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->initVideoDrawable()V

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->initCaptureModeDrawable()V

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mSmartView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mFlashView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mVideoModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mCaptureModeView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 7

    .prologue
    .line 60
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mParentView:Landroid/view/ViewGroup;

    const v5, 0x7f100146

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 61
    .local v2, "batteryStorageLayout":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 62
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    .local v1, "batteryParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 65
    .local v0, "batteryHeight":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09031d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 67
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0    # "batteryHeight":I
    .end local v1    # "batteryParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method
