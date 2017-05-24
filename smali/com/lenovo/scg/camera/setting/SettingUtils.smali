.class public Lcom/lenovo/scg/camera/setting/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# static fields
.field private static final ALPHA_DISABLE:F = 0.3f

.field private static final ALPHA_ENABLE:F = 1.0f

.field private static final AUTO_SETTING_KEYS:[Ljava/lang/String;

.field public static final BRIGHTNESS_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final CONTRAST_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final CURRENT_LOCAL_VERSION:I = 0x2

.field public static final CURRENT_VERSION:I = 0x5

.field public static final DEFAULT_VIDEO_DURATION:I = 0x0

.field private static final ENABLE_LIST_HEAD:Ljava/lang/String; = "[L];"

.field private static final ENABLE_LIST_SEPERATOR:Ljava/lang/String; = ";"

.field public static final EXPOSURE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final LIST_KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final LIST_KEY_KEY:Ljava/lang/String; = "key"

.field public static final LIST_KEY_TEXT:Ljava/lang/String; = "text"

.field public static final NOT_FOUND:I = -0x1

.field private static final PRO_SETTING_KEYS:[Ljava/lang/String;

.field public static final RESET_STATE_VALUE_DISABLE:Ljava/lang/String; = "disable-value"

.field public static final SATURATION_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final SETTING_AUTO:Ljava/lang/String; = "auto"

.field public static final SETTING_OFF:Ljava/lang/String; = "off"

.field public static final SETTING_ON:Ljava/lang/String; = "on"

.field public static final SHARPNESS_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "SettingUtils"

.field public static final UNKNOWN:I = -0x1

.field private static isCanDisableShutterSound:Z

.field private static isCanDisableShutterSoundFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 730
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/lenovo/scg/camera/setting/SettingUtils;->AUTO_SETTING_KEYS:[Ljava/lang/String;

    .line 751
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "camera_setting_focus_type_key"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "camera_setting_goutu_line_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "camera_setting_ce_guang_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "camera_setting_square_pic_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "camera_setting_hdr_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_setting_ae_af_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "camera_setting_video_quality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "camera_setting_video_focus_type_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "camera_setting_video_wendingqi_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "camera_setting_shui_ping_yi_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_setting_location_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "camera_setting_fringer_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "camera_setting_storage_key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camera_setting_quick_launch_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "camera_setting_pin_shan_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "camera_setting_screen_bright_key"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "camera_setting_watch_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "camera_shortcut_shrink"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "camera_shortcut_items"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "camera_shortcut_order_saved"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "camera_frist_enter_pro"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/SettingUtils;->PRO_SETTING_KEYS:[Ljava/lang/String;

    .line 856
    sput-boolean v3, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSoundFlag:Z

    .line 857
    sput-boolean v3, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bubblesort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v3, 0x0

    .line 538
    .local v3, "temp":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 539
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 540
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-le v0, v1, :cond_1

    .line 541
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isPositiveSequence(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "temp":Landroid/hardware/Camera$Size;
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 543
    .restart local v3    # "temp":Landroid/hardware/Camera$Size;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 539
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method public static buildEnableList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "current"    # Ljava/lang/String;

    .prologue
    .line 626
    const/4 v2, 0x0

    .line 627
    .local v2, "listStr":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[L];"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 630
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 638
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildEnableList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-object v2
.end method

.method public static buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 686
    if-eqz p0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method public static getAutoSettingKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/lenovo/scg/camera/setting/SettingUtils;->AUTO_SETTING_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cameraId"    # I
    .param p1, "defaultQuality"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "quality":I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    .end local p1    # "defaultQuality":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 83
    .restart local p1    # "defaultQuality":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {p0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_4
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_5
    const/16 v1, 0x9

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_6
    invoke-static {p0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_7
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_8
    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 111
    :cond_9
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static getEnabledArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "listString"    # Ljava/lang/String;

    .prologue
    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "list":[Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "temp":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 659
    const/4 v0, 0x2

    .local v0, "i":I
    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 660
    add-int/lit8 v4, v0, -0x2

    aget-object v5, v3, v0

    aput-object v5, v2, v4

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "temp":[Ljava/lang/String;
    :cond_0
    const-string v4, "SettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEnabledArray("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-object v2
.end method

.method public static getEnabledList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "listString"    # Ljava/lang/String;
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
    .line 670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "temp":[Ljava/lang/String;
    const/4 v0, 0x2

    .local v0, "i":I
    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 674
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 675
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "temp":[Ljava/lang/String;
    :cond_1
    const-string v4, "SettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEnabledList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-object v2
.end method

.method public static getEntryValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "childPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 514
    if-nez p0, :cond_0

    move-object v0, v2

    .line 521
    :goto_0
    return-object v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    .line 517
    .local v0, "entryValues":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 518
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 519
    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    goto :goto_0
.end method

.method public static getIconId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;IILjava/util/ArrayList;)I
    .locals 4
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "childPosition"    # I
    .param p3, "groupPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 446
    .local p4, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_0

    .line 447
    const/4 v2, -0x1

    .line 455
    :goto_0
    return v2

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 449
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getIconIds()[I

    move-result-object v0

    .line 450
    .local v0, "iconIds":[I
    if-nez v0, :cond_1

    .line 451
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 453
    :cond_1
    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 454
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 455
    :cond_2
    aget v2, v0, p2

    goto :goto_0
.end method

.method public static getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I
    .locals 6
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 422
    if-nez p0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v3

    .line 425
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 427
    .local v2, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getIconIds()[I

    move-result-object v0

    .line 430
    .local v0, "iconIds":[I
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 433
    .local v1, "index":I
    if-ne v1, v3, :cond_2

    .line 435
    const-string v4, "SettingUtils"

    const-string v5, "Fail to find Preference value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->print()V

    goto :goto_0

    .line 439
    :cond_2
    aget v3, v0, v1

    goto :goto_0
.end method

.method public static getParametersLength(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I
    .locals 3
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 503
    if-nez p0, :cond_0

    move v0, v2

    .line 510
    :goto_0
    return v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 506
    .local v0, "len":I
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 507
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v1, :cond_1

    move v0, v2

    .line 508
    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v0, v2

    .line 510
    goto :goto_0
.end method

.method public static getParametersValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 474
    if-nez p0, :cond_0

    .line 475
    const-string v4, "getValueIndex"

    const-string v5, "group == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-object v2

    .line 479
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 480
    .local v3, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v3, :cond_1

    .line 481
    const-string v4, "getValueIndex"

    const-string/jumbo v5, "pref == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    const-string v2, ""

    .line 487
    .local v2, "mValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 498
    :goto_1
    const-string v4, "getValueIndex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_preview_size_key"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_picture_size_key"

    const-string v6, "16x9"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "mPictureSize":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "16x9"

    .line 493
    :goto_2
    goto :goto_1

    .line 492
    :cond_2
    const-string v2, "4x3"

    goto :goto_2

    .line 494
    .end local v1    # "mPictureSize":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingUtils getParametersValue() error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   \r\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getProSettingKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    const/4 v0, 0x1

    .line 842
    .local v0, "isRecordSetting":Z
    if-eqz v0, :cond_0

    .line 843
    const/4 v1, 0x0

    .line 845
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/lenovo/scg/camera/setting/SettingUtils;->PRO_SETTING_KEYS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSupportMtkAudioMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 695
    const/4 v4, 0x0

    .line 696
    .local v4, "mtkclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v5

    if-nez v5, :cond_0

    .line 697
    sput-boolean v6, Lcom/lenovo/scg/camera/CameraUtil;->isSupportedAudio:Z

    move v3, v6

    .line 713
    :goto_0
    return v3

    .line 701
    :cond_0
    if-nez v4, :cond_1

    .line 702
    :try_start_0
    const-string v1, "com.mediatek.common.featureoption.FeatureOption"

    .line 703
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 705
    .end local v1    # "className":Ljava/lang/String;
    :cond_1
    const-string v5, "MTK_AUDIO_HD_REC_SUPPORT"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 706
    .local v0, "audioMode":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 707
    .local v3, "isSupportedAudio":Z
    sput-boolean v3, Lcom/lenovo/scg/camera/CameraUtil;->isSupportedAudio:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    .end local v0    # "audioMode":Ljava/lang/reflect/Field;
    .end local v3    # "isSupportedAudio":Z
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 712
    sput-boolean v6, Lcom/lenovo/scg/camera/CameraUtil;->isSupportedAudio:Z

    move v3, v6

    .line 713
    goto :goto_0
.end method

.method public static getValueIndex(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I
    .locals 5
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 459
    if-nez p0, :cond_0

    .line 460
    const-string v2, "getValueIndex"

    const-string v3, "group == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_0
    return v0

    .line 463
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 464
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v1, :cond_1

    .line 465
    const-string v2, "getValueIndex"

    const-string/jumbo v3, "pref == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, "index":I
    const-string v2, "getValueIndex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 120
    .local v9, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v9, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {v9}, Lcom/lenovo/scg/camera/setting/SettingUtils;->Bubblesort(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 123
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 124
    .local v4, "len":I
    const/16 v8, 0x535

    .line 125
    .local v8, "standard4_3":I
    sget v12, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v12, v12, 0x3e8

    sget v13, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int v6, v12, v13

    .line 126
    .local v6, "screenRatio":I
    const/16 v10, 0x32

    .line 127
    .local v10, "threshold":I
    const/4 v3, 0x0

    .line 128
    .local v3, "isSave4_3PictureSize":Z
    const/4 v2, 0x0

    .line 130
    .local v2, "isIntelPicture":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v12, v4, -0x1

    if-ge v1, v12, :cond_6

    .line 131
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v11, v12, Landroid/hardware/Camera$Size;->width:I

    .line 132
    .local v11, "width":I
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    .line 133
    .local v0, "height":I
    mul-int/lit16 v12, v11, 0x3e8

    div-int v5, v12, v0

    .line 134
    .local v5, "ratio":I
    mul-int v7, v0, v11

    .line 135
    .local v7, "size":I
    sub-int v12, v6, v10

    if-lt v5, v12, :cond_5

    add-int v12, v6, v10

    if-gt v5, v12, :cond_5

    if-nez v3, :cond_5

    .line 137
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isIntelCPU()Z

    move-result v12

    if-eqz v12, :cond_3

    const v12, 0x895440

    if-le v7, v12, :cond_3

    .line 139
    invoke-static {p1, v11, v0, p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setDefaultCameraPictureSize(Landroid/hardware/Camera$Parameters;IILandroid/content/Context;)V

    .line 140
    const/4 v2, 0x1

    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    if-nez v2, :cond_4

    .line 144
    invoke-static {p1, v11, v0, p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setDefaultCameraPictureSize(Landroid/hardware/Camera$Parameters;IILandroid/content/Context;)V

    .line 145
    :cond_4
    invoke-static {v11, v0, p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setDefault16_9CameraPictureSize(IILandroid/content/Context;)V

    .line 146
    const/4 v3, 0x1

    .line 148
    :cond_5
    if-eqz v3, :cond_2

    .line 149
    if-ne v5, v8, :cond_2

    .line 150
    invoke-static {v11, v0, p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setDefault4_3CameraPictureSize(IILandroid/content/Context;)V

    goto :goto_0

    .line 155
    .end local v0    # "height":I
    .end local v5    # "ratio":I
    .end local v7    # "size":I
    .end local v11    # "width":I
    :cond_6
    if-nez v3, :cond_0

    .line 157
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v12, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1, v13, v12, p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setDefaultCameraPictureSize(Landroid/hardware/Camera$Parameters;IILandroid/content/Context;)V

    .line 158
    const-string v12, "SettingUtils"

    const-string v13, "No supported picture size found"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isARlanguage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 572
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "language":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v2, 0x1

    .line 576
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isBuiltList(Ljava/lang/String;)Z
    .locals 4
    .param p0, "listString"    # Ljava/lang/String;

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "isList":Z
    if-eqz p0, :cond_0

    const-string v1, "[L];"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    const/4 v0, 0x1

    .line 649
    :cond_0
    const-string v1, "SettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBuiltList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return v0
.end method

.method public static isCanDisableShutterSound()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 866
    sget-boolean v5, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSoundFlag:Z

    if-eqz v5, :cond_0

    .line 867
    sget-boolean v3, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound:Z

    .line 883
    .local v0, "isCanDisableShutterSound":Z
    .local v1, "isCmcc":Z
    .local v2, "mOperator":Ljava/lang/String;
    :goto_0
    return v3

    .line 871
    .end local v0    # "isCanDisableShutterSound":Z
    .end local v1    # "isCmcc":Z
    .end local v2    # "mOperator":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "ro.lenovo.operator"

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/android/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .restart local v2    # "mOperator":Ljava/lang/String;
    const-string v5, "cmcc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "cmccopen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v1, v4

    .line 875
    .restart local v1    # "isCmcc":Z
    :goto_1
    const-string/jumbo v5, "prc"

    const-string/jumbo v6, "ro.lenovo.region"

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/android/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 876
    .restart local v0    # "isCanDisableShutterSound":Z
    if-eqz v1, :cond_3

    .line 877
    sput-boolean v3, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound:Z

    .line 878
    sput-boolean v4, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSoundFlag:Z

    goto :goto_0

    .end local v0    # "isCanDisableShutterSound":Z
    .end local v1    # "isCmcc":Z
    :cond_2
    move v1, v3

    .line 872
    goto :goto_1

    .line 881
    .restart local v0    # "isCanDisableShutterSound":Z
    .restart local v1    # "isCmcc":Z
    :cond_3
    sput-boolean v0, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound:Z

    .line 882
    sput-boolean v4, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSoundFlag:Z

    move v3, v0

    .line 883
    goto :goto_0
.end method

.method public static isDisableValue(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "reset":Z
    const-string v1, "disable-value"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    const/4 v0, 0x1

    .line 620
    :cond_0
    const-string v1, "SettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isResetValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v0
.end method

.method public static isGPSEnabled()Z
    .locals 3

    .prologue
    .line 726
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 727
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPositiveSequence(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)Z
    .locals 7
    .param p0, "first"    # Landroid/hardware/Camera$Size;
    .param p1, "last"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 525
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 526
    .local v2, "first_w":I
    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    .line 527
    .local v0, "first_h":I
    mul-int v6, v2, v0

    div-int/lit16 v6, v6, 0x3e8

    int-to-float v1, v6

    .line 529
    .local v1, "first_size":F
    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    .line 530
    .local v5, "last_w":I
    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    .line 531
    .local v3, "last_h":I
    mul-int v6, v5, v3

    div-int/lit16 v6, v6, 0x3e8

    int-to-float v4, v6

    .line 533
    .local v4, "last_size":F
    cmpl-float v6, v1, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isRTLlanguage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 581
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readBrightnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 291
    const-string/jumbo v2, "pref_camera_brightness_key_custom"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "brightness":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    :goto_0
    return v2

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readContrastFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 321
    const-string/jumbo v2, "pref_camera_contrast_key_custom"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "sharpness":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 327
    :goto_0
    return v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sharpness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readExposure(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 280
    const-string/jumbo v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "exposure":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 286
    :goto_0
    return v2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readIsoFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 331
    const-string/jumbo v1, "pref_camera_isovalue_key"

    const-string v2, "auto"

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "iso":Ljava/lang/String;
    return-object v0
.end method

.method public static readMeteringFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 345
    const-string v1, "camera_setting_ce_guang_key"

    const-string/jumbo v2, "matrix"

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "metering":Ljava/lang/String;
    return-object v0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 270
    const-string/jumbo v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readQualcommMeteringFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 350
    const-string v1, "camera_setting_ce_guang_key"

    const-string v2, "frame-average"

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "metering":Ljava/lang/String;
    return-object v0
.end method

.method public static readSaturationFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 301
    const-string/jumbo v2, "pref_camera_saturation_key_custom"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "saturation":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 307
    :goto_0
    return v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid saturation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readSharpnessFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 311
    const-string/jumbo v2, "pref_camera_sharpness_key_custom"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "sharpness":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 317
    :goto_0
    return v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sharpness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readVideoHdrFromSharedPreference(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 355
    const-string/jumbo v1, "pref_camera_video_hdr_key"

    const-string/jumbo v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "video_hdr":Ljava/lang/String;
    return-object v0
.end method

.method public static removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z
    .locals 7
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->get(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    move-result-object v0

    .line 168
    .local v0, "child":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    instance-of v3, v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 169
    check-cast v3, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, p1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 179
    .end local v0    # "child":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :goto_1
    return v3

    .line 173
    .restart local v0    # "child":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :cond_0
    instance-of v3, v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .end local v0    # "child":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string/jumbo v3, "removePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 176
    goto :goto_1

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .param p0, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 163
    return-void
.end method

.method public static resetPreferences(Landroid/content/Context;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, -0x1

    .line 370
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 373
    .local v1, "currentCameraId":I
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 374
    .local v0, "backCameraId":I
    if-eq v0, v5, :cond_0

    .line 375
    invoke-virtual {p1, p0, v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 376
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 377
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 380
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 381
    .local v3, "frontCameraId":I
    if-eq v3, v5, :cond_1

    .line 382
    invoke-virtual {p1, p0, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 383
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 384
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 392
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 393
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 398
    invoke-static {p0, p2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 399
    invoke-static {p1, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 400
    return-void
.end method

.method public static setDefault16_9CameraPictureSize(IILandroid/content/Context;)V
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 559
    invoke-static {p2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->get(Landroid/content/Context;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 560
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_picturesize_key_default"

    const-string v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    return-void
.end method

.method public static setDefault4_3CameraPictureSize(IILandroid/content/Context;)V
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    invoke-static {p2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->get(Landroid/content/Context;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_picturesize_key_default_4_3"

    const-string v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 568
    return-void
.end method

.method public static setDefaultCameraPictureSize(Landroid/hardware/Camera$Parameters;IILandroid/content/Context;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 553
    invoke-static {p3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->get(Landroid/content/Context;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_picturesize_key"

    const-string v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    return-void
.end method

.method public static setEnabledState(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    .line 599
    if-eqz p0, :cond_0

    .line 600
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 601
    .local v0, "alpha":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 602
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 604
    .end local v0    # "alpha":F
    :cond_0
    return-void

    .line 600
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public static setEnabledStateExpandable(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    .line 607
    if-eqz p0, :cond_0

    .line 608
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 609
    .local v0, "alpha":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 610
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 612
    .end local v0    # "alpha":F
    :cond_0
    return-void

    .line 608
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 610
    .restart local v0    # "alpha":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setOrientation(Landroid/view/View;IZ)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 585
    if-nez p0, :cond_1

    .line 596
    .end local p0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 588
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v3, p0, Lcom/lenovo/scg/camera/ui/Rotatable;

    if-eqz v3, :cond_2

    .line 589
    check-cast p0, Lcom/lenovo/scg/camera/ui/Rotatable;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 590
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 591
    check-cast v1, Landroid/view/ViewGroup;

    .line 592
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 593
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setOrientation(Landroid/view/View;IZ)V

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 260
    .local v0, "cameraId":I
    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 264
    .local v1, "n":I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 265
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 206
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 207
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x2

    .line 185
    :try_start_0
    const-string/jumbo v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 189
    .local v2, "version":I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 202
    :goto_1
    return-void

    .line 186
    .end local v2    # "version":I
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "version":I
    goto :goto_0

    .line 192
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 197
    const-string/jumbo v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    :cond_1
    const-string/jumbo v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 212
    :try_start_0
    const-string/jumbo v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 216
    .local v3, "version":I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 252
    :goto_1
    return-void

    .line 213
    .end local v3    # "version":I
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "version":I
    goto :goto_0

    .line 219
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 223
    const/4 v3, 0x1

    .line 225
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 227
    const-string/jumbo v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "quality":Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    const-string/jumbo v2, "normal"

    .line 236
    :goto_2
    const/4 v3, 0x2

    .line 238
    .end local v2    # "quality":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 239
    const-string v5, "camera_setting_location_key"

    const-string v4, "camera_setting_location_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const/4 v3, 0x3

    .line 243
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 246
    const-string/jumbo v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string/jumbo v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_4
    const-string/jumbo v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 230
    .restart local v2    # "quality":Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 231
    const-string v2, "fine"

    goto :goto_2

    .line 233
    :cond_6
    const-string/jumbo v2, "superfine"

    goto :goto_2

    .line 239
    .end local v2    # "quality":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "off"

    goto :goto_3
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "cameraId"    # I

    .prologue
    .line 274
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method
