.class public Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;
.super Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.source "MtkCameraParameters.java"


# instance fields
.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 29
    return-void
.end method

.method private buildMTKExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v11

    .line 64
    .local v11, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v11, :cond_0

    if-nez p3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    .line 67
    .local v6, "len":I
    div-int/lit8 v7, v6, 0x2

    .line 68
    .local v7, "max":I
    div-int/lit8 v13, v6, 0x2

    rsub-int/lit8 v9, v13, 0x0

    .line 69
    .local v9, "min":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 70
    .local v12, "step":F
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_2

    .line 71
    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {p1, v13}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreferenceFromScreen(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_0

    .line 75
    int-to-float v13, v7

    div-float/2addr v13, v12

    invoke-static {v13}, Landroid/util/FloatMath;->floor(F)F

    move-result v13

    float-to-int v8, v13

    .line 76
    .local v8, "maxValue":I
    int-to-float v13, v9

    div-float/2addr v13, v12

    invoke-static {v13}, Landroid/util/FloatMath;->ceil(F)F

    move-result v13

    float-to-int v10, v13

    .line 78
    .local v10, "minValue":I
    sub-int v13, v8, v10

    add-int/lit8 v13, v13, 0x1

    new-array v2, v13, [Ljava/lang/CharSequence;

    .line 79
    .local v2, "entries":[Ljava/lang/CharSequence;
    sub-int v13, v8, v10

    add-int/lit8 v13, v13, 0x1

    new-array v3, v13, [Ljava/lang/CharSequence;

    .line 80
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    move v4, v10

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-gt v4, v8, :cond_4

    .line 82
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    aput-object v13, v3, v5

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    const/16 v13, 0x2b

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v5

    .line 80
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v11, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v11, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getMTKParameters()V
    .locals 11

    .prologue
    .line 230
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 231
    .local v0, "mMtkCamera":Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 234
    .local v7, "mtkclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    const-string v8, "getZSDMode"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 235
    .local v6, "mtkParametersZSD":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersZSD = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v8, "getISOSpeed"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "mtkParametersIso":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersIso = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v8, "getBrightnessMode"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "mtkParametersBrightness":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersBrightness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v8, "getContrastMode"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 246
    .local v2, "mtkParametersContrast":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersContrast = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v8, "getSaturationMode"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 250
    .local v4, "mtkParametersSaturation":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersSaturation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v8, "getEdgeMode"

    invoke-virtual {p0, v7, v0, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 254
    .local v5, "mtkParametersSharpness":Ljava/lang/Object;
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMTKParameters -------getmtkParameters &&&&& mtkParametersSharpness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method private getMtkSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "mCameraId"    # I
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
    const/16 v6, 0x12

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    invoke-static {p1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1
    invoke-static {p1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2
    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_3
    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_4
    return-object v0
.end method

.method private initMTKPreferences()V
    .locals 17

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v14}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v14}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 100
    .local v12, "mtkclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v14}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v3

    .line 101
    .local v3, "mPreferenceGroup":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    if-nez v3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedMeteringModes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 105
    .local v9, "mtkParametersSupportedMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences ---mtkParametersSupportedMetering = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v14, "camera_setting_ce_guang_key"

    invoke-virtual {v3, v14}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v4

    .line 108
    .local v4, "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v9}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedBrightnessMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 113
    .local v5, "mtkParametersSupportedBrightnessMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences --- mtkParametersSupportedBrightnessMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string/jumbo v14, "pref_camera_brightness_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v5}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->buildMTKExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/util/List;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedContrastMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 118
    .local v6, "mtkParametersSupportedContrastMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences --- mtkParametersSupportedContrastMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v14, "pref_camera_contrast_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->buildMTKExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/util/List;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedSaturationMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 123
    .local v10, "mtkParametersSupportedSaturationMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences --- mtkParametersSupportedSaturationMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v14, "pref_camera_saturation_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v10}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->buildMTKExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedEdgeMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 127
    .local v7, "mtkParametersSupportedEdgeMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences --- mtkParametersSupportedEdgeMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v14, "pref_camera_sharpness_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v7}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->buildMTKExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedISOSpeed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 131
    .local v8, "mtkParametersSupportedISO":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 132
    .local v13, "s":Ljava/lang/String;
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences ---initmtkPreferences----getParameters &&&&& s = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v13    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v15, "getSupportedZSDMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 136
    .local v11, "mtkParametersSupportedZSD":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 137
    .restart local v13    # "s":Ljava/lang/String;
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences ---getSupportedZSDMode----getParameters &&&&& s = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    .end local v13    # "s":Ljava/lang/String;
    :cond_3
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initMTKPreferences ---initmtkPreferences----getParameters &&&&& mtkParametersSupportedISO = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    const-string/jumbo v14, "pref_camera_isovalue_key"

    invoke-virtual {v3, v14}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    .line 144
    .local v2, "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    sget v14, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v14, :cond_0

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 147
    .end local v2    # "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    :catch_0
    move-exception v14

    goto/16 :goto_0
.end method

.method private updateDefaultMtkCameraParamters()Landroid/hardware/Camera$Parameters;
    .locals 14

    .prologue
    .line 288
    const-string v11, "TAG"

    const-string v12, "---------------updateDefaultMtkCameraParamters ---- "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 292
    .local v4, "mParameters":Landroid/hardware/Camera$Parameters;
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 296
    .local v7, "mtkclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v4

    .line 300
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    .line 301
    .local v5, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v5, :cond_0

    .line 304
    const-string v11, "TAG"

    const-string v12, "---------------updateMtkCameraParamters ----return  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string/jumbo v2, "middle"

    .line 307
    .local v2, "defaultValue":Ljava/lang/String;
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "brightness":I
    const-string/jumbo v11, "pref_camera_brightness_key"

    invoke-super {p0, v0, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "paramtersPreferences":Ljava/lang/String;
    const-string/jumbo v11, "setBrightnessMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "contrast":I
    const-string/jumbo v11, "pref_camera_contrast_key"

    invoke-super {p0, v1, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    const-string/jumbo v11, "setContrastMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 324
    .local v9, "saturation":I
    const-string/jumbo v11, "pref_camera_saturation_key"

    invoke-super {p0, v9, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    const-string/jumbo v11, "setSaturationMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 331
    .local v10, "sharpness":I
    const-string/jumbo v11, "pref_camera_sharpness_key"

    invoke-super {p0, v10, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    const-string/jumbo v11, "setEdgeMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f05c7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "metering":Ljava/lang/String;
    const-string v8, "auto"

    .line 339
    const-string/jumbo v11, "setISOSpeed"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v0    # "brightness":I
    .end local v1    # "contrast":I
    .end local v2    # "defaultValue":Ljava/lang/String;
    .end local v5    # "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .end local v6    # "metering":Ljava/lang/String;
    .end local v8    # "paramtersPreferences":Ljava/lang/String;
    .end local v9    # "saturation":I
    .end local v10    # "sharpness":I
    :catch_0
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    const-string v11, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initmtkCamera ---updateMtkCameraParamters----e = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateMtkCameraParamters()Landroid/hardware/Camera$Parameters;
    .locals 14

    .prologue
    .line 159
    const-string v11, "TAG"

    const-string v12, "---------------updateMtkCameraParamters ---- "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 163
    .local v4, "mParameters":Landroid/hardware/Camera$Parameters;
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 167
    .local v7, "mtkclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v4

    .line 171
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    .line 172
    .local v5, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v5, :cond_0

    .line 175
    const-string v11, "TAG"

    const-string v12, "---------------updateMtkCameraParamters ----return  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v2, "middle"

    .line 178
    .local v2, "defaultValue":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readBrightnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v0

    .line 181
    .local v0, "brightness":I
    const-string/jumbo v11, "pref_camera_brightness_key"

    invoke-super {p0, v0, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "paramtersPreferences":Ljava/lang/String;
    const-string/jumbo v11, "setBrightnessMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readContrastFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v1

    .line 188
    .local v1, "contrast":I
    const-string/jumbo v11, "pref_camera_contrast_key"

    invoke-super {p0, v1, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    const-string/jumbo v11, "setContrastMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSaturationFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v9

    .line 195
    .local v9, "saturation":I
    const-string/jumbo v11, "pref_camera_saturation_key"

    invoke-super {p0, v9, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    const-string/jumbo v11, "setSaturationMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSharpnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v10

    .line 202
    .local v10, "sharpness":I
    const-string/jumbo v11, "pref_camera_sharpness_key"

    invoke-super {p0, v10, v11, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    const-string/jumbo v11, "setEdgeMode"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v11, "camera_setting_ce_guang_key"

    iget-object v12, p0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v12}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f05c7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "metering":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readIsoFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;

    move-result-object v8

    .line 210
    const-string/jumbo v11, "setISOSpeed"

    invoke-virtual {p0, v7, v4, v11, v8}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->setMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0    # "brightness":I
    .end local v1    # "contrast":I
    .end local v2    # "defaultValue":Ljava/lang/String;
    .end local v5    # "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .end local v6    # "metering":Ljava/lang/String;
    .end local v8    # "paramtersPreferences":Ljava/lang/String;
    .end local v9    # "saturation":I
    .end local v10    # "sharpness":I
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const-string v11, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initmtkCamera ---updateMtkCameraParamters----e = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultMetering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->updateDefaultMtkCameraParamters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
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
    .line 40
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
    .line 260
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->getMtkSupportedVideoQuality(I)Ljava/util/ArrayList;

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
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public initProSettingExpandUIDependSupportedParameters()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->initMTKPreferences()V

    .line 59
    return-void
.end method

.method public updateParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;->updateMtkCameraParamters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method
