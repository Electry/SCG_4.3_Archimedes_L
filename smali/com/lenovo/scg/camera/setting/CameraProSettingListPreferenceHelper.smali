.class public Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;
.super Ljava/lang/Object;
.source "CameraProSettingListPreferenceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraProSettingListPreferenceHelper"

.field private static mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# instance fields
.field private final mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;[Landroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "cameraInfo"    # [Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sput-object p1, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 47
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 48
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 49
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraId:I

    .line 50
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 51
    return-void
.end method

.method private buildCameraId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    .locals 5
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .prologue
    .line 241
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v3

    .line 242
    .local v2, "numOfCameras":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 243
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 248
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p2, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildExposureCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 11
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "exposure"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 216
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    .line 217
    .local v5, "max":I
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    .line 218
    .local v7, "min":I
    if-nez v5, :cond_0

    if-nez v7, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 238
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v9

    .line 224
    .local v9, "step":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 226
    :cond_1
    int-to-float v10, v5

    mul-float/2addr v10, v9

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v6, v10

    .line 227
    .local v6, "maxValue":I
    int-to-float v10, v7

    mul-float/2addr v10, v9

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v8, v10

    .line 228
    .local v8, "minValue":I
    sub-int v10, v6, v8

    add-int/lit8 v10, v10, 0x1

    new-array v1, v10, [Ljava/lang/CharSequence;

    .line 229
    .local v1, "entries":[Ljava/lang/CharSequence;
    sub-int v10, v6, v8

    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [Ljava/lang/CharSequence;

    .line 230
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    move v3, v8

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v3, v6, :cond_3

    .line 231
    int-to-float v10, v3

    div-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_2

    const/16 v10, 0x2b

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v4

    .line 230
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p2, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p2, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterSimilarPictureSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 2
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 323
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterDuplicated()V

    .line 324
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 325
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptionsPictureSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V
    .locals 2
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
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 307
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 308
    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p2, p3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterUnsupportedPictureSize(Ljava/util/List;)V

    .line 313
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge v0, v1, :cond_2

    .line 314
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptionsPreviewSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V
    .locals 2
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
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 279
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p2, p3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterUnsupportedPreviewSize(Ljava/util/List;)V

    .line 285
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge v0, v1, :cond_2

    .line 286
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    goto :goto_0
.end method

.method private getFineResolutionQuality(Ljava/util/ArrayList;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 382
    iget v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraId:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraId:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_2
    return-void
.end method

.method private static previewSizeList2StringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "previewSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "developer_setting_full_preview_size_key"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 342
    .local v1, "isDeveloper":Z
    if-eqz v1, :cond_2

    .line 343
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 344
    .local v3, "mSize":Landroid/hardware/Camera$Size;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is4v3(Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "mSize":Landroid/hardware/Camera$Size;
    :cond_2
    return-object v2
.end method

.method private removePreferenceIfUnSupport(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 27
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 105
    const/16 v21, 0x0

    .line 106
    .local v21, "videoQuality":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/16 v17, 0x0

    .line 107
    .local v17, "timeLapseInterval":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v14, 0x0

    .line 108
    .local v14, "pictureSize":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v15, 0x0

    .line 109
    .local v15, "previewSize":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/16 v23, 0x0

    .line 110
    .local v23, "whiteBalance":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/16 v16, 0x0

    .line 112
    .local v16, "sceneMode":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v9, 0x0

    .line 113
    .local v9, "flashMode":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v10, 0x0

    .line 114
    .local v10, "focusMode":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v8, 0x0

    .line 115
    .local v8, "exposure":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const/16 v18, 0x0

    .line 116
    .local v18, "timer":Lcom/lenovo/scg/camera/setting/preference/CountDownTimerPreference;
    const/4 v7, 0x0

    .line 117
    .local v7, "countDownSoundEffects":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v6, 0x0

    .line 118
    .local v6, "cameraIdPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const/16 v20, 0x0

    .line 119
    .local v20, "videoFlashMode":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/16 v19, 0x0

    .line 120
    .local v19, "videoEffect":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const/4 v5, 0x0

    .line 122
    .local v5, "cameraHdr":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v24

    if-nez v24, :cond_0

    .line 123
    const-string v24, "camera_setting_shutter_voice_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 127
    :cond_0
    const-string v24, "camera_setting_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v21

    .line 128
    const-string/jumbo v24, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v17

    .line 129
    const-string v24, "camera_setting_preview_size_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v15

    .line 131
    const-string v24, "camera_setting_picture_size_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v14

    .line 132
    const-string/jumbo v24, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v23

    .line 133
    const-string/jumbo v24, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v16

    .line 134
    const-string/jumbo v24, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v9

    .line 135
    const-string/jumbo v24, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v10

    .line 136
    const-string/jumbo v24, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v8

    .end local v8    # "exposure":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    check-cast v8, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 137
    .restart local v8    # "exposure":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const-string/jumbo v24, "pref_camera_timer_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v18

    .end local v18    # "timer":Lcom/lenovo/scg/camera/setting/preference/CountDownTimerPreference;
    check-cast v18, Lcom/lenovo/scg/camera/setting/preference/CountDownTimerPreference;

    .line 138
    .restart local v18    # "timer":Lcom/lenovo/scg/camera/setting/preference/CountDownTimerPreference;
    const-string/jumbo v24, "pref_camera_timer_sound_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v7

    .line 139
    const-string/jumbo v24, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v6

    .end local v6    # "cameraIdPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    check-cast v6, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 140
    .restart local v6    # "cameraIdPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const-string/jumbo v24, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v20

    .line 141
    const-string/jumbo v24, "pref_video_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v19

    .line 142
    const-string v24, "camera_setting_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v5

    .line 146
    if-eqz v21, :cond_1

    .line 147
    sget-object v24, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface/range {v24 .. v24}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getSupportVideoQuality(I)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 149
    :cond_1
    const-string/jumbo v24, "pref_camera_video_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v22

    .line 150
    .local v22, "video_hdr":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    const-string/jumbo v24, "pref_camera_audio_mode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v4

    .line 151
    .local v4, "audio_mode":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v22, :cond_2

    .line 152
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 154
    :cond_2
    if-eqz v4, :cond_3

    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getSupportMtkAudioMode()Z

    move-result v24

    if-nez v24, :cond_3

    .line 155
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 157
    :cond_3
    if-eqz v14, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 161
    .local v13, "mSupportSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 162
    .local v12, "isDebug":Z
    if-eqz v12, :cond_4

    .line 163
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_4

    .line 164
    const-string/jumbo v25, "wangdy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 169
    .end local v11    # "i":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptionsPictureSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterSimilarPictureSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 173
    .end local v12    # "isDebug":Z
    .end local v13    # "mSupportSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v15, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->previewSizeList2StringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v15, v2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptionsPreviewSize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 177
    :cond_6
    if-eqz v23, :cond_7

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 180
    :cond_7
    if-eqz v16, :cond_8

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 183
    :cond_8
    if-eqz v9, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 186
    :cond_9
    if-eqz v10, :cond_a

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/camera/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v10, v2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 194
    :cond_a
    :goto_1
    if-eqz v20, :cond_b

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 197
    :cond_b
    if-eqz v8, :cond_c

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->buildExposureCompensation(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 199
    :cond_c
    if-eqz v6, :cond_d

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->buildCameraId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    .line 202
    :cond_d
    if-eqz v17, :cond_e

    .line 203
    sget-boolean v24, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v24, :cond_12

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 209
    :cond_e
    :goto_2
    if-eqz v5, :cond_10

    sget-boolean v24, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/camera/CameraUtil;->isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 210
    :cond_f
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 212
    :cond_10
    return-void

    .line 191
    :cond_11
    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1

    .line 206
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValueIndex(I)V

    .line 337
    :cond_0
    return-void
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    const-string v6, "developer_setting_full_pic_video_size_key"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 359
    .local v1, "isDeveloper":Z
    if-nez v1, :cond_0

    .line 360
    const-string v5, "16x9"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v5, "4x3"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v5, "1x1"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    if-eqz v1, :cond_1

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 367
    .local v3, "size":Landroid/hardware/Camera$Size;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "temp":Ljava/lang/String;
    const-string v5, "CameraProSettingListPreferenceHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V
    .locals 2
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
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 260
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p2, p3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 266
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 267
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 271
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->resetIfInvalid(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    goto :goto_0
.end method

.method public getPreferenceGroup(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .locals 3
    .param p1, "preferenceRes"    # I

    .prologue
    .line 54
    new-instance v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "inflater":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->inflate(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 56
    .local v0, "group":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->removePreferenceIfUnSupport(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V

    .line 57
    :cond_0
    return-object v0
.end method

.method public getValueOfIndex(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v3, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    .line 82
    .local v0, "group":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    if-nez v0, :cond_1

    .line 88
    .end local p3    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 85
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    .line 86
    .local v2, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v1, v3

    .line 88
    .local v1, "len":I
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findValueOfIndex(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public initAntiShake(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 73
    const-string/jumbo v1, "pref_camera_anti_shake_key"

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    .line 74
    .local v0, "antiShake":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public initScreenBrightness(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 68
    const-string/jumbo v1, "pref_camera_screen_brightness_key"

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    .line 69
    .local v0, "screenBrightness":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 70
    :cond_0
    return-void
.end method

.method public initVoicesShutter(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 63
    const-string/jumbo v1, "pref_camera_sound_capture_key"

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    .line 64
    .local v0, "voiceShutter":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 65
    :cond_0
    return-void
.end method
