.class public Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;
.super Ljava/lang/Object;
.source "ExpandableSettingListConfig.java"


# static fields
.field public static final COMMON_TAB_CHILD_BACK_OR_FRONT:[I

.field public static final COMMON_TAB_CHILD_BACK_OR_FRONT_V4:[I

.field public static final COMMON_TAB_CHILD_FOR_SCENE:[I

.field public static final COMMON_TAB_CHILD_FOR_SCENE_V4:[I

.field public static final COMMON_TAB_CHILD_ICON_IDS:[I

.field public static final COMMON_TAB_CHILD_ICON_IDS_V4:[I

.field public static final COMMON_TAB_CHILD_KEYS:[Ljava/lang/String;

.field public static final COMMON_TAB_CHILD_KEYS_V4:[Ljava/lang/String;

.field public static final COMMON_TAB_CHILD_TILDS:[I

.field public static final COMMON_TAB_CHILD_TILDS_V4:[I

.field public static final SETTING_GROUP_EXTEND_FOR_TAB:[Ljava/lang/String;

.field public static final SETTING_GROUP_EXTEND_FOR_TAB_FRONT_OR_BACK:[I

.field public static final SETTING_GROUP_EXTEND_FOR_TAB_FRONT_OR_BACK_V4:[I

.field public static final SETTING_GROUP_EXTEND_FOR_TAB_SCENE:[I

.field public static final SETTING_GROUP_EXTEND_FOR_TAB_SCENE_V4:[I

.field public static final SETTING_GROUP_EXTEND_FOR_TAB_V4:[Ljava/lang/String;

.field public static final SETTING_GROUP_EXTEND_IMAGE_FOR_TAB:[I

.field public static final SETTING_GROUP_EXTEND_IMAGE_FOR_TAB_V4:[I

.field public static final SETTING_GROUP_EXTEND_TITLE_FOR_TAB:[I

.field public static final SETTING_GROUP_EXTEND_TITLE_FOR_TAB_V4:[I

.field public static final SETTING_GROUP_OTHER_FOR_TAB:[Ljava/lang/String;

.field public static final SETTING_GROUP_OTHER_FOR_TAB_FRONT_OR_BACK:[I

.field public static final SETTING_GROUP_OTHER_FOR_TAB_FRONT_OR_BACK_V4:[I

.field public static final SETTING_GROUP_OTHER_FOR_TAB_SCENE:[I

.field public static final SETTING_GROUP_OTHER_FOR_TAB_SCENE_V4:[I

.field public static final SETTING_GROUP_OTHER_FOR_TAB_V4_ENG:[Ljava/lang/String;

.field public static final SETTING_GROUP_OTHER_FOR_TAB_V4_USER:[Ljava/lang/String;

.field public static final SETTING_GROUP_OTHER_IMAGE_FOR_TAB:[I

.field public static final SETTING_GROUP_OTHER_IMAGE_FOR_TAB_V4:[I

.field public static final SETTING_GROUP_OTHER_TITLE_FOR_TAB:[I

.field public static final SETTING_GROUP_OTHER_TITLE_FOR_TAB_V4:[I

.field public static isVersion4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x7

    .line 15
    sput-boolean v6, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->isVersion4:Z

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_setting_preview_size_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_picture_size_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "camera_setting_square_pic_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_takepicture_type_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "camera_setting_smart_pro_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_setting_hdr_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_goutu_line_key"

    aput-object v1, v0, v4

    const-string v1, "camera_setting_camera_effect_key"

    aput-object v1, v0, v3

    const-string v1, "camera_setting_time_print_key"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "camera_setting_focus_type_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_setting_ce_guang_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "camera_setting_ae_af_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_KEYS_V4:[Ljava/lang/String;

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_TILDS_V4:[I

    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_ICON_IDS_V4:[I

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_BACK_OR_FRONT_V4:[I

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_FOR_SCENE_V4:[I

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_setting_video_quality_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_video_type_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "camera_setting_video_focus_type_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_V4:[Ljava/lang/String;

    .line 124
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_TITLE_FOR_TAB_V4:[I

    .line 131
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_IMAGE_FOR_TAB_V4:[I

    .line 139
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_FRONT_OR_BACK_V4:[I

    .line 151
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_SCENE_V4:[I

    .line 187
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_setting_flash_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_voice_key_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "camera_setting_shutter_voice_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_location_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "camera_setting_watch_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_setting_pin_shan_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_shui_ping_yi_key"

    aput-object v1, v0, v4

    const-string v1, "camera_setting_quick_launch_key"

    aput-object v1, v0, v3

    const-string v1, "camera_setting_fringer_key"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "camera_setting_storage_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_setting_reset_to_default_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "camera_setting_developer_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_V4_ENG:[Ljava/lang/String;

    .line 208
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_setting_flash_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_voice_key_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "camera_setting_shutter_voice_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_location_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "camera_setting_watch_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_setting_pin_shan_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_shui_ping_yi_key"

    aput-object v1, v0, v4

    const-string v1, "camera_setting_quick_launch_key"

    aput-object v1, v0, v3

    const-string v1, "camera_setting_fringer_key"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "camera_setting_storage_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "camera_setting_reset_to_default_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_V4_USER:[Ljava/lang/String;

    .line 241
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_IMAGE_FOR_TAB_V4:[I

    .line 260
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_TITLE_FOR_TAB_V4:[I

    .line 282
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_FRONT_OR_BACK_V4:[I

    .line 309
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_SCENE_V4:[I

    .line 419
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string/jumbo v2, "pref_camera_effect_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_jpeg_qual_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "pref_camera_auxiliaryline_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "camera_setting_storage_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_KEYS:[Ljava/lang/String;

    .line 427
    new-array v0, v4, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_TILDS:[I

    .line 436
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_ICON_IDS:[I

    .line 444
    new-array v0, v3, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_BACK_OR_FRONT:[I

    .line 454
    new-array v0, v3, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->COMMON_TAB_CHILD_FOR_SCENE:[I

    .line 465
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_video_quality_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_isovalue_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_antibanding_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "pref_camera_touch_shoot_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pref_camera_sound_capture_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_ce_guang_key"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB:[Ljava/lang/String;

    .line 477
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_setting_location_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string/jumbo v2, "pref_camera_animate_capture_key"

    aput-object v2, v0, v1

    const-string/jumbo v1, "pref_camera_focus_mode_key"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "pref_camera_volume_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pref_camera_screen_brightness_key"

    aput-object v2, v0, v1

    const-string v1, "camera_setting_reset_to_default_key"

    aput-object v1, v0, v4

    const-string v1, "camera_setting_about_info_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB:[Ljava/lang/String;

    .line 485
    new-array v0, v3, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_IMAGE_FOR_TAB:[I

    .line 495
    new-array v0, v7, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_IMAGE_FOR_TAB:[I

    .line 506
    new-array v0, v3, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_TITLE_FOR_TAB:[I

    .line 516
    new-array v0, v7, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_TITLE_FOR_TAB:[I

    .line 526
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_FRONT_OR_BACK:[I

    .line 538
    new-array v0, v7, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_FRONT_OR_BACK:[I

    .line 553
    new-array v0, v3, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_EXTEND_FOR_TAB_SCENE:[I

    .line 565
    new-array v0, v7, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_SCENE:[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x7f0f00d4
        0x7f0f00d5
        0x7f0f00de
        0x7f0f00d7
        0x7f0f00d8
        0x7f0f00d9
        0x7f0f00db
        0x7f0f05f6
        0x7f0f00d6
        0x7f0f00da
        0x7f0f00dc
        0x7f0f00dd
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
        0x7f0202f1
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 86
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 124
    :array_4
    .array-data 4
        0x7f0f04e5
        0x7f0f00c6
        0x7f0f00cd
    .end array-data

    .line 131
    :array_5
    .array-data 4
        0x7f0202d6
        0x7f0202d6
        0x7f020300
    .end array-data

    .line 139
    :array_6
    .array-data 4
        0x2
        0x0
        0x2
        0x0
        0x0
        0x2
    .end array-data

    .line 151
    :array_7
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 241
    :array_8
    .array-data 4
        0x7f02034d
        0x7f02034c
        0x7f02033a
        0x7f020302
        0x7f02031b
        0x7f0202f8
        0x7f0202f8
        0x7f0202f8
        0x7f0202f8
        0x7f0202f8
        0x7f0202f8
        0x7f0202cc
    .end array-data

    .line 260
    :array_9
    .array-data 4
        0x7f0f00df
        0x7f0f00e2
        0x7f0f00e9
        0x7f0f00e1
        0x7f0f00ec
        0x7f0f00ea
        0x7f0f00e0
        0x7f0f00e8
        0x7f0f00e3
        0x7f0f00e5
        0x7f0f00e4
        0x7f0f00e7
        0x7f0f00ef
    .end array-data

    .line 282
    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 309
    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 427
    :array_c
    .array-data 4
        0x7f0f04f3
        0x7f0f052c
        0x7f0f05f6
        0x7f0f016f
        0x7f0f0166
        0x7f0f018c
    .end array-data

    .line 436
    :array_d
    .array-data 4
        0x7f0202d6
        0x7f02032b
        0x7f020339
        0x7f0202c7
        0x7f0202f3
        0x7f02031e
    .end array-data

    .line 444
    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 454
    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 485
    :array_10
    .array-data 4
        0x7f0202d6
        0x7f020300
        0x7f02034f
        0x7f020321
        0x7f0202c8
        0x7f020359
        0x7f020318
    .end array-data

    .line 495
    :array_11
    .array-data 4
        0x7f02034d
        0x7f02034c
        0x7f02031c
        0x7f02033a
        0x7f020302
        0x7f02031b
        0x7f020328
        0x7f0202f8
    .end array-data

    .line 506
    :array_12
    .array-data 4
        0x7f0f04e5
        0x7f0f05fa
        0x7f0f051f
        0x7f0f0156
        0x7f0f0190
        0x7f0f0188
        0x7f0f0174
    .end array-data

    .line 516
    :array_13
    .array-data 4
        0x7f0f05f9
        0x7f0f0187
        0x7f0f0153
        0x7f0f050b
        0x7f0f0194
        0x7f0f0183
        0x7f0f045c
        0x7f0f05fc
    .end array-data

    .line 526
    :array_14
    .array-data 4
        0x2
        0x0
        0x2
        0x0
        0x0
        0x2
        0x0
    .end array-data

    .line 538
    :array_15
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 553
    :array_16
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x0
    .end array-data

    .line 565
    :array_17
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetOtherKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "SETTING_GROUP_OTHER_FOR_TAB_V4":[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    sget-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_V4_USER:[Ljava/lang/String;

    .line 236
    :goto_0
    return-object v0

    .line 233
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListConfig;->SETTING_GROUP_OTHER_FOR_TAB_V4_ENG:[Ljava/lang/String;

    goto :goto_0
.end method
