.class public abstract Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;
.source "LeSCFBaseModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;,
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;,
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;,
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;,
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;,
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
    }
.end annotation


# static fields
.field public static final MODE_ARGS_BURST_LENGTH:I = 0x2

.field public static final MODE_ARGS_BURST_LENGTH_VALUE_MAX:I = 0x64

.field public static final MODE_ARGS_MAX_FPS:I = 0x3

.field public static final MODE_ARGS_MAX_FPS_VALUE_MAX:I = 0x64

.field public static final MODE_ARGS_PICTURE_FORMAT:I = 0x1

.field protected static final MODE_STATUS_3RD:I = 0x1

.field protected static final MODE_STATUS_CONTINUOUS_SHOT:I = 0x6

.field protected static final MODE_STATUS_CUSTOMED_BURST:I = 0x5

.field protected static final MODE_STATUS_DEFAULT:I = 0x0

.field protected static final MODE_STATUS_HDR:I = 0x2

.field protected static final MODE_STATUS_LOWLIGHT:I = 0x3

.field protected static final MODE_STATUS_NIGHT_PORTRAIT:I = 0x4

.field protected static final MODE_STATUS_ONE_SHOT:I = 0x8

.field protected static final MODE_STATUS_PANORAMA:I = 0x7

.field public static final NOTIFY_BUF_INPUT:I = 0x1

.field public static final NOTIFY_ERROR_MEMORY_OVERFLOW:I = 0x5

.field public static final NOTIFY_ERROR_UNKNOWN:I = 0x6

.field public static final NOTIFY_LOSS_FOCUS:I = 0x7

.field public static final NOTIFY_RUN_END:I = 0x3

.field public static final NOTIFY_RUN_ERROR:I = 0x4

.field public static final NOTIFY_RUN_START:I = 0x2

.field public static final PICTURE_CALLBACK_FORMAT_JPEG:I = 0x0

.field public static final PICTURE_CALLBACK_FORMAT_RGB:I = 0x2

.field public static final PICTURE_CALLBACK_FORMAT_YUV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFBaseModeStub"


# instance fields
.field private bRestartPreviewOnTakenPic:Z

.field private mCallbackBufFormat:I

.field private mDataCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;

.field private mListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;

.field protected mModeStatus:I

.field protected mModeSupportZSD:Z

.field protected mbNeedCommitParam:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 62
    iput v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    .line 64
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mbNeedCommitParam:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->bRestartPreviewOnTakenPic:Z

    .line 68
    iput v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mCallbackBufFormat:I

    .line 71
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeSupportZSD:Z

    .line 122
    return-void
.end method

.method private changeExZslState(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "on"    # Z

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeExZslState zsl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null == param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz p2, :cond_2

    .line 220
    const-string v0, "ex_feature-set-zsl-state"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 222
    :cond_2
    const-string v0, "ex_feature-set-zsl-state"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private closeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "type"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    .prologue
    const/4 v2, 0x1

    .line 304
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object p1

    .line 307
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    .line 309
    .local v0, "hardwareType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 310
    const-string/jumbo v1, "zsl"

    const-string/jumbo v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    if-ne v0, v2, :cond_0

    .line 312
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    if-ne p2, v1, :cond_3

    .line 313
    const-string/jumbo v1, "mtk-cam-mode"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v1, "zsd-mode"

    const-string/jumbo v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_3
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_VIDEO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_3RD_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_3RD_VIDEO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    if-ne p2, v1, :cond_0

    .line 317
    :cond_4
    const-string/jumbo v1, "mtk-cam-mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private commitParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mbNeedCommitParam:Z

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-object p1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitParam  mModeStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mbNeedCommitParam:Z

    .line 365
    const-string v0, "ex_feature-enable"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getSupportZSD()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    const-string v0, "[lescf_app] LeSCFBaseModeStub"

    const-string v1, "kbg374, if enable, set ex zsl state feature on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "ex_feature-set-zsl-state"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "[lescf_app] LeSCFBaseModeStub"

    const-string v1, "kbg374, if enable, set ex zsl state feature off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "ex_feature-set-zsl-state"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNotifyBase(I)Z
    .locals 7
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "bRet":Z
    const/4 v2, -0x1

    .line 411
    .local v2, "nTmp":I
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getMsgType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 508
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v3, v0

    .line 512
    :goto_1
    return v3

    .line 413
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :pswitch_1
    sparse-switch p1, :sswitch_data_0

    .line 446
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LeFeature unknown msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 418
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_BUF_INPUT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_2
    const/4 v0, 0x1

    .line 451
    goto :goto_0

    .line 422
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_RUN_START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 426
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_RUN_END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 430
    :sswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_RUN_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 434
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_ERROR_MEMORY_OVERFLOW"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 438
    :sswitch_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_ERROR_UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 442
    :sswitch_6
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_CALLBACK_LOSS_FOCUS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 453
    :pswitch_2
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getCallBackBufFormat(I)I

    move-result v2

    .line 454
    if-le v2, v5, :cond_0

    .line 455
    const/4 v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mCallbackBufFormat:I

    .line 457
    const-string v1, ""

    .line 458
    .local v1, "displayFormat":Ljava/lang/String;
    packed-switch v2, :pswitch_data_1

    .line 486
    :pswitch_3
    const-string v1, "eBufFormat_UnKnown"

    .line 490
    :goto_3
    const/4 v0, 0x1

    .line 491
    iget-object v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;->OnDebugNotify(I)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature msg: mCallbackBufFormat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    :pswitch_4
    const-string v1, "eBufFormat_YUV420sp"

    .line 461
    goto :goto_3

    .line 463
    :pswitch_5
    const-string v1, "eBufFormat_JpegStream"

    .line 464
    iput v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mCallbackBufFormat:I

    goto :goto_3

    .line 467
    :pswitch_6
    const-string v1, "eBufFormat_YUV420p"

    .line 468
    goto :goto_3

    .line 470
    :pswitch_7
    const-string v1, "eBufFormat_RGB888"

    .line 471
    const/4 v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mCallbackBufFormat:I

    goto :goto_3

    .line 474
    :pswitch_8
    const-string v1, "eBufFormat_YVU420p"

    .line 475
    goto :goto_3

    .line 477
    :pswitch_9
    const-string v1, "eBufFormat_YVU420sp"

    .line 478
    goto :goto_3

    .line 480
    :pswitch_a
    const-string v1, "eBufFormat_YUV422sp"

    .line 481
    goto :goto_3

    .line 483
    :pswitch_b
    const-string v1, "eBufFormat_YVU422sp"

    .line 484
    goto :goto_3

    .line 496
    .end local v1    # "displayFormat":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 499
    :pswitch_d
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getFPS(I)I

    move-result v2

    .line 500
    if-le v2, v5, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FPS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-float v5, v2

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    .line 503
    goto/16 :goto_0

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 416
    :sswitch_data_0
    .sparse-switch
        -0x71000000 -> :sswitch_0
        -0x70ffffff -> :sswitch_1
        -0x70fffffe -> :sswitch_2
        -0x70fffffd -> :sswitch_3
        -0x70fffffc -> :sswitch_4
        -0x70fffffb -> :sswitch_5
        -0x70ffffed -> :sswitch_6
    .end sparse-switch

    .line 458
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private openZSDMode(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x1

    .line 286
    if-nez p1, :cond_1

    .line 287
    const-string v1, "[lescf_app] LeSCFBaseModeStub"

    const-string/jumbo v2, "openZSDMode with parameter null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-object p1

    .line 291
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    .line 293
    .local v0, "hardwareType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 294
    const-string/jumbo v1, "zsl"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    if-ne v0, v2, :cond_0

    .line 296
    const-string/jumbo v1, "mtk-cam-mode"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 297
    const-string/jumbo v1, "zsd-mode"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public OnNotifyCallback(I)Z
    .locals 4
    .param p1, "what"    # I

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->isValidMsg(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnNotifyCallback msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->handleNotifyBase(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->handleNotify(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera lescf ignore notify : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnPictureCallback([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->handleOnPictureCallback([B)Z

    move-result v0

    return v0
.end method

.method public changeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mode"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
    .param p3, "type"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, changeZSDmode\uff0c mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez p1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 247
    :cond_0
    if-nez p1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->setZSDModeParam(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 253
    .local v0, "tmpParameter":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 255
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    if-ne p2, v1, :cond_2

    .line 256
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->changeExZslState(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0

    .line 258
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->changeExZslState(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0
.end method

.method public enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter mModeStatus from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "param == null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->commitParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_0
.end method

.method public enter(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enter ! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-nez p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 156
    :cond_0
    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "param == null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->commitParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_0
.end method

.method public exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "param == null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit  mModeStatus to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->commitParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    .line 196
    return-void
.end method

.method protected abstract exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
.end method

.method public getBufFormatOnTakenPic()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mCallbackBufFormat:I

    return v0
.end method

.method public getRestartPreviewOnTakenPic()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->bRestartPreviewOnTakenPic:Z

    return v0
.end method

.method protected abstract getSupportZSD()Z
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "[lescf_app] LeSCFBaseModeStub"

    return-object v0
.end method

.method protected handleNotify(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected handleOnPictureCallback([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnPictureCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mDataCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mDataCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;->OnLeSCFPictureTaken([B)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    .line 556
    return-void
.end method

.method protected setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    iget v2, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mName:I

    if-eq v1, v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    iget v2, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    if-nez v2, :cond_2

    .line 329
    const-string v0, "ex_feature-callback_ex_type"

    const-string v2, "1"

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    iget v2, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    if-ne v2, v1, :cond_0

    .line 334
    const-string v0, "ex_feature-callback_ex_type"

    const-string v2, "0"

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 335
    goto :goto_0
.end method

.method protected setExFeatureOnAndUpdateParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setExFeatureOnAndUpdateParam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mModeStatus:I

    .line 346
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 348
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V
    .locals 3
    .param p1, "p"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mDataCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;

    .line 541
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLDataistener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V
    .locals 3
    .param p1, "l"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->mListener:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;

    .line 524
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnNotifyListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void
.end method

.method protected setZSDModeParam(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mode"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
    .param p3, "type"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, setZSDModeParam, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    if-ne p2, v0, :cond_1

    .line 277
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->openZSDMode(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 281
    .end local p1    # "param":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-object p1

    .line 278
    .restart local p1    # "param":Landroid/hardware/Camera$Parameters;
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    if-ne p2, v0, :cond_0

    .line 279
    invoke-direct {p0, p1, p3}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->closeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
.end method
