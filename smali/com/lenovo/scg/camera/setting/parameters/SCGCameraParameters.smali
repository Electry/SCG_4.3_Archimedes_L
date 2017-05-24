.class public abstract Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.super Ljava/lang/Object;
.source "SCGCameraParameters.java"


# static fields
.field public static P_KEY_BRIGHTNESS:Ljava/lang/String; = null

.field public static P_KEY_BRIGHTNESS_STEP:Ljava/lang/String; = null

.field public static P_KEY_CONTRAST:Ljava/lang/String; = null

.field public static P_KEY_CONTRAST_STEP:Ljava/lang/String; = null

.field public static P_KEY_ISO:Ljava/lang/String; = null

.field public static P_KEY_MAX_BRIGHTNESS:Ljava/lang/String; = null

.field public static P_KEY_MAX_CONTRAST:Ljava/lang/String; = null

.field public static P_KEY_MAX_SATURATION:Ljava/lang/String; = null

.field public static P_KEY_MAX_SHARPNESS:Ljava/lang/String; = null

.field public static P_KEY_METERING:Ljava/lang/String; = null

.field public static P_KEY_MIN_BRIGHTNESS:Ljava/lang/String; = null

.field public static P_KEY_MIN_CONTRAST:Ljava/lang/String; = null

.field public static P_KEY_MIN_SATURATION:Ljava/lang/String; = null

.field public static P_KEY_MIN_SHARPNESS:Ljava/lang/String; = null

.field public static P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String; = null

.field public static P_KEY_QUALCOMM_SUPPORTED_METERING_MODE:Ljava/lang/String; = null

.field public static P_KEY_SATURATIONKEY:Ljava/lang/String; = null

.field public static P_KEY_SATURATION_STEP:Ljava/lang/String; = null

.field public static P_KEY_SHARPNESS:Ljava/lang/String; = null

.field public static P_KEY_SHARPNESS_STEP:Ljava/lang/String; = null

.field public static P_KEY_SUPPORTED_ISO:Ljava/lang/String; = null

.field public static P_KEY_SUPPORTED_METERING:Ljava/lang/String; = null

.field public static final SIZE_RATIO_16_9:Ljava/lang/String; = "16x9"

.field public static final SIZE_RATIO_4_3:Ljava/lang/String; = "4x3"


# instance fields
.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "metering-mode-values"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SUPPORTED_METERING:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "metering-mode"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    .line 43
    const-string v0, "auto-exposure-values"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_SUPPORTED_METERING_MODE:Ljava/lang/String;

    .line 44
    const-string v0, "auto-exposure"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "max-brightness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_BRIGHTNESS:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "min-brightness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_BRIGHTNESS:Ljava/lang/String;

    .line 54
    const-string v0, "brightness-step"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_BRIGHTNESS_STEP:Ljava/lang/String;

    .line 56
    const-string v0, "brightness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_BRIGHTNESS:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "max-contrast"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "min-contrast"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    .line 63
    const-string v0, "contrast-step"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST_STEP:Ljava/lang/String;

    .line 65
    const-string v0, "contrast"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "max-saturation"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "min-saturation"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "saturation-step"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "saturation"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "max-sharpness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "min-sharpness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "sharpness-step"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS_STEP:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "sharpness"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    .line 88
    const-string v0, "iso-values"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SUPPORTED_ISO:Ljava/lang/String;

    .line 93
    const-string v0, "iso"

    sput-object v0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 100
    return-void
.end method


# virtual methods
.method public commitParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public commitSmartModeParameters()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 132
    return-void
.end method

.method public filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V
    .locals 1
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraProSettingListPreferenceHelper()Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 305
    return-void
.end method

.method public getCameraContrastInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;-><init>()V

    .line 143
    .local v0, "mCameraContrastInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 144
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->setSupportContrast(Z)V

    .line 145
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->setCurContrast(I)V

    .line 146
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->setMaxContrast(I)V

    .line 147
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->setMinContrast(I)V

    .line 148
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST_STEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->setContrastStepSize(I)V

    .line 149
    return-object v0

    .line 144
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCameraSaturationInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;-><init>()V

    .line 179
    .local v0, "mCameraSaturationInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 180
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 188
    .end local v0    # "mCameraSaturationInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "mCameraSaturationInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->setSupportSaturation(Z)V

    .line 184
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->setCurSaturation(I)V

    .line 185
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->setMaxSaturation(I)V

    .line 186
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->setMinSaturation(I)V

    .line 187
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->setSaturationStepSize(I)V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getCameraSharpnessInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;-><init>()V

    .line 266
    .local v0, "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 267
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->setSupportSharpness(Z)V

    .line 268
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->setMaxSharpness(I)V

    .line 269
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->setMinSharpness(I)V

    .line 270
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS_STEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->setSharpnessStepSize(I)V

    .line 271
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->setCurrntSharpness(I)V

    .line 272
    return-object v0

    .line 267
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getDefFlashValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "defValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDefISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "auto"

    return-object v0
.end method

.method public abstract getDefaultMetering()Ljava/lang/String;
.end method

.method public abstract getDefaultParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p2, "mIntelCamera"    # Ljava/lang/Object;
    .param p3, "MethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "intelclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 372
    .local v2, "retObject":Ljava/lang/Object;
    :try_start_0
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------getMethod &&&&&  MethodName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p1, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 374
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 376
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 377
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------getMethod &&&&& retObject = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "retObject":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --InvocationTargetException----e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --getMethod----e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getParamTypes(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;
    .locals 7
    .param p2, "mName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 324
    .local v0, "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 325
    .local v3, "mtd":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 326
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 332
    .end local v2    # "i":I
    .end local v3    # "mtd":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --getParamTypes----e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public abstract getSupportISOValue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportVideoQuality(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportWhiteBlance()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "mCameraId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v8, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 393
    .local v4, "isDebug":Z
    if-eqz v4, :cond_1

    .line 394
    const/16 v6, 0x14

    .line 395
    .local v6, "quality":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 396
    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 397
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CamcorderProfile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 395
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v2    # "i":I
    .end local v6    # "quality":I
    :cond_1
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .local v1, "_4k":I
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CamcorderProfile: 4k:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 405
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 407
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    .local v0, "_2k":I
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CamcorderProfile: 2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 412
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 414
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_3
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 419
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_4
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_5
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 430
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v9

    if-nez v9, :cond_6

    sget-boolean v9, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-nez v9, :cond_6

    .line 431
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_6
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 438
    sget-boolean v9, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v9, :cond_7

    .line 439
    sget-object v9, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_7
    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v9

    const-string v10, "developer_setting_full_pic_video_size_key"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 445
    .local v5, "isDeveloper":Z
    if-eqz v5, :cond_c

    .line 447
    const/16 v9, 0x9

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 448
    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_8
    const/16 v9, 0x8

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 451
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_9
    const/4 v9, 0x3

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 454
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_a
    const/4 v9, 0x7

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 457
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_b
    const/4 v9, 0x2

    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 460
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 466
    .local v7, "support":Ljava/lang/String;
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSupportedVideoQuality: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_1

    .line 477
    .end local v7    # "support":Ljava/lang/String;
    :cond_d
    return-object v8
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
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
    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraProSettingListPreferenceHelper()Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract initProSettingExpandUIDependSupportedParameters()V
.end method

.method public setContrast(I)V
    .locals 2
    .param p1, "contrast"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 162
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setExposure(I)V
    .locals 1
    .param p1, "exposure"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 283
    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 2
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_flash_key"

    invoke-interface {v0, v1, p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setFlashByMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_mode_flash_key"

    invoke-interface {v0, v1, p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setISO(Ljava/lang/String;)V
    .locals 2
    .param p1, "isoValue"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "MethodName"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "intelclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 352
    .local v3, "retObject":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getParamTypes(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v2

    .line 354
    .local v2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 355
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 357
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-virtual {v1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 365
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "retObject":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 358
    .restart local v3    # "retObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 360
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -InvocationTargetException------e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --setMethod----e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSaturation(I)V
    .locals 2
    .param p1, "saturation"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 200
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 202
    return-void
.end method

.method public setSharpness(I)V
    .locals 2
    .param p1, "sharpness"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 277
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 279
    return-void
.end method

.method public abstract updateParameters()Landroid/hardware/Camera$Parameters;
.end method
