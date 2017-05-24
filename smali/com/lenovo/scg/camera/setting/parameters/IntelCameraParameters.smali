.class public Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;
.super Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.source "IntelCameraParameters.java"


# instance fields
.field private MaxBrightness:I

.field private MaxContrast:I

.field private MaxSaturation:I

.field private MaxSharpness:I

.field private MinBrightness:I

.field private MinContrast:I

.field private MinSaturation:I

.field private MinSharpness:I

.field private intelclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public mIntelCamera:Ljava/lang/Object;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    .line 28
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxBrightness:I

    .line 30
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinBrightness:I

    .line 32
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxContrast:I

    .line 34
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinContrast:I

    .line 36
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSaturation:I

    .line 38
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSaturation:I

    .line 40
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSharpness:I

    .line 42
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSharpness:I

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 51
    return-void
.end method

.method private initIntelCamera()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->initIntelClass()V

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->initIntelPreferences()V

    .line 124
    return-void
.end method

.method private initIntelClass()V
    .locals 8

    .prologue
    .line 94
    :try_start_0
    const-string v2, "com.intel.camera.extensions.IntelCamera"

    .line 96
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    .line 104
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 109
    .local v1, "camera":Landroid/hardware/Camera;
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 111
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    .line 112
    const-string v4, "TAG"

    const-string v5, "---------------initIntelCamera ---- "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "className":Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initIntelCamera -------e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIntelPreferences()V
    .locals 8

    .prologue
    .line 129
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v3

    .line 130
    .local v3, "mPreferenceGroup":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    if-nez v3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getSupportedMeteringModes"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 132
    .local v1, "intelParametersSupportedMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ---initIntelPreferences----getParameters &&&&& intelParametersSupportedMetering = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v5, "camera_setting_ce_guang_key"

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v4

    .line 139
    .local v4, "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    invoke-virtual {p0, v3, v4, v1}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 142
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMaxBrightnessValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxBrightness:I

    .line 143
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera -------initIntelPreferences    MaxBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMinBrightnessValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinBrightness:I

    .line 145
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MinBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMaxContrastValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxContrast:I

    .line 149
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MaxContrast = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxContrast:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMinContrastValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinContrast:I

    .line 151
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MinContrast = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinContrast:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMaxSaturationValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSaturation:I

    .line 155
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MaxSaturation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSaturation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMinSaturationValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSaturation:I

    .line 157
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MinSaturation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSaturation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMaxSharpnessValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSharpness:I

    .line 161
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MaxSharpness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSharpness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getMinSharpnessValue"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSharpness:I

    .line 163
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ------initIntelPreferences-  MinSharpness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSharpness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v7, "getSupportedISO"

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    .local v0, "intelParametersSupportedISO":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera ---initIntelPreferences----getParameters &&&&& intelParametersSupportedISO = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v5, "pref_camera_isovalue_key"

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    .line 176
    .local v2, "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getIntelSupportedIso(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v5}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private updateIntelCameraParamters()V
    .locals 9

    .prologue
    .line 247
    const-string v5, "TAG"

    const-string v6, "---------------updateIntelCameraParamters ---- "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->initIntelClass()V

    .line 251
    :cond_1
    const-string v5, "TAG"

    const-string v6, "---------------updateIntelCameraParamters ----return  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v5, "TAG"

    const-string v6, "initIntelCamera ---3333----getParameters &&&&& parameters = "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    .line 257
    .local v2, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-nez v2, :cond_2

    .line 333
    .end local v2    # "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    :goto_0
    return-void

    .line 260
    .restart local v2    # "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setGbceState"

    const-string/jumbo v8, "true"

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setGbceStrength"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readBrightnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 267
    .local v4, "paramtersPreferences":Ljava/lang/Integer;
    iget v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinBrightness:I

    iget v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinBrightness:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxBrightness:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "paramtersPreferences":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 270
    .restart local v4    # "paramtersPreferences":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setBrightness"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readContrastFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 274
    iget v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinContrast:I

    iget v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinContrast:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxContrast:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "paramtersPreferences":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 277
    .restart local v4    # "paramtersPreferences":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setContrast"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSaturationFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 281
    iget v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSaturation:I

    iget v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSaturation:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSaturation:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "paramtersPreferences":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 284
    .restart local v4    # "paramtersPreferences":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setSaturation"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSharpnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 288
    iget v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSharpness:I

    iget v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MinSharpness:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->MaxSharpness:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "paramtersPreferences":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 291
    .restart local v4    # "paramtersPreferences":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setSharpness"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v5, "camera_setting_ce_guang_key"

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f05c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "metering":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readIsoFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "iso":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iso-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "paramtersPreferences":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setISO"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string/jumbo v7, "setParameters"

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v5, "TAG"

    const-string v6, "---------------updateIntelCameraParamters ----end  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    .end local v1    # "iso":Ljava/lang/String;
    .end local v2    # "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .end local v3    # "metering":Ljava/lang/String;
    .end local v4    # "paramtersPreferences":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initIntelCamera -------e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultMetering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntelParameters()V
    .locals 13

    .prologue
    .line 205
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getGbceState"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, "intelParametersGbceState":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersGbceState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getSupportedGbceState"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 210
    .local v8, "intelParametersSupportedGbceState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersSupportedGbceState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getGbceStrength"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 214
    .local v3, "intelParametersGbceStrength":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersGbceStrength = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getSupportedGbceStrength"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 218
    .local v9, "intelParametersSupportedGbceStrength":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersSupportedGbceStrength = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getISOMode"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 222
    .local v5, "intelParametersIsoMode":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersgetISOMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getISO"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "intelParametersIso":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersIso = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getBrightness"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "intelParametersBrightness":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersBrightness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getContrast"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "intelParametersContrast":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersContrast = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getSaturation"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 238
    .local v6, "intelParametersSaturation":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersSaturation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->intelclass:Ljava/lang/Class;

    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->mIntelCamera:Ljava/lang/Object;

    const-string v12, "getSharpness"

    invoke-virtual {p0, v10, v11, v12}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 242
    .local v7, "intelParametersSharpness":Ljava/lang/Object;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initIntelCamera -------getIntelParameters &&&&& intelParametersSharpness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public getIntelSupportedIso(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "intelParametersSupportedISO":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v4, "isoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 185
    .local v2, "isAddAuto":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .local v3, "iso":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 187
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 188
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "value":Ljava/lang/String;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initIntelCamera ---initIntelPreferences----getSupportedIso isovalue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 191
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v1    # "index":I
    .end local v3    # "iso":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    const-string v6, "auto"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    return-object v4
.end method

.method public getSupportISOValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportVideoQuality(I)Ljava/util/List;
    .locals 1
    .param p1, "cameraID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportWhiteBlance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public initProSettingExpandUIDependSupportedParameters()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;->initIntelPreferences()V

    .line 89
    return-void
.end method

.method public updateParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
