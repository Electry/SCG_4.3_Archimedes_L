.class public Lcom/lenovo/scg/camera/setting/SettingExecuter;
.super Ljava/lang/Object;
.source "SettingExecuter.java"


# static fields
.field private static final MSG_UPDATE_SCREEN_BRIGHTNESS:I = 0x1000

.field private static final MSG_UPDATE_SCREEN_BRIGHTNESS_CURRENT:I = 0x3000

.field private static final MSG_UPDATE_SCREEN_BRIGHTNESS_MAX:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "SettingExcuter"


# instance fields
.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mScreenBrightness:F

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mSettingExcuterHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/SettingExecuter$1;-><init>(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingExcuterHandler:Landroid/os/Handler;

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/SettingExecuter;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness2Max()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/SettingExecuter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/SettingExecuter;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness2Current()V

    return-void
.end method

.method private getScreenBrightness()I
    .locals 6

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "currentBrightnessValue":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 217
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 218
    const-string v3, "SettingExcuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenBrightness currentBrightnessValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readSystemBrightness()F
    .locals 5

    .prologue
    .line 171
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getmContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v0, -0x1

    .line 174
    .local v0, "bright":I
    :try_start_0
    const-string/jumbo v3, "screen_brightness"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :goto_0
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    return v3

    .line 175
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setAntibanding(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 244
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingExecuter->setAntibanding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method private setFlashMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method private updateMetering(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Metering:]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateScreenBrightness2Current()V
    .locals 4

    .prologue
    .line 183
    const-string v1, "SettingExcuter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreenBrightness2Current, mScreenBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mScreenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mScreenBrightness:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    return-void
.end method

.method private updateScreenBrightness2Max()V
    .locals 3

    .prologue
    .line 198
    const-string v1, "SettingExcuter"

    const-string/jumbo v2, "updateScreenBrightness2Max"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 203
    return-void
.end method


# virtual methods
.method public changeSettingFinish()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 349
    return-void
.end method

.method public excuteUpdateScreenBrightness()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingExcuterHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public excuteUpdateScreenBrightness2Current()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingExcuterHandler:Landroid/os/Handler;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method

.method public excuteUpdateScreenBrightness2Max()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingExcuterHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method public prepareChangeSetting()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 345
    :cond_0
    return-void
.end method

.method public updateAntibanding()V
    .locals 5

    .prologue
    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isInProFuncton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_pin_shan_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f0019

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "mPinShan":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->setAntibanding(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 262
    .end local v0    # "mPinShan":Ljava/lang/String;
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v1, "auto"

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->setAntibanding(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public updateFlash()V
    .locals 5

    .prologue
    .line 283
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "mFlash":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->setFlashMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 286
    invoke-static {}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->getInstatnce()Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->setDevicesFlash(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public updateFlashByMode()V
    .locals 5

    .prologue
    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_mode_flash_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "mFlash":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->setFlashMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 299
    return-void
.end method

.method public updateImageCaptureIntentFlash()V
    .locals 5

    .prologue
    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_third_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "mFlash":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->setFlashMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 313
    return-void
.end method

.method public updateMetering()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "mDefaultString":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_ce_guang_key"

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "mSettingMetering":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateMetering(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public varargs updateScreenBrightness([I)V
    .locals 10
    .param p1, "value"    # [I

    .prologue
    const/4 v9, 0x1

    const v8, 0x3f6147ae    # 0.88f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x437f0000    # 255.0f

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_screen_bright_key"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "mode":Ljava/lang/String;
    const-string v3, "SettingExcuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScreenBrightness, mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string v1, "0"

    .line 131
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 134
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 135
    sget-boolean v3, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v3, :cond_2

    .line 136
    const-string/jumbo v3, "set_screen_brightness_for_cmcc_"

    invoke-static {v9, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->getCameraScreenBrightness()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 164
    :goto_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mScreenBrightness:F

    .line 165
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    const-string v3, "SettingExcuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCameraBrightness set  screenBrightness = test "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 123
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isInProFuncton()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const-string v1, "0"

    goto :goto_0

    .line 139
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const-string/jumbo v3, "set_screen_brightness_for_cmcc_not_not"

    invoke-static {v9, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 141
    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 143
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->readSystemBrightness()F

    move-result v2

    .line 147
    .local v2, "systemBrightness":F
    cmpg-float v3, v2, v7

    if-gez v3, :cond_4

    .line 148
    const-string v3, "SettingExcuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCameraBrightness set  screenBrightness = 0.5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->getCameraScreenBrightness()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v7

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    .line 150
    :cond_4
    cmpl-float v3, v2, v8

    if-lez v3, :cond_5

    .line 151
    const-string v3, "SettingExcuter"

    const-string/jumbo v4, "setCameraBrightness set  screenBrightness = 0.88 "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->getCameraScreenBrightness()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v8

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_1

    .line 154
    :cond_5
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_1

    .line 160
    .end local v2    # "systemBrightness":F
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->getScreenBrightness()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v4, 0x3b808081

    mul-float/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_1
.end method

.method public updateWatchBackSettingStatus()V
    .locals 5

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_watch_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingExecuter;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "mIsWatch":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->setCanWatchBack(Z)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
