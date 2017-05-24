.class public Lcom/lenovo/scg/camera/setting/CameraParametersHelper;
.super Ljava/lang/Object;
.source "CameraParametersHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraParametersHelper"


# instance fields
.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mCmeraModule:Lcom/lenovo/scg/camera/CameraModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCmeraModule:Lcom/lenovo/scg/camera/CameraModule;

    .line 49
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getCurrentModule()Lcom/lenovo/scg/camera/CameraModule;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCmeraModule:Lcom/lenovo/scg/camera/CameraModule;

    .line 52
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/parameters/CameraParameterFactory;->createCameraParameters(Lcom/lenovo/scg/camera/setting/CameraSettingController;)Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    .line 53
    return-void
.end method


# virtual methods
.method public changeCameraPreview()V
    .locals 6

    .prologue
    .line 274
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearAllPopupWindow()V

    .line 275
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v4

    const-string/jumbo v5, "pref_camera_id_key"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 276
    .local v2, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "index":I
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 278
    .local v3, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    rem-int v0, v4, v5

    .line 280
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "newCameraId":I
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onCameraSwitchButtonClicked(I)V

    .line 284
    return-void
.end method

.method public getDefaultParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefaultParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    return-object v0
.end method

.method public initProSettingExpandUIDependSupportedParameters()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->initProSettingExpandUIDependSupportedParameters()V

    .line 207
    return-void
.end method

.method public readParametersFromSPreferences()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->updateParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public restoreCameraID()V
    .locals 6

    .prologue
    .line 263
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v4

    const-string/jumbo v5, "pref_camera_id_key"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 264
    .local v3, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 265
    .local v2, "mCameras":[Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "mCameraFacing":I
    aget-object v4, v2, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncParameters()V
    .locals 6

    .prologue
    const v5, 0x7f0f05bd

    .line 211
    const-string v2, "CameraParametersHelper"

    const-string v3, "          syncParameters          "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->writeDefParameters2SPreferenceIfInit()V

    .line 215
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    .line 216
    .local v1, "mComboSharedPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getIsImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    const-string v2, "camera_setting_location_key_normal"

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "gps":Ljava/lang/String;
    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isGPSEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v2, "lxy"

    const-string/jumbo v3, "set value index ---- 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    const-string v2, "dxtsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncParameters---gps--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_location_key"

    invoke-interface {v2, v3, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v0    # "gps":Ljava/lang/String;
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_location_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncVideoModepreferences(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;I)V
    .locals 8
    .param p1, "mPreferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .param p2, "mCameraId"    # I

    .prologue
    .line 235
    const-string/jumbo v5, "pref_camera_audio_mode_key_normal"

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v7, 0x7f0f05db

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "audioMode":Ljava/lang/String;
    const-string v5, "dxtsync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----------------audioMode--------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string/jumbo v6, "pref_camera_audio_mode_key"

    invoke-interface {v5, v6, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v5, "pref_camera_video_hdr_key_normal"

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v7, 0x7f0f05da

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "videoHdr":Ljava/lang/String;
    const/4 v5, 0x1

    if-eq p2, v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getIsImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v3, "off"

    .line 242
    :cond_1
    const-string v5, "dxtsync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----------------videoHdr--------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string/jumbo v6, "pref_camera_video_hdr_key"

    invoke-interface {v5, v6, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "defaultQuality":Ljava/lang/String;
    const-string/jumbo v5, "pref_video_quality_key_normal"

    invoke-virtual {p1, v5, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "videoQuality":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getIsImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 250
    :cond_2
    const-string v5, "dxtsync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dongxt --------sync videoQuality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string/jumbo v6, "pref_video_quality_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v5, "pref_camera_video_focusmode_key_normal"

    const-string/jumbo v6, "on"

    invoke-virtual {p1, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "focusMode":Ljava/lang/String;
    const-string v5, "dxtsync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----------------focusMode--------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string/jumbo v6, "pref_camera_video_focusmode_key"

    invoke-interface {v5, v6, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public writeDefParameters2SPreferenceIfInit()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "mComboSharedPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    .local v1, "mContext":Landroid/content/Context;
    if-nez v1, :cond_3

    move v2, v3

    :goto_1
    const-string v4, "initCameraParametersFromDefault Error"

    invoke-static {v2, v4}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 79
    const-string v2, "first_init_camera_parameters_defeult"

    const-string/jumbo v4, "true_"

    invoke-virtual {v0, v2, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "writeDefParameters2SPreferenceIfInit_0000000000000000000000000"

    invoke-static {v3, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_picture_size_key"

    const v4, 0x7f0f0002

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_square_pic_key"

    const v4, 0x7f0f0008

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_takepicture_type_key"

    const v4, 0x7f0f0004

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_smart_auto_key"

    const-string/jumbo v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_smart_pro_key"

    const-string/jumbo v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_hdr_key"

    const v4, 0x7f0f001c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_goutu_line_key"

    const v4, 0x7f0f0006

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_focus_type_key"

    const v4, 0x7f0f0005

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_time_print_key"

    const v4, 0x7f0f0003

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_ce_guang_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraParameters:Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefaultMetering()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_ae_af_key"

    const v4, 0x7f0f0021

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_video_quality_key"

    const v4, 0x7f0f0009

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_video_focus_type_key"

    const v4, 0x7f0f000b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_video_wendingqi_key"

    const v4, 0x7f0f000c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_flash_key"

    const v4, 0x7f0f000f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_shutter_voice_key"

    const v4, 0x7f0f0018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_location_key"

    const v4, 0x7f0f0011

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_watch_key"

    const v4, 0x7f0f001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_screen_bright_key"

    const v4, 0x7f0f001a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_pin_shan_key"

    const v4, 0x7f0f0019

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_shui_ping_yi_key"

    const v4, 0x7f0f0010

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_storage_key"

    const v4, 0x7f0f0015

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_front_beauty"

    const-string/jumbo v4, "manual"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_init_camera_parameters_defeult"

    const-string v4, "false_"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 77
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_smart_auto_key"

    const v4, 0x7f0f001f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v3, "camera_setting_smart_pro_key"

    const v4, 0x7f0f0020

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
