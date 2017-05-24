.class public Lcom/lenovo/scg/camera/mode/LandScapeMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "LandScapeMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LandScapeMode"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

.field private mOriSaturation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    .line 23
    return-void
.end method

.method private restoreSaturation()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 115
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "LandScapeMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreSaturation, mOriSaturation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mOriSaturation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mOriSaturation:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 118
    return-void
.end method

.method private setSaturation()V
    .locals 7

    .prologue
    .line 95
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 96
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    .local v1, "saturation":I
    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 98
    .local v3, "saturationStep":I
    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    .local v2, "saturationMax":I
    const-string v4, "LandScapeMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSaturation, saturation11 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", saturationStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", saturationMax = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput v1, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mOriSaturation:I

    .line 102
    add-int/2addr v1, v3

    .line 103
    if-le v1, v2, :cond_0

    .line 104
    const-string v4, "LandScapeMode"

    const-string v5, "enter, saturation > max, set to max!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move v1, v2

    .line 107
    :cond_0
    const-string v4, "LandScapeMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSaturation, saturation22 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 110
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    check-cast v4, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 111
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 80
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/LandScapeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;

    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LandScapeMode;->setSaturation()V

    .line 32
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LandScapeMode;->restoreSaturation()V

    .line 41
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 43
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 85
    return-void
.end method
