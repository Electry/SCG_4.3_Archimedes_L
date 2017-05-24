.class public Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"


# static fields
.field public static final SHORTCUT_ITEM_AEAF:Ljava/lang/String; = "aeaf_separation"

.field public static final SHORTCUT_ITEM_ALL_POSITION:I = 0x14

.field public static final SHORTCUT_ITEM_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field public static final SHORTCUT_ITEM_FLASH:Ljava/lang/String; = "flash"

.field public static final SHORTCUT_ITEM_FUNCTION:Ljava/lang/String; = "function"

.field public static final SHORTCUT_ITEM_HDR:Ljava/lang/String; = "hdr"

.field public static final SHORTCUT_ITEM_LEVEL:Ljava/lang/String; = "level"

.field public static final SHORTCUT_ITEM_LINE:Ljava/lang/String; = "line"

.field public static final SHORTCUT_ITEM_METERING:Ljava/lang/String; = "metering"

.field public static final SHORTCUT_ITEM_NONE:Ljava/lang/String; = "none"

.field public static final SHORTCUT_ITEM_SIZE:Ljava/lang/String; = "size"

.field public static final SHORTCUT_ITEM_SMART:Ljava/lang/String; = "smart"

.field public static final SHORTCUT_ITEM_SOUND:Ljava/lang/String; = "sound"

.field public static final SHORTCUT_ITEM_STORAGE:Ljava/lang/String; = "storage"

.field public static final SHORTCUT_ITEM_TIME:Ljava/lang/String; = "time"

.field public static final SHORTCUT_ITEM_UNION:Ljava/lang/String; = "union"

.field public static final SHORTCUT_ITEM_VIDEO:Ljava/lang/String; = "video"

.field public static final SHORTCUT_ITEM_VIDEOSTABLE:Ljava/lang/String; = "videostable"

.field public static final SHORTCUT_ITEM_VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final SHORTCUT_ITEM_VOICEKEY:Ljava/lang/String; = "voicekey"

.field public static mDrawableText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sKeyName:[Ljava/lang/String;

.field public static sShortcutName:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hdr"

    aput-object v1, v0, v3

    const-string v1, "flash"

    aput-object v1, v0, v4

    const-string v1, "function"

    aput-object v1, v0, v5

    const-string/jumbo v1, "smart"

    aput-object v1, v0, v6

    const-string/jumbo v1, "video"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sound"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "voicekey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "line"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "metering"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "antibanding"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "aeaf_separation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "video_quality"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "storage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sShortcutName:[Ljava/lang/String;

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "camera_setting_smart_pro_key"

    aput-object v1, v0, v3

    const-string v1, "camera_setting_flash_key"

    aput-object v1, v0, v4

    const-string v1, "camera_setting_hdr_key"

    aput-object v1, v0, v5

    const-string v1, "camera_setting_shutter_voice_key"

    aput-object v1, v0, v6

    const-string v1, "camera_setting_takepicture_type_key"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "camera_setting_picture_size_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "camera_setting_ce_guang_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "camera_setting_pin_shan_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "camera_setting_storage_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "camera_setting_shui_ping_yi_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_setting_voice_key_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "camera_setting_video_type_key"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "camera_shortcut_order_saved"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camera_frist_enter_pro"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "camera_setting_ae_af_key"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "camera_setting_video_quality_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sKeyName:[Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableText:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller1"    # Lcom/lenovo/scg/camera/shortcut/ShortcutController;
    .param p3, "controller2"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ShortcutUtil"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->TAG:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    .line 115
    const-string v0, "ShortcutUtil"

    const-string v1, "ShortcutUtil"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAllDrawable()V

    .line 121
    return-void
.end method

.method private getVQualityDrawable(Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 742
    .local v1, "drawables":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "allValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 745
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 749
    :cond_0
    return v3

    .line 744
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getVideoDrawable(Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 618
    .local v1, "drawables":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "allValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 621
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 625
    :cond_0
    return v3

    .line 620
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getVoiceKeyDrawable(Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 590
    .local v1, "drawables":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "allValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 593
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 597
    :cond_0
    return v3

    .line 592
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearAllSavedData()V
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sKeyName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->sKeyName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method public closeAEAF()V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_ae_af_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "aeaf_separation"

    const v2, 0x7f0200b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    return-void
.end method

.method public closeFlash()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFlashDrawable()V

    .line 220
    return-void
.end method

.method public closeHDR()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "hdr"

    const v2, 0x7f0201dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_hdr_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public closeLevel()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "level"

    const v2, 0x7f0201e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public closeSmart()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "smart"

    const v2, 0x7f0203a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_smart_pro_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public closeSound()V
    .locals 3

    .prologue
    .line 290
    const-string v0, "ShortcutUtil"

    const-string v1, "closeSound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sound"

    const v2, 0x7f0203b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_shutter_voice_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    return-void
.end method

.method public closeTime()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "time"

    const v2, 0x7f0203dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_time_print_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public closeUnion()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_union_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "union"

    const v2, 0x7f0203ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-void
.end method

.method public closeVideoStable()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_video_wendingqi_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "videostable"

    const v2, 0x7f020378

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-void
.end method

.method public getDrawableMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public initAEAFDrawable()V
    .locals 5

    .prologue
    .line 715
    const-string v1, "ShortcutUtil"

    const-string v2, "initAEAFDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_ae_af_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "aeaf_separation"

    const v3, 0x7f0200b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "aeaf_separation"

    const v3, 0x7f0200b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initAllDrawable()V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initSmartDrawable()V

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFlashDrawable()V

    .line 126
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initHDRDrawable()V

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initSoundDrawable()V

    .line 129
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFunctionDrawable()V

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initSizeDrawable()V

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLineDrawable()V

    .line 134
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initMeteringDrawable()V

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAntibandingDrawable()V

    .line 136
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initStorageDrawable()V

    .line 138
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initLevelDrawable()V

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVoiceKeyDrawable()V

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVideoDrawable()V

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAEAFDrawable()V

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initVQualityDrawable()V

    .line 147
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initNoneDrawable()V

    .line 148
    return-void
.end method

.method public initAntibandingDrawable()V
    .locals 5

    .prologue
    .line 462
    const-string v1, "ShortcutUtil"

    const-string v2, "initAntibandingDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_pin_shan_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "antibanding"

    const v3, 0x7f0200b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v1, "50hz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "antibanding"

    const v3, 0x7f0200b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    :cond_2
    const-string v1, "60hz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "antibanding"

    const v3, 0x7f0200b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initFlashDrawable()V
    .locals 5

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFlashDrawable value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isFlashAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "flash"

    const v3, 0x7f02036b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "flash"

    const v3, 0x7f020369

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_2
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "flash"

    const v3, 0x7f02036d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_3
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "flash"

    const v3, 0x7f02036a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_4
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "flash"

    const v3, 0x7f02036c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initFunctionDrawable()V
    .locals 6

    .prologue
    .line 305
    const-string v2, "ShortcutUtil"

    const-string v3, "initFunctionDrawable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_takepicture_type_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0004

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "key":I
    const-string v2, "ShortcutUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v3, "function"

    const v4, 0x7f0201d5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v3, "function"

    const v4, 0x7f0201d8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v3, "function"

    const v4, 0x7f0201d7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v3, "function"

    const v4, 0x7f0201d9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v3, "function"

    const v4, 0x7f0201d6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initHDRDrawable()V
    .locals 5

    .prologue
    .line 226
    const-string v1, "ShortcutUtil"

    const-string v2, "initHDRDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_hdr_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "hdr"

    const v3, 0x7f0201dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "hdr"

    const v3, 0x7f0201dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initLevelDrawable()V
    .locals 5

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isLevelAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "level"

    const v3, 0x7f0201e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_shui_ping_yi_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "level"

    const v3, 0x7f0201e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 553
    :cond_2
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "level"

    const v3, 0x7f0201e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initLineDrawable()V
    .locals 5

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isLineAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "line"

    const v3, 0x7f0201f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_goutu_line_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "line"

    const v3, 0x7f0201ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 659
    :cond_2
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "line"

    const v3, 0x7f0201ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 661
    :cond_3
    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 662
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "line"

    const v3, 0x7f0201eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 663
    :cond_4
    const-string v1, "infinite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v2, "line"

    const v3, 0x7f0201ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public initMeteringDrawable()V
    .locals 8

    .prologue
    const v7, 0x7f02020a

    const v6, 0x7f020209

    const v5, 0x7f020208

    .line 425
    const-string v1, "ShortcutUtil"

    const-string v2, "initMeteringDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_ce_guang_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string/jumbo v1, "spot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v1, "average"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    :cond_2
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_3
    const-string/jumbo v1, "matrix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 439
    :cond_4
    const-string v1, "frame-average"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 441
    :cond_5
    const-string v1, "center-weighted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_6
    const-string/jumbo v1, "spot-metering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 445
    :cond_7
    const-string/jumbo v1, "smart-metering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 446
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 447
    :cond_8
    const-string/jumbo v1, "spot-metering-adv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 449
    :cond_9
    const-string v1, "center-weighted-adv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "metering"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public initNoneDrawable()V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "none"

    const v2, 0x7f020375

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    return-void
.end method

.method public initSizeDrawable()V
    .locals 5

    .prologue
    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "size"

    const v3, 0x7f0203a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "size"

    const v3, 0x7f0203a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_2
    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "size"

    const v3, 0x7f0203a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initSmartDrawable()V
    .locals 5

    .prologue
    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_smart_pro_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "smart"

    const v3, 0x7f0203a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "smart"

    const v3, 0x7f0203a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initSoundDrawable()V
    .locals 5

    .prologue
    .line 268
    const-string v1, "ShortcutUtil"

    const-string v2, "initSoundDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_shutter_voice_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "sound"

    const v3, 0x7f0203b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "sound"

    const v3, 0x7f0203b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initStorageDrawable()V
    .locals 5

    .prologue
    .line 487
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_storage_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0015

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "storage"

    const v3, 0x7f0203c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v1, "exsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "storage"

    const v3, 0x7f0203c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initTimeDrawable()V
    .locals 5

    .prologue
    .line 394
    const-string v1, "ShortcutUtil"

    const-string v2, "initTimeDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_time_print_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "time"

    const v3, 0x7f0203dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "time"

    const v3, 0x7f0203dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initUnionDrawable()V
    .locals 5

    .prologue
    .line 689
    const-string v1, "ShortcutUtil"

    const-string v2, "initUnionDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_union_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f001e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "union"

    const v3, 0x7f0203ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "union"

    const v3, 0x7f0203f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initVQualityDrawable()V
    .locals 5

    .prologue
    .line 753
    const-string v1, "ShortcutUtil"

    const-string v2, "initVQualityDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_quality_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isVideoInDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "video_quality"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getVQualityDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "video_quality"

    const v3, 0x7f02037a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initVideoDrawable()V
    .locals 5

    .prologue
    .line 629
    const-string v1, "ShortcutUtil"

    const-string v2, "initVideoDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "value":Ljava/lang/String;
    const-string v1, "ShortcutUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "video"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getVideoDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public initVideostableDrawable()V
    .locals 5

    .prologue
    .line 516
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_wendingqi_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "videostable"

    const v3, 0x7f020379

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "videostable"

    const v3, 0x7f020378

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initVoiceKeyDrawable()V
    .locals 5

    .prologue
    .line 601
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_voice_key_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v2, "voicekey"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->getVoiceKeyDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return-void
.end method

.method public isAntibandingInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0019

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_pin_shan_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlashAvailable()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isHdrOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f000f

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_flash_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFunctionInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0004

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_takepicture_type_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHDRInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f001c

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_hdr_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHdrOpen()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_hdr_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0f001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLevelAvailable()Z
    .locals 5

    .prologue
    .line 570
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 576
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLevelInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0010

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_shui_ping_yi_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLineAvailable()Z
    .locals 5

    .prologue
    .line 670
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const/4 v1, 0x0

    .line 676
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLineInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0006

    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_goutu_line_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMeteringInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0007

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_ce_guang_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSizeInDefault()Z
    .locals 5

    .prologue
    const v4, 0x7f0f0002

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_square_pic_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_picture_size_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSmartInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0020

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_smart_pro_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSoundInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0018

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_shutter_voice_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStorageInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0015

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_storage_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTimeInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0003

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_time_print_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVQualityAvailable()Z
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->isVideoInDefault()Z

    move-result v0

    return v0
.end method

.method public isVQualityInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0009

    .line 768
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_video_quality_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f001d

    .line 639
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_video_type_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideostableInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f000c

    .line 536
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_video_wendingqi_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyInDefault()Z
    .locals 4

    .prologue
    const v3, 0x7f0f0012

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_voice_key_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openAEAF()V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_ae_af_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "aeaf_separation"

    const v2, 0x7f0200b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    return-void
.end method

.method public openHDR()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "hdr"

    const v2, 0x7f0201dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_hdr_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public openLevel()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, "level"

    const v2, 0x7f0201e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method

.method public openSmart()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "smart"

    const v2, 0x7f0203a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_smart_pro_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public openSound()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "ShortcutUtil"

    const-string/jumbo v1, "openSound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sound"

    const v2, 0x7f0203b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_shutter_voice_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method

.method public openTime()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "time"

    const v2, 0x7f0203dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_time_print_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public openUnion()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_union_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "union"

    const v2, 0x7f0203f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method public openVideoStable()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_video_wendingqi_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "videostable"

    const v2, 0x7f020379

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method public resetAllData()V
    .locals 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_smart_pro_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_hdr_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_flash_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_shutter_voice_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_takepicture_type_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_picture_size_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_time_print_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_ce_guang_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_pin_shan_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_storage_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_video_wendingqi_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_shui_ping_yi_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_voice_key_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_video_type_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_goutu_line_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_union_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_ae_af_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_video_quality_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public selectPhone()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_storage_key"

    const-string/jumbo v2, "phone"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "storage"

    const v2, 0x7f0203c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public selectSdcard()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_storage_key"

    const-string/jumbo v2, "sdcard"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->mDrawableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "storage"

    const v2, 0x7f0203c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method
