.class public Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;
.super Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.source "SamsungCameraParameters.java"


# instance fields
.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 27
    return-void
.end method

.method private buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "maxValues"    # Ljava/lang/String;
    .param p4, "minValues"    # Ljava/lang/String;
    .param p5, "stepValues"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v9

    .line 101
    .local v9, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-nez v9, :cond_0

    .line 148
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 105
    .local v5, "max":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 106
    .local v7, "min":I
    if-nez p5, :cond_1

    .line 107
    const-string p5, "1"

    .line 109
    :cond_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 110
    .local v10, "step":F
    if-nez v5, :cond_2

    if-nez v7, :cond_2

    .line 111
    invoke-virtual {v9}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreferenceFromScreen(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    .line 115
    int-to-float v11, v5

    div-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v6, v11

    .line 116
    .local v6, "maxValue":I
    int-to-float v11, v7

    div-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v8, v11

    .line 117
    .local v8, "minValue":I
    const-string v11, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " @@@ buildQualcommExtendEffectCompensation maxValue = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", minValue = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", step = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 119
    .local v1, "entries":[Ljava/lang/CharSequence;
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 120
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    move v3, v8

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v3, v6, :cond_4

    .line 121
    int-to-float v11, v3

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    const/16 v11, 0x2b

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    .line 120
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v9, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v9, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entryValues":[Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "maxValue":I
    .end local v8    # "minValue":I
    :cond_5
    int-to-float v11, v5

    mul-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v6, v11

    .line 135
    .restart local v6    # "maxValue":I
    int-to-float v11, v7

    mul-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v8, v11

    .line 137
    .restart local v8    # "minValue":I
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 138
    .restart local v1    # "entries":[Ljava/lang/CharSequence;
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 139
    .restart local v2    # "entryValues":[Ljava/lang/CharSequence;
    move v3, v8

    .restart local v3    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-gt v3, v6, :cond_7

    .line 140
    int-to-float v11, v3

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_6

    const/16 v11, 0x2b

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    .line 139
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 146
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v9, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v9, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private getSupportedParametersList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "supportedParameters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 158
    :cond_0
    return-object v0

    .line 152
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "parametersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initSamsungPreferences(Landroid/hardware/Camera$Parameters;)V
    .locals 34
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v3

    .line 63
    .local v3, "mPreferenceGroup":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    if-eqz v3, :cond_0

    .line 65
    const-string v2, "camera_setting_ce_guang_key"

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v30

    .line 66
    .local v30, "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SUPPORTED_METERING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getSupportedParametersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 67
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 69
    .local v31, "meteringvalue":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "maxBringhtness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "minBringhtness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_BRIGHTNESS_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "stepBringhtness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 73
    .local v26, "bringhtness":Ljava/lang/String;
    const-string/jumbo v4, "pref_camera_brightness_key"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "maxContrast":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "minContrast":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_CONTRAST_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "stepContrast":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 79
    .local v27, "contrast":Ljava/lang/String;
    const-string/jumbo v10, "pref_camera_contrast_key"

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, "maxSaturation":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 83
    .local v18, "minSaturation":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 84
    .local v19, "stepSaturation":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 85
    .local v32, "saturation":Ljava/lang/String;
    const-string/jumbo v16, "pref_camera_saturation_key"

    move-object/from16 v14, p0

    move-object v15, v3

    invoke-direct/range {v14 .. v19}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 88
    .local v23, "maxSharpness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 89
    .local v24, "minSharpness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SHARPNESS_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 90
    .local v25, "stepSharpness":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 91
    .local v33, "sharpness":Ljava/lang/String;
    const-string/jumbo v22, "pref_camera_sharpness_key"

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v25}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "pref_camera_isovalue_key"

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v28

    .line 94
    .local v28, "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v2, :cond_2

    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SUPPORTED_ISO:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getSupportedParametersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 96
    :cond_2
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 97
    .local v29, "isovalue":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private updateDefaultSamsungPreferences()Landroid/hardware/Camera$Parameters;
    .locals 15

    .prologue
    .line 215
    iget-object v11, p0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 217
    .local v9, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v9, :cond_0

    .line 253
    :goto_0
    return-object v9

    .line 220
    :cond_0
    const/4 v10, 0x0

    .line 222
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v10, "matrix"

    .line 223
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v10, "0"

    .line 227
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_BRIGHTNESS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "maxBringhtness":Ljava/lang/String;
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_BRIGHTNESS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "minBringhtness":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v0, v11, 0x2

    .line 230
    .local v0, "defaultValue":I
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_BRIGHTNESS:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "pref_camera_brightness_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v10, "0"

    .line 233
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "maxContrast":Ljava/lang/String;
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "minContrast":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v0, v11, 0x2

    .line 236
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "pref_camera_contrast_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v10, "0"

    .line 239
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "maxSaturation":Ljava/lang/String;
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "minSaturation":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v0, v11, 0x2

    .line 242
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "pref_camera_saturation_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v10, "0"

    .line 245
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "maxSharpness":Ljava/lang/String;
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "minSharpness":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v0, v11, 0x2

    .line 248
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "pref_camera_sharpness_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v10, "auto"

    .line 251
    sget-object v11, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSamsungPreferences()Landroid/hardware/Camera$Parameters;
    .locals 20

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 164
    .local v14, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v14, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v14

    .line 167
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    .line 168
    .local v5, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v5, :cond_0

    .line 171
    const/4 v15, 0x0

    .line 173
    .local v15, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readMeteringFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;

    move-result-object v15

    .line 174
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readBrightnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 178
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "maxBringhtness":Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "minBringhtness":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v4, v16, 0x2

    .line 181
    .local v4, "defaultValue":I
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_BRIGHTNESS:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v18, "pref_camera_brightness_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readContrastFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 184
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "maxContrast":Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, "minContrast":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v4, v16, 0x2

    .line 187
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v18, "pref_camera_contrast_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSaturationFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 190
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "maxSaturation":Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "minSaturation":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v4, v16, 0x2

    .line 193
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v18, "pref_camera_saturation_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readSharpnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 196
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "maxSharpness":Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, "minSharpness":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v16, v17

    div-int/lit8 v4, v16, 0x2

    .line 199
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v18, "pref_camera_sharpness_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readIsoFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;

    move-result-object v15

    .line 202
    sget-object v16, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultMetering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->updateDefaultSamsungPreferences()Landroid/hardware/Camera$Parameters;

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
    .line 38
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
    .line 210
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

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
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public initProSettingExpandUIDependSupportedParameters()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->initSamsungPreferences(Landroid/hardware/Camera$Parameters;)V

    .line 58
    return-void
.end method

.method public updateParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;->updateSamsungPreferences()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method
