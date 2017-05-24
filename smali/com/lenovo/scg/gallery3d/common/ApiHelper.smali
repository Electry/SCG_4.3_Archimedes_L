.class public Lcom/lenovo/scg/gallery3d/common/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AT_LEAST_16:Z

.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final ENABLE_PHOTO_EDITOR:Z

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_FOCUS_AREA:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_METERING_AREA:Z

.field public static final HAS_CANCELLATION_SIGNAL:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_EFFECTS_RECORDING:Z

.field public static final HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

.field public static final HAS_FACE_DETECTION:Z

.field public static final HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

.field public static final HAS_GET_CAMERA_DISABLED:Z

.field public static final HAS_GET_SUPPORTED_VIDEO_SIZE:Z

.field public static final HAS_GLES20_REQUIRED:Z

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_MEDIA_MUXER:Z

.field public static final HAS_MEDIA_PROVIDER_FILES_TABLE:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_MTP:Z

.field public static final HAS_OBJECT_ANIMATION:Z

.field public static final HAS_OLD_PANORAMA:Z

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REMOTE_VIEWS_SERVICE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final HAS_SET_ICON_ATTRIBUTE:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z

.field public static final HAS_SURFACE_TEXTURE:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HAS_TIME_LAPSE_RECORDING:Z

.field public static final HAS_VIEW_PROPERTY_ANIMATOR:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

.field public static final HAS_VIEW_TRANSFORM_PROPERTIES:Z

.field public static final HAS_ZOOM_WHEN_RECORDING:Z

.field public static final USE_888_PIXEL_FORMAT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x10

    const/16 v8, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->AT_LEAST_16:Z

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_2

    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->ENABLE_PHOTO_EDITOR:Z

    .line 51
    const-class v2, Landroid/view/View;

    const-string v5, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    .line 54
    const-class v2, Landroid/view/View;

    const-string v5, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    .line 57
    const-class v2, Landroid/provider/MediaStore$MediaColumns;

    const-string v5, "WIDTH"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_3

    move v2, v3

    :goto_3
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_4

    move v2, v3

    :goto_4
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_5

    move v2, v3

    :goto_5
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    .line 69
    const-string v2, "android.graphics.SurfaceTexture"

    const-string/jumbo v5, "setDefaultBufferSize"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    .line 73
    const-string v2, "android.graphics.SurfaceTexture"

    const-string/jumbo v5, "release"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_6

    move v2, v3

    :goto_6
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v2, v5, :cond_7

    move v2, v3

    :goto_7
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MTP:Z

    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_8

    move v2, v3

    :goto_8
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_9

    move v2, v3

    :goto_9
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    .line 88
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_a

    move v2, v3

    :goto_a
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    .line 91
    const-class v2, Landroid/view/View;

    const-string/jumbo v5, "setSystemUiVisibility"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "hasFaceDetection":Z
    :try_start_0
    const-string v2, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "setFaceDetectionListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "startFaceDetection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v5, "stopFaceDetection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v5, "getMaxNumDetectedFaces"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_b

    move v0, v3

    .line 107
    .end local v1    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    .line 110
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    const-string v5, "getCameraDisabled"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    .line 113
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_c

    move v2, v3

    :goto_c
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_d

    move v2, v3

    :goto_d
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_e

    move v2, v3

    :goto_e
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_f

    move v2, v3

    :goto_f
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    .line 125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_10

    move v2, v3

    :goto_10
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_11

    move v2, v3

    :goto_11
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_12

    move v2, v3

    :goto_12
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    .line 134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_13

    move v2, v3

    :goto_13
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_14

    move v2, v3

    :goto_14
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    .line 143
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_15

    move v2, v3

    :goto_15
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_16

    move v2, v3

    :goto_16
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_17

    move v2, v3

    :goto_17
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_18

    move v2, v3

    :goto_18
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_19

    move v2, v3

    :goto_19
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1a

    move v2, v3

    :goto_1a
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_1b

    move v2, v3

    :goto_1b
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 165
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_1c

    move v2, v3

    :goto_1c
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_1d

    move v2, v3

    :goto_1d
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    .line 171
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v2, v5, :cond_1e

    move v2, v3

    :goto_1e
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_1f

    move v2, v3

    :goto_1f
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    .line 177
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_20

    move v2, v3

    :goto_20
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    .line 180
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_21

    move v2, v3

    :goto_21
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OBJECT_ANIMATION:Z

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_22

    move v2, v3

    :goto_22
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    .line 186
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v5, "rotationAnimation"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_23

    move v2, v3

    :goto_23
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_24

    move v2, v3

    :goto_24
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CANCELLATION_SIGNAL:Z

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_25

    move v2, v3

    :goto_25
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    .line 198
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_26

    :goto_26
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    return-void

    .end local v0    # "hasFaceDetection":Z
    :cond_0
    move v2, v4

    .line 43
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 45
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 48
    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 60
    goto/16 :goto_3

    :cond_4
    move v2, v4

    .line 63
    goto/16 :goto_4

    :cond_5
    move v2, v4

    .line 66
    goto/16 :goto_5

    :cond_6
    move v2, v4

    .line 76
    goto/16 :goto_6

    :cond_7
    move v2, v4

    .line 79
    goto/16 :goto_7

    :cond_8
    move v2, v4

    .line 82
    goto/16 :goto_8

    :cond_9
    move v2, v4

    .line 85
    goto/16 :goto_9

    :cond_a
    move v2, v4

    .line 88
    goto/16 :goto_a

    .restart local v0    # "hasFaceDetection":Z
    .restart local v1    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move v0, v4

    .line 100
    goto/16 :goto_b

    .end local v1    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move v2, v4

    .line 113
    goto/16 :goto_c

    :cond_d
    move v2, v4

    .line 116
    goto/16 :goto_d

    :cond_e
    move v2, v4

    .line 119
    goto/16 :goto_e

    :cond_f
    move v2, v4

    .line 122
    goto/16 :goto_f

    :cond_10
    move v2, v4

    .line 125
    goto/16 :goto_10

    :cond_11
    move v2, v4

    .line 128
    goto/16 :goto_11

    :cond_12
    move v2, v4

    .line 131
    goto/16 :goto_12

    :cond_13
    move v2, v4

    .line 134
    goto/16 :goto_13

    :cond_14
    move v2, v4

    .line 140
    goto/16 :goto_14

    :cond_15
    move v2, v4

    .line 143
    goto/16 :goto_15

    :cond_16
    move v2, v4

    .line 146
    goto/16 :goto_16

    :cond_17
    move v2, v4

    .line 149
    goto/16 :goto_17

    :cond_18
    move v2, v4

    .line 152
    goto/16 :goto_18

    :cond_19
    move v2, v4

    .line 155
    goto/16 :goto_19

    :cond_1a
    move v2, v4

    .line 159
    goto/16 :goto_1a

    :cond_1b
    move v2, v4

    .line 162
    goto/16 :goto_1b

    :cond_1c
    move v2, v4

    .line 165
    goto/16 :goto_1c

    :cond_1d
    move v2, v4

    .line 168
    goto/16 :goto_1d

    :cond_1e
    move v2, v4

    .line 171
    goto/16 :goto_1e

    :cond_1f
    move v2, v4

    .line 174
    goto/16 :goto_1f

    :cond_20
    move v2, v4

    .line 177
    goto/16 :goto_20

    :cond_21
    move v2, v4

    .line 180
    goto/16 :goto_21

    :cond_22
    move v2, v4

    .line 183
    goto/16 :goto_22

    :cond_23
    move v2, v4

    .line 189
    goto/16 :goto_23

    :cond_24
    move v2, v4

    .line 192
    goto/16 :goto_24

    :cond_25
    move v2, v4

    .line 195
    goto :goto_25

    :cond_26
    move v3, v4

    .line 198
    goto :goto_26

    .line 105
    :catch_0
    move-exception v2

    goto/16 :goto_b
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultVal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 205
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 207
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local p3    # "defaultVal":I
    :goto_0
    return p3

    .line 206
    .restart local p3    # "defaultVal":I
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v1, 0x1

    .line 237
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v2, 0x1

    .line 227
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "th":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method
