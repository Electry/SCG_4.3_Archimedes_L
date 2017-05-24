.class public Lcom/lenovo/scg/exfeature/ExFeature;
.super Ljava/lang/Object;
.source "ExFeature.java"


# static fields
.field public static final DEF_BUFFER_FORMAT_JpegStream:Ljava/lang/String; = "JpegStream"

.field public static final DEF_BUFFER_FORMAT_RGB888:Ljava/lang/String; = "RGB888"

.field public static final DEF_BUFFER_FORMAT_RGBA8888:Ljava/lang/String; = "RGBA8888"

.field public static final DEF_BUFFER_FORMAT_UnKnown:Ljava/lang/String; = "UnKnown"

.field public static final DEF_BUFFER_FORMAT_YUV:Ljava/lang/String; = "YUV"

.field public static final DEF_BUFFER_FORMAT_YUV420p:Ljava/lang/String; = "YUV420p"

.field public static final DEF_BUFFER_FORMAT_YUV420sp:Ljava/lang/String; = "YUV420sp"

.field public static final DEF_BUFFER_FORMAT_YUV422p:Ljava/lang/String; = "YUV422p"

.field public static final DEF_BUFFER_FORMAT_YUV422sp:Ljava/lang/String; = "YUV422sp"

.field public static final DEF_BUFFER_FORMAT_YUYV422:Ljava/lang/String; = "YUYV422"

.field public static final DEF_BUFFER_FORMAT_YVU420p:Ljava/lang/String; = "YVU420p"

.field public static final DEF_BUFFER_FORMAT_YVU420sp:Ljava/lang/String; = "YVU420sp"

.field public static final DEF_BUFFER_FORMAT_YVU422sp:Ljava/lang/String; = "YVU422sp"

.field public static final DEF_EX_FEATURE_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final DEF_EX_FEATURE_VALUE_ON:Ljava/lang/String; = "on"

.field public static final EX_FEATURE_CALLBACK_EX_TYPE_JPEG:Ljava/lang/String; = "1"

.field public static final EX_FEATURE_CALLBACK_EX_TYPE_YUV:Ljava/lang/String; = "0"

.field public static final EX_FEATURE_CONTINUOUS_SHOT:Ljava/lang/String; = "continuous"

.field public static final EX_FEATURE_CUSTOMED_BURST:Ljava/lang/String; = "customed_burst"

.field public static final EX_FEATURE_HDR:Ljava/lang/String; = "hdr"

.field public static final EX_FEATURE_LOWLIGHT:Ljava/lang/String; = "lowlit"

.field public static final EX_FEATURE_NIGHT_MOVIE:Ljava/lang/String; = "night_movie"

.field public static final EX_FEATURE_NIGHT_PORTRAIT:Ljava/lang/String; = "night_portrait"

.field public static final EX_FEATURE_NORMAL:Ljava/lang/String; = "normal"

.field public static final EX_FEATURE_ONESHOT:Ljava/lang/String; = "once"

.field public static final EX_FEATURE_PANORAMA:Ljava/lang/String; = "panorama"

.field public static final EX_FEATURE_PANORAMA_GENERATION:Ljava/lang/String; = "panorama_generation"

.field public static final EX_FEATURE_VIDEO_ANTISHAKE:Ljava/lang/String; = "video_antishake"

.field public static final KEY_BURST_LENGTH:Ljava/lang/String; = "ex_feature-burst_length"

.field public static final KEY_BURST_MAX_FPS:Ljava/lang/String; = "ex_feature-burst_max_fps"

.field public static final KEY_BURST_SELECT:Ljava/lang/String; = "ex_feature-burst_select"

.field public static final KEY_CALLBACK_EX_TYPE:Ljava/lang/String; = "ex_feature-callback_ex_type"

.field public static final KEY_CONTINUOUS_SHOT_BREAK:Ljava/lang/String; = "ex_feature-continuous_shot_break"

.field public static final KEY_CONTINUOUS_SHOT_SIZE:Ljava/lang/String; = "ex_feature-continuous_shot_max"

.field public static final KEY_EX_ALGORITHM:Ljava/lang/String; = "ex_feature-algorithm"

.field public static final KEY_EX_FEATURE:Ljava/lang/String; = "ex_feature"

.field public static final KEY_EX_FEATURE_CALLBACK_LOSS_FOCUS_ENABLE:Ljava/lang/String; = "ex_feature-lossfocus_enable"

.field public static final KEY_EX_FEATURE_CAM_MODE_MTK:Ljava/lang/String; = "mtk-cam-mode"

.field public static final KEY_EX_FEATURE_DEBUG:Ljava/lang/String; = "ex_feature-debug"

.field public static final KEY_EX_FEATURE_ENABLE:Ljava/lang/String; = "ex_feature-enable"

.field public static final KEY_EX_FEATURE_HARDWARE_ABILITY:Ljava/lang/String; = "lenovo_hardware_ability"

.field public static final KEY_EX_FEATURE_SET_ZSD_STATE:Ljava/lang/String; = "ex_feature-set-zsl-state"

.field public static final KEY_EX_FEATURE_THUMBNAIL_HEIGHT:Ljava/lang/String; = "ex_feature-thumbnail_height"

.field public static final KEY_EX_FEATURE_THUMBNAIL_WIDTH:Ljava/lang/String; = "ex_feature-thumbnail_width"

.field public static final KEY_EX_FEATURE_THUMBNAIL_YUV_HEIGHT:Ljava/lang/String; = "ex_feature-thumbnail_yuv_height"

.field public static final KEY_EX_FEATURE_THUMBNAIL_YUV_WIDTH:Ljava/lang/String; = "ex_feature-thumbnail_yuv_width"

.field public static final KEY_EX_FEATURE_VERSION:Ljava/lang/String; = "ex_feature-version"

.field public static final KEY_EX_FEATURE_VIDEO_NEED_MARGIN:Ljava/lang/String; = "ex_feature-video-margin"

.field public static final KEY_EX_FEATURE_ZSD_MODE_MTK:Ljava/lang/String; = "zsd-mode"

.field public static final KEY_EX_FEATURE_ZSD_QUALCOMM:Ljava/lang/String; = "zsl"

.field public static final KEY_EX_HDR_BRIGHTNESS_LEVEL:Ljava/lang/String; = "ex_feature-set-hdr-brightness"

.field public static final KEY_EX_HDR_DUMP_SWITCHER:Ljava/lang/String; = "ex_feature-set-hdr-dump"

.field public static final KEY_EX_HDR_EV_LEVEL:Ljava/lang/String; = "ex_feature-hdr_ev_level"

.field public static final KEY_EX_HDR_TONE_LEVEL:Ljava/lang/String; = "ex_feature-set-hdr-tone"

.field public static final KEY_EX_LOWLIT_BRIGHTNESS:Ljava/lang/String; = "ex_feature-set-lowlight-light-intensity"

.field public static final KEY_EX_LOWLIT_CONTRAST:Ljava/lang/String; = "ex_feature-set-lowlight-contrast"

.field public static final KEY_EX_LOWLIT_DE_NOISE:Ljava/lang/String; = "ex_feature-set-lowlight-noise-intensity"

.field public static final KEY_EX_LOWLIT_INBUF_CNT:Ljava/lang/String; = "ex_feature-set-lowlight-input-buf-count"

.field public static final KEY_EX_LOWLIT_SATURATION:Ljava/lang/String; = "ex_feature-set-lowlight-saturation"

.field public static final KEY_EX_LOWLIT_SHARPNESS:Ljava/lang/String; = "ex_feature-set-lowlight-sharpness"

.field public static final KEY_GET_CUR_YUV_FORMAT:Ljava/lang/String; = "ex_feature-get-cur-yuv-format"

.field public static final KEY_LOWLIGHT_ALGORITHM:Ljava/lang/String; = "ex_feature-lowlight-algorithm"

.field public static final KEY_PANORAMA_BREAK:Ljava/lang/String; = "ex_feature-panorama_break"

.field public static final KEY_PANORAMA_DIRECTION:Ljava/lang/String; = "ex_feature-panorama_direction"

.field public static final KEY_PANORAMA_FRAMEFACTOR:Ljava/lang/String; = "ex_feature-panorama_framefactor"

.field public static final KEY_PANORAMA_SCALERATE:Ljava/lang/String; = "ex_feature-panorama_scalerate"

.field public static final KEY_SET_CALLBACK_PICTURE_SIZE:Ljava/lang/String; = "ex_feature-picture-size"

.field public static final KEY_SET_CUR_FORMAT:Ljava/lang/String; = "ex_feature-set-cur-format"

.field public static final KEY_SUPPORTED_CONTINUOUS_SHOT_SIZE:Ljava/lang/String; = "ex_feature-conitnuous_shot_size-values"

.field public static final KEY_SUPPORTED_EX_FEATURE:Ljava/lang/String; = "ex_feature-values"

.field public static final LENOVO_HAL_EXF_EATURE_VERSION:Ljava/lang/String; = "2.0.x"

.field public static final LESCF_MSGTYPE_DECIMAL:I = 0x2

.field public static final LESCF_MSGTYPE_ERROR:I = 0x0

.field public static final LESCF_MSGTYPE_HUNDRED:I = 0x3

.field public static final LESCF_MSGTYPE_MYRIABIT:I = 0x5

.field public static final LESCF_MSGTYPE_NORMAL:I = 0x1

.field public static final LESCF_MSGTYPE_THOUSAND:I = 0x4

.field private static final LESCF_MSG_BASE:I = -0x71000000

.field public static final LESCF_MSG_NOTIFY_ALIGN_FAILURE:I = -0x70fffff8

.field public static final LESCF_MSG_NOTIFY_BUF_INPUT:I = -0x71000000

.field public static final LESCF_MSG_NOTIFY_CALLBACK_HAS_NEXT:I = -0x70ffffef

.field public static final LESCF_MSG_NOTIFY_CALLBACK_LOSS_FOCUS:I = -0x70ffffed

.field public static final LESCF_MSG_NOTIFY_CALLBACK_NO_NEXT:I = -0x70ffffee

.field public static final LESCF_MSG_NOTIFY_ERROR_MEMORY_OVERFLOW:I = -0x70fffffc

.field public static final LESCF_MSG_NOTIFY_ERROR_SET_EXFEATURE:I = -0x70ffffeb

.field public static final LESCF_MSG_NOTIFY_ERROR_SET_EXFEATURE_ENABLE:I = -0x70ffffec

.field public static final LESCF_MSG_NOTIFY_ERROR_SET_PROPERTY:I = -0x70ffffea

.field public static final LESCF_MSG_NOTIFY_ERROR_UNKNOWN:I = -0x70fffffb

.field public static final LESCF_MSG_NOTIFY_EV_DEBUG_GET_MAX:I = -0x70ffffe9

.field public static final LESCF_MSG_NOTIFY_EV_DEBUG_GET_MAX_OVERLOOP:I = -0x70ffffe8

.field public static final LESCF_MSG_NOTIFY_EV_DEBUG_GET_MIN:I = -0x70ffffe7

.field public static final LESCF_MSG_NOTIFY_EV_DEBUG_GET_MIN_OVERLOOP:I = -0x70ffffe6

.field public static final LESCF_MSG_NOTIFY_OUT_OF_MEMORY:I = -0x70fffff9

.field public static final LESCF_MSG_NOTIFY_RUN_END:I = -0x70fffffe

.field public static final LESCF_MSG_NOTIFY_RUN_ERROR:I = -0x70fffffd

.field public static final LESCF_MSG_NOTIFY_RUN_START:I = -0x70ffffff

.field public static final LESCF_MSG_NOTIFY_STITCHING:I = -0x70fffffa

.field public static final LESCF_MSG_NOTIFY_STOPPED_BY_ERROR:I = -0x70fffff7

.field public static final LESCF_MSG_NOTIFY_WARNING_ALIGN_FAILURE:I = -0x70fffff3

.field public static final LESCF_MSG_NOTIFY_WARNING_NEED_TO_STOP:I = -0x70fffff6

.field public static final LESCF_MSG_NOTIFY_WARNING_SHAKE_TOO_BIG:I = -0x70fffff4

.field public static final LESCF_MSG_NOTIFY_WARNING_SLOPE:I = -0x70fffff2

.field public static final LESCF_MSG_NOTIFY_WARNING_TOO_FAST:I = -0x70fffff5

.field public static final LESCF_MSG_NOTIFY_WARNING_WRONG_DIRECTION:I = -0x70fffff1

.field public static final LESCF_MSG_NOTIFY_WHOLE_AREA_COMPLETE:I = -0x70fffff0

.field public static final LESCF_MSG_PARAM_BURST_ROTATION:I = -0x70f1fe00

.field public static final LESCF_MSG_PARAM_CALLBACK_BUF_FORMAT:I = -0x70f30000

.field public static final LESCF_MSG_PARAM_CONTINOUS_SHOT_BEGIN:I = -0x70f20000

.field public static final LESCF_MSG_PARAM_CONTINOUS_SHOT_END:I = -0x70f1ff00

.field private static final LESCF_MSG_PARAM_DECIMAL_BASE:I = -0x70f30000

.field public static final LESCF_MSG_PARAM_EV_DEBUG_Y:I = -0x70f1fd00

.field public static final LESCF_MSG_PARAM_FPS:I = -0x70f10000

.field private static final LESCF_MSG_PARAM_HUNDRED_BASE:I = -0x70f20000

.field public static final LESCF_MSG_PARAM_MOVING_DIRECTION:I = -0x70f07000

.field private static final LESCF_MSG_PARAM_MYRIABIT_BASE:I = -0x70f00000

.field public static final LESCF_MSG_PARAM_PANORAMA_INPUT_ROTATION:I = -0x70f1fc00

.field public static final LESCF_MSG_PARAM_PICTURE_HEIGHT:I = -0x70ef0000

.field public static final LESCF_MSG_PARAM_PICTURE_WIDTH:I = -0x70f00000

.field private static final LESCF_MSG_PARAM_THOUSAND_BASE:I = -0x70f10000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_HEIGHT:I = -0x70f0e000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_OFFSET_MINUS_X:I = -0x70f0b000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_OFFSET_MINUS_Y:I = -0x70f09000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_OFFSET_PLUS_X:I = -0x70f0a000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_OFFSET_PLUS_Y:I = -0x70f08000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_WIDTH:I = -0x70f0f000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_YUV_HEIGHT:I = -0x70f0c000

.field public static final LESCF_MSG_PARAM_THUMBNAIL_YUV_WIDTH:I = -0x70f0d000

.field public static final LESCF_MSG_TIMER_CALLBACK_DATA:I = -0x70ffffe0

.field public static final LESCF_MSG_TIMER_CHANGE_FORMAT:I = -0x70ffffe3

.field public static final LESCF_MSG_TIMER_ENCODE_JPEG:I = -0x70ffffe1

.field public static final LESCF_MSG_TIMER_GET_YUV:I = -0x70ffffe4

.field public static final LESCF_MSG_TIMER_NOTIFY_SHUTTER:I = -0x70ffffdf

.field public static final LESCF_MSG_TIMER_RUN_ALGORITHM:I = -0x70ffffe2

.field public static final LESCF_MSG_TIMER_TAKEPICTURE:I = -0x70ffffe5

.field private static final TAG:Ljava/lang/String; = "ExFeatureAPI"

.field public static final eBufFormat_JpegStream:I = 0x1

.field public static final eBufFormat_RGB888:I = 0x2

.field public static final eBufFormat_UnKnown:I = 0x0

.field public static final eBufFormat_YUV420p:I = 0x3

.field public static final eBufFormat_YUV420sp:I = 0x5

.field public static final eBufFormat_YUV422p:I = 0x8

.field public static final eBufFormat_YUV422sp:I = 0x9

.field public static final eBufFormat_YUYV422:I = 0x7

.field public static final eBufFormat_YVU420p:I = 0x4

.field public static final eBufFormat_YVU420sp:I = 0x6

.field public static final eBufFormat_YVU422sp:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExHalVersion(Landroid/hardware/Camera$Parameters;)Z
    .locals 8
    .param p0, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2e

    .line 333
    const-string v4, "ex_feature-version"

    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "version":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 335
    const/4 v4, 0x1

    .line 347
    :goto_0
    return v4

    .line 338
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 339
    .local v0, "n":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 340
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "strHal":Ljava/lang/String;
    const-string v4, "2.0.x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 343
    const-string v4, "2.0.x"

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    const-string v4, "2.0.x"

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "strApp":Ljava/lang/String;
    const-string v4, "ExFeatureAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkExHalVersion LeExHal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LeApp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2.0.x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method public static getBurstRotation(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 378
    const v1, -0x70f1fe00

    sub-int v0, p0, v1

    .line 379
    .local v0, "n":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, -0x1

    .line 383
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getCallBackBufFormat(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 351
    const/high16 v1, -0x70f30000

    sub-int v0, p0, v1

    .line 352
    .local v0, "n":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, -0x1

    .line 356
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getFPS(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 405
    const/high16 v1, -0x70f10000

    sub-int v0, p0, v1

    .line 406
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, -0x1

    .line 410
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getMovingDirection(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 486
    const v1, -0x70f07000

    sub-int v0, p0, v1

    .line 487
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 488
    :cond_0
    const/4 v1, -0x1

    .line 491
    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public static getMsgType(I)I
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 513
    const/high16 v0, -0x71000000

    if-ge p0, v0, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 517
    :cond_0
    const/high16 v0, -0x70f30000

    if-ge p0, v0, :cond_1

    .line 518
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    const/high16 v0, -0x70f20000

    if-ge p0, v0, :cond_2

    .line 522
    const/4 v0, 0x2

    goto :goto_0

    .line 525
    :cond_2
    const/high16 v0, -0x70f10000

    if-ge p0, v0, :cond_3

    .line 526
    const/4 v0, 0x3

    goto :goto_0

    .line 529
    :cond_3
    const/high16 v0, -0x70f00000

    if-ge p0, v0, :cond_4

    .line 530
    const/4 v0, 0x4

    goto :goto_0

    .line 532
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getPanoramaRotation(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 396
    const v1, -0x70f1fc00

    sub-int v0, p0, v1

    .line 397
    .local v0, "n":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 398
    :cond_0
    const/4 v0, -0x1

    .line 401
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getPicEv(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 387
    const v1, -0x70f1fd00

    sub-int v0, p0, v1

    .line 388
    .local v0, "n":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 389
    :cond_0
    const/4 v0, -0x1

    .line 392
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getPictureHeight(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 504
    const/high16 v1, -0x70ef0000

    sub-int v0, p0, v1

    .line 505
    .local v0, "n":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 506
    :cond_0
    const/4 v0, -0x1

    .line 509
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getPictureWidth(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 495
    const/high16 v1, -0x70f00000

    sub-int v0, p0, v1

    .line 496
    .local v0, "n":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 497
    :cond_0
    const/4 v0, -0x1

    .line 500
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getShotBegin(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 360
    const/high16 v1, -0x70f20000

    sub-int v0, p0, v1

    .line 361
    .local v0, "n":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 362
    :cond_0
    const/4 v0, -0x1

    .line 365
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getShotEnd(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 369
    const v1, -0x70f1ff00

    sub-int v0, p0, v1

    .line 370
    .local v0, "n":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, -0x1

    .line 374
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailHeight(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 441
    const v1, -0x70f0e000

    sub-int v0, p0, v1

    .line 442
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 443
    :cond_0
    const/4 v0, -0x1

    .line 446
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailOffsetMinusX(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 450
    const v1, -0x70f0b000

    sub-int v0, p0, v1

    .line 451
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 452
    :cond_0
    const/4 v0, -0x1

    .line 455
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailOffsetMinusY(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 468
    const v1, -0x70f09000

    sub-int v0, p0, v1

    .line 469
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, -0x1

    .line 473
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailOffsetPlusX(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 459
    const v1, -0x70f0a000

    sub-int v0, p0, v1

    .line 460
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 461
    :cond_0
    const/4 v0, -0x1

    .line 464
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailOffsetPlusY(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 477
    const v1, -0x70f08000

    sub-int v0, p0, v1

    .line 478
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 479
    :cond_0
    const/4 v0, -0x1

    .line 482
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailWidth(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 432
    const v1, -0x70f0f000

    sub-int v0, p0, v1

    .line 433
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 434
    :cond_0
    const/4 v0, -0x1

    .line 437
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailYuvHeight(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 423
    const v1, -0x70f0c000

    sub-int v0, p0, v1

    .line 424
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 425
    :cond_0
    const/4 v0, -0x1

    .line 428
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static getThumbnailYuvWidth(I)I
    .locals 2
    .param p0, "msg"    # I

    .prologue
    .line 414
    const v1, -0x70f0d000

    sub-int v0, p0, v1

    .line 415
    .local v0, "n":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 416
    :cond_0
    const/4 v0, -0x1

    .line 419
    .end local v0    # "n":I
    :cond_1
    return v0
.end method

.method public static isValidMsg(I)Z
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 270
    const/high16 v0, -0x71000000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
