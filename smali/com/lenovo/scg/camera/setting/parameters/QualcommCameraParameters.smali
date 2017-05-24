.class public Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;
.super Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.source "QualcommCameraParameters.java"


# instance fields
.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 32
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
    .line 182
    invoke-virtual/range {p1 .. p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v9

    .line 183
    .local v9, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-nez v9, :cond_0

    .line 230
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 187
    .local v5, "max":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 188
    .local v7, "min":I
    if-nez p5, :cond_1

    .line 189
    const-string p5, "1"

    .line 191
    :cond_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 192
    .local v10, "step":F
    if-nez v5, :cond_2

    if-nez v7, :cond_2

    .line 193
    invoke-virtual {v9}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreferenceFromScreen(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    .line 197
    int-to-float v11, v5

    div-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v6, v11

    .line 198
    .local v6, "maxValue":I
    int-to-float v11, v7

    div-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v8, v11

    .line 199
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

    .line 200
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 201
    .local v1, "entries":[Ljava/lang/CharSequence;
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 202
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    move v3, v8

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v3, v6, :cond_4

    .line 203
    int-to-float v11, v3

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    const/16 v11, 0x2b

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    .line 202
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v9, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v9, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 216
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

    .line 217
    .restart local v6    # "maxValue":I
    int-to-float v11, v7

    mul-float/2addr v11, v10

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v8, v11

    .line 219
    .restart local v8    # "minValue":I
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 220
    .restart local v1    # "entries":[Ljava/lang/CharSequence;
    sub-int v11, v6, v8

    add-int/lit8 v11, v11, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 221
    .restart local v2    # "entryValues":[Ljava/lang/CharSequence;
    move v3, v8

    .restart local v3    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-gt v3, v6, :cond_7

    .line 222
    int-to-float v11, v3

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_6

    const/16 v11, 0x2b

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    .line 221
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 228
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v9, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v9, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private getQualcommSupportedIso(Ljava/util/List;)Ljava/util/List;
    .locals 8
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
    .line 234
    .local p1, "QualcommSupportedISO":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, "isoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "iso":Ljava/lang/String;
    const-string v5, "auto"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    const/16 v5, 0x4f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 242
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 243
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "value":Ljava/lang/String;
    const-string v5, "_HJR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v1    # "index":I
    .end local v2    # "iso":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .restart local v2    # "iso":Ljava/lang/String;
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getQualcommSupportedIso : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v2    # "iso":Ljava/lang/String;
    :cond_3
    return-object v3
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
    .line 171
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 178
    :cond_0
    return-object v0

    .line 172
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "parametersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initQualcommPreferences(Landroid/hardware/Camera$Parameters;)V
    .locals 40
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v4

    .line 84
    .local v4, "mPreferenceGroup":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    if-eqz v4, :cond_0

    .line 93
    :try_start_0
    const-string v3, "camera_setting_ce_guang_key"

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v36

    .line 94
    .local v36, "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_QUALCOMM_SUPPORTED_METERING_MODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->getSupportedParametersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 95
    .local v33, "mAllSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v34, "mGoodSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 100
    .local v35, "mString":Ljava/lang/String;
    const-string v3, "Metering: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v3, "spot-metering-adv"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "center-weighted-adv"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "spot"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    invoke-interface/range {v34 .. v35}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v33    # "mAllSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "mGoodSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "mString":Ljava/lang/String;
    .end local v36    # "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    :catch_0
    move-exception v30

    .line 111
    .local v30, "e":Ljava/lang/Exception;
    const-string v3, "QualcommCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set Mettering Error"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v30    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "maxBringhtness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "minBringhtness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_BRIGHTNESS_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "stepBringhtness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_BRIGHTNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 123
    .local v28, "bringhtness":Ljava/lang/String;
    const-string/jumbo v5, "pref_camera_brightness_key"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "maxContrast":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "minContrast":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_CONTRAST_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, "stepContrast":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 131
    .local v29, "contrast":Ljava/lang/String;
    const-string v3, "lnliu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v11, "pref_camera_contrast_key"

    move-object/from16 v9, p0

    move-object v10, v4

    invoke-direct/range {v9 .. v14}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 135
    .local v18, "maxSaturation":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, "minSaturation":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "stepSaturation":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 138
    .local v38, "saturation":Ljava/lang/String;
    const-string v3, "lnliu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saturation = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v17, "pref_camera_saturation_key"

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v20}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 142
    .local v24, "maxSharpness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 143
    .local v25, "minSharpness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SHARPNESS_STEP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 144
    .local v26, "stepSharpness":Ljava/lang/String;
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 145
    .local v39, "sharpness":Ljava/lang/String;
    const-string v3, "lnliu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sharpness = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string/jumbo v23, "pref_camera_sharpness_key"

    move-object/from16 v21, p0

    move-object/from16 v22, v4

    invoke-direct/range {v21 .. v26}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->buildQualcommExtendEffectCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_1
    const-string/jumbo v3, "pref_camera_isovalue_key"

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v32

    .line 156
    .local v32, "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v3, :cond_3

    .line 157
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SUPPORTED_ISO:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 158
    .local v27, "allISO":Ljava/lang/String;
    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CameraSupportedISO: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->getSupportedParametersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->getQualcommSupportedIso(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1, v3}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 162
    .end local v27    # "allISO":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 163
    .end local v32    # "iso":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 106
    .end local v6    # "maxBringhtness":Ljava/lang/String;
    .end local v7    # "minBringhtness":Ljava/lang/String;
    .end local v8    # "stepBringhtness":Ljava/lang/String;
    .end local v12    # "maxContrast":Ljava/lang/String;
    .end local v13    # "minContrast":Ljava/lang/String;
    .end local v14    # "stepContrast":Ljava/lang/String;
    .end local v18    # "maxSaturation":Ljava/lang/String;
    .end local v19    # "minSaturation":Ljava/lang/String;
    .end local v20    # "stepSaturation":Ljava/lang/String;
    .end local v24    # "maxSharpness":Ljava/lang/String;
    .end local v25    # "minSharpness":Ljava/lang/String;
    .end local v26    # "stepSharpness":Ljava/lang/String;
    .end local v28    # "bringhtness":Ljava/lang/String;
    .end local v29    # "contrast":Ljava/lang/String;
    .end local v38    # "saturation":Ljava/lang/String;
    .end local v39    # "sharpness":Ljava/lang/String;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v33    # "mAllSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "mGoodSupportMetering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v36    # "metering":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 107
    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 108
    .local v37, "meteringvalue":Ljava/lang/String;
    const-string v3, "QualcommCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "meteringvalue : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private readDefaultParameterFromSPreference()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 346
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 348
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_0

    move-object v4, v5

    .line 388
    .end local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object v4

    .line 351
    .restart local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    .line 352
    .local v3, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-nez v3, :cond_1

    move-object v4, v5

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    .local v1, "mContext":Landroid/content/Context;
    const v5, 0x7f0f0007

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "ceGuang":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const v5, 0x7f0f0019

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "mPinShan":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readParameterFromSPreference()Landroid/hardware/Camera$Parameters;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 273
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v3, :cond_0

    move-object v3, v5

    .line 327
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object v3

    .line 276
    .restart local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    .line 277
    .local v2, "mPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-nez v2, :cond_1

    move-object v3, v5

    .line 278
    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    .line 283
    .local v1, "mContext":Landroid/content/Context;
    const-string v5, "camera_setting_ce_guang_key"

    const v6, 0x7f0f0007

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "ceGuang":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_METERING:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "key_camera_setting_ruidu_key"

    const-string v6, "18"

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "sha":Ljava/lang/String;
    const-string v5, "lnliu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qual duqu ruidu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v5, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v5, "lnliu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qual set ruidu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDefaultMetering()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0f0007

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mDefaultString":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_metering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 68
    return-object v0
.end method

.method public getDefaultParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->readDefaultParameterFromSPreference()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getSupportISOValue()Ljava/util/List;
    .locals 10
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
    .line 43
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SUPPORTED_ISO:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "mSupportISOString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "mSupportISODevide":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v6, "mSupportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 47
    .local v3, "mSupport":Ljava/lang/String;
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ISO] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "mSupport":Ljava/lang/String;
    :cond_0
    return-object v6
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
    .line 333
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

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
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public initProSettingExpandUIDependSupportedParameters()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->initQualcommPreferences(Landroid/hardware/Camera$Parameters;)V

    .line 75
    return-void
.end method

.method public updateParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->readParameterFromSPreference()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method
