.class public Lcom/lenovo/scg/camera/smartengine/SmartEngine;
.super Ljava/lang/Object;
.source "SmartEngine.java"

# interfaces
.implements Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;
.implements Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;
.implements Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;
.implements Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;,
        Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;,
        Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FLAG_DETECTION_BACKLIGHT:I = 0x7

.field public static final FLAG_DETECTION_CODE_BAR:I = 0xa

.field public static final FLAG_DETECTION_CODE_QRC:I = 0xb

.field public static final FLAG_DETECTION_DIMLIT:I = 0x8

.field public static final FLAG_DETECTION_DOCUMENT:I = 0x6

.field public static final FLAG_DETECTION_ERROR:I = -0x1

.field public static final FLAG_DETECTION_JITTERING:I = 0x2

.field public static final FLAG_DETECTION_LANDSCAPE:I = 0x9

.field public static final FLAG_DETECTION_MOVE:I = 0x1

.field public static final FLAG_DETECTION_NIGHT:I = 0xc

.field public static final FLAG_DETECTION_NIGHT_DYNAMIC:I = 0xd

.field public static final FLAG_DETECTION_NORMAL:I = 0x0

.field public static final FLAG_DETECTION_PORTRAIT:I = 0x3

.field public static final FLAG_DETECTION_PORTRAIT_GROUP:I = 0x5

.field public static final FLAG_DETECTION_PORTRAIT_TWO:I = 0x4

.field private static final LISTENER_MAX:I = 0x3

.field private static final MSG_FACE_CHANGE:I = 0x2

.field private static final MSG_SCENE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[smart_app]SmartEngine"

.field private static mInstance:Lcom/lenovo/scg/camera/smartengine/SmartEngine; = null

.field private static final mTimeDelay:I = 0x1f4

.field private static m_bHasFaces:Z


# instance fields
.field private lastFaceCount:I

.field private mLastTime:J

.field private mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

.field private mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

.field private mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

.field private mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

.field private mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

.field m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

.field private m_nListenerNum:I

.field m_nSaveMoveFlag:I

.field m_nSaveSceneFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mInstance:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    .line 58
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    .line 61
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    .line 63
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    .line 65
    iput v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    .line 283
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    .line 285
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    .line 431
    iput v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->lastFaceCount:I

    .line 450
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mLastTime:J

    .line 73
    const-string/jumbo v1, "wwf"

    const-string v2, "SmartEngine()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "[smart_app]SmartEngine"

    const-string v2, "SmartEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    .line 76
    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    .line 77
    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    .line 78
    iput v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera SmartEngine Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    .line 82
    const-string v1, "[smart_app]SmartEngine"

    const-string v2, "SmartEngine end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngine;)[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/smartengine/SmartEngine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->onIVCChange(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/smartengine/SmartEngine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->onFaceChange(I)V

    return-void
.end method

.method private canNotify(I)Z
    .locals 6
    .param p1, "nNewSceneFlag"    # I

    .prologue
    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 455
    .local v0, "lNowTime":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 456
    iput-wide v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mLastTime:J

    .line 457
    const/4 v2, 0x1

    .line 459
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;
    .locals 2

    .prologue
    .line 188
    const-class v1, Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mInstance:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mInstance:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .line 192
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mInstance:Lcom/lenovo/scg/camera/smartengine/SmartEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onFaceChange(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 412
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceChange count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", test m_bHasFaces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    .line 414
    const/4 v0, 0x3

    .line 415
    .local v0, "flag":I
    packed-switch p1, :pswitch_data_0

    .line 424
    const/4 v0, 0x5

    .line 428
    :goto_1
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->sendSceneChange(I)V

    .line 429
    return-void

    .line 413
    .end local v0    # "flag":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 418
    .restart local v0    # "flag":I
    :pswitch_0
    const/4 v0, 0x3

    .line 419
    goto :goto_1

    .line 421
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    .line 422
    goto :goto_1

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIVCChange(I)V
    .locals 11
    .param p1, "retFlag"    # I

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    .line 314
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange test 0 m_bHasFaces="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    rem-int/lit8 v5, p1, 0xa

    .line 317
    .local v5, "motionFlag":I
    div-int/lit8 v6, p1, 0xa

    rem-int/lit8 v0, v6, 0xa

    .line 318
    .local v0, "codeFlag":I
    div-int/lit8 v6, p1, 0x64

    rem-int/lit8 v4, v6, 0xa

    .line 319
    .local v4, "lightFlag":I
    div-int/lit16 v6, p1, 0x3e8

    rem-int/lit8 v3, v6, 0xa

    .line 321
    .local v3, "landscapeFlag":I
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange retFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",motionFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",codeFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",lightFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",landscapeFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "flagScene":I
    packed-switch v4, :pswitch_data_0

    .line 350
    :goto_0
    const/4 v1, 0x0

    .line 351
    .local v1, "flag":I
    packed-switch v5, :pswitch_data_1

    .line 370
    :cond_0
    :goto_1
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    if-eq v1, v6, :cond_1

    .line 371
    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    .line 372
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->sendJitteringChange(I)V

    .line 375
    :cond_1
    sget-boolean v6, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    if-eqz v6, :cond_5

    .line 376
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange test return m_bHasFaces="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    :goto_2
    return-void

    .line 328
    .end local v1    # "flag":I
    :pswitch_0
    const/4 v2, 0x7

    .line 329
    goto :goto_0

    .line 337
    :pswitch_1
    const/16 v2, 0x8

    .line 338
    goto :goto_0

    .line 340
    :pswitch_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 341
    const/16 v2, 0xd

    goto :goto_0

    .line 343
    :cond_3
    const/16 v2, 0xc

    .line 345
    goto :goto_0

    .line 353
    .restart local v1    # "flag":I
    :pswitch_3
    if-eq v9, v2, :cond_4

    if-ne v10, v2, :cond_0

    .line 355
    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    .line 359
    :pswitch_4
    if-eq v9, v2, :cond_0

    if-eq v10, v2, :cond_0

    const/16 v6, 0xd

    if-eq v6, v2, :cond_0

    .line 362
    const/4 v1, 0x1

    goto :goto_1

    .line 381
    :cond_5
    if-eqz v2, :cond_6

    .line 382
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    .line 383
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->sendSceneChange(I)V

    goto :goto_2

    .line 386
    :cond_6
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange test 1 m_bHasFaces="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    packed-switch v3, :pswitch_data_2

    .line 397
    :goto_3
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange test 2 m_bHasFaces="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    if-eq v6, v2, :cond_2

    .line 404
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    .line 405
    const-string v6, "[smart_app]SmartEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIVCChange test 3 m_bHasFaces="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->sendSceneChange(I)V

    goto/16 :goto_2

    .line 391
    :pswitch_5
    const/16 v2, 0x9

    .line 392
    goto :goto_3

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 351
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 389
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private sendJitteringChange(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 288
    const/4 v1, -0x1

    if-ne v1, p1, :cond_1

    .line 297
    :cond_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;->onPreviewJitteringChange(I)V

    .line 292
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendSceneChange(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 300
    const/4 v1, -0x1

    if-ne v1, p1, :cond_1

    .line 301
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSceneChange flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return ------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    return-void

    .line 305
    :cond_1
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSceneChange flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;->onPreviewSceneChange(I)V

    .line 306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SetSmartEngineQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;)V
    .locals 3
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    .prologue
    .line 123
    const-string v0, "[smart_app]SmartEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartEngineQRCodeCallback mSmartEngineQRCodeCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    .line 125
    return-void
.end method

.method public addSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V
    .locals 6
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 128
    const-string/jumbo v1, "wwf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before addSmartEngineCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSmartEngineCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", m_nListenerNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    if-nez v1, :cond_0

    .line 131
    new-array v1, v5, [Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    .line 136
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    if-ge v0, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 159
    :goto_1
    return-void

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v5, :cond_3

    .line 144
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSmartEngineCallback error m_nListenerNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v1, "wwf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after addSmartEngineCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    aput-object p1, v1, v2

    .line 151
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    if-eq v4, v1, :cond_4

    .line 152
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    invoke-interface {p1, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;->onPreviewJitteringChange(I)V

    .line 155
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    if-eq v4, v1, :cond_5

    .line 156
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    invoke-interface {p1, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;->onPreviewSceneChange(I)V

    .line 158
    :cond_5
    const-string/jumbo v1, "wwf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after addSmartEngineCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public delSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V
    .locals 6
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    .prologue
    const/4 v5, 0x0

    .line 162
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before delSmartEngineCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "[smart_app]SmartEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delSmartEngineCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", m_nListenerNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aput-object v5, v2, v0

    .line 168
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineCallback:[Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    add-int/lit8 v3, v3, -0x1

    aput-object v5, v2, v3

    .line 174
    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    .line 175
    const-string v2, "[smart_app]SmartEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delSmartEngineCallback ok "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", m_nListenerNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "j":I
    :cond_1
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delSmartEngineCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nListenerNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enter()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 196
    const-string/jumbo v0, "smart engine enter"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 198
    const-string v0, "[smart_app]SmartEngine"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->start()V

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->SetSceneCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->SetQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->start()V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->SetFaceCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;)V

    .line 214
    :cond_1
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveMoveFlag:I

    .line 215
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_nSaveSceneFlag:I

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->start()V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->setOnISPDataListener(Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;)V

    .line 223
    :cond_2
    return-void
.end method

.method public exit(Z)V
    .locals 3
    .param p1, "bTemp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string/jumbo v0, "smart engine exit"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 227
    const-string v0, "[smart_app]SmartEngine"

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->setOnISPDataListener(Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->pause()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    if-eqz v0, :cond_1

    .line 235
    if-eqz p1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->pause()V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->SetSceneCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->SetQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->pause()V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->SetFaceCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;)V

    .line 250
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    .line 251
    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->stop()V

    goto :goto_0
.end method

.method public getSmartISP()Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartISP:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;

    return-object v0
.end method

.method public getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    return-object v0
.end method

.method public getSmartPreview()Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    return-object v0
.end method

.method public isMovingNow()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public onFaceDetection(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 435
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceDetection test m_bHasFaces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-nez p1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getSnapState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->lastFaceCount:I

    .line 440
    :cond_0
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceDetection count+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 442
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 443
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->lastFaceCount:I

    .line 445
    const-string v1, "[smart_app]SmartEngine"

    const-string/jumbo v2, "onFaceDetection end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method public onISPDataCallback([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 487
    const-string v0, "[smart_app]SmartEngine"

    const-string/jumbo v1, "onISPDataCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->setISPData([B)V

    .line 489
    return-void
.end method

.method public onQRCode([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)V
    .locals 3
    .param p1, "positions"    # [Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    const-string v0, "[smart_app]SmartEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQRCode count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartEngineQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;->onPreviewQRCode([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)V

    .line 472
    :cond_1
    return-void
.end method

.method public onSceneChange(I)V
    .locals 4
    .param p1, "nNewSceneFlag"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->canNotify(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    :cond_0
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSceneChange m_bHasFaces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_bHasFaces:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "[smart_app]SmartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSceneChange nNewSceneFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->m_SmartEngineHandler:Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    const-string v1, "[smart_app]SmartEngine"

    const-string/jumbo v2, "onSceneChange end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v0, "[smart_app]SmartEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContext mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartIVC:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->setContext(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->mSmartPreview:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->setOrientation(I)V

    .line 484
    :cond_0
    return-void
.end method
