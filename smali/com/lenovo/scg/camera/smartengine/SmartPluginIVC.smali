.class public Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;
.super Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;
.source "SmartPluginIVC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;,
        Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;
    }
.end annotation


# static fields
.field public static final DEF_DETECT_FLAG_CODE:I = 0xa

.field public static final DEF_DETECT_FLAG_DOOR:I = 0x2710

.field public static final DEF_DETECT_FLAG_LANDSCAPE:I = 0x3e8

.field public static final DEF_DETECT_FLAG_LIGHT:I = 0x64

.field public static final DEF_DETECT_FLAG_MOTION:I = 0x1

.field private static FRAME_NUM:J = 0x0L

.field private static final SKIP_FREQ:I = 0x3

.field private static final STATUS_BIND:I = 0x4

.field private static final STATUS_GET_TEXTURE_ID:I = 0x3

.field private static final STATUS_INIT:I = 0x1

.field private static final STATUS_LOADSHADER:I = 0x2

.field private static final STATUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[smart_app]SmartPluginIVC"

.field public static avgtime:F

.field static final is_DebugTime:Z

.field private static m_nInitStatus:I

.field public static maxtime:F

.field public static mintime:F


# instance fields
.field private final afVertices:[F

.field public frame:J

.field private ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

.field mContext:Landroid/content/Context;

.field private mQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

.field private mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

.field private mRunnableCount:Ljava/lang/Runnable;

.field private mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

.field private m_bRGBSensorEnable:Z

.field private m_bRuning:Z

.field private m_lNum:J

.field private m_nTextureId:I

.field private mnSceneFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    .line 198
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->FRAME_NUM:J

    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    sput v2, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->maxtime:F

    sput v2, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mintime:F

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    .line 26
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mnSceneFlag:I

    .line 28
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

    .line 31
    iput-wide v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_lNum:J

    .line 93
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->afVertices:[F

    .line 97
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    .line 197
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .line 199
    iput-wide v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->frame:J

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    .line 388
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mRunnableCount:Ljava/lang/Runnable;

    .line 491
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z

    .line 69
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string v1, "SmartPluginIVC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    .line 71
    sput v2, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$1;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string v1, "SmartPluginIVC end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z

    return p1
.end method

.method private declared-synchronized checkPreview()I
    .locals 5

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneTypeDetector()Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-result-object v1

    .line 311
    .local v1, "sceneType":Lcom/lenovo/scg/camera/smartengine/SceneType;
    const-string v2, "[smart_app]SmartPluginIVC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPreview begin sceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 317
    .local v0, "nSceneFlag":I
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->isDetectedType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->getFlag()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 326
    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->getQrCoordPositions()[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->getFlag()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 330
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;->onQRCode([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)V

    .line 337
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;->isDetectedType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;->getFlag()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    .line 353
    :cond_2
    :goto_0
    const-string v2, "[smart_app]SmartPluginIVC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPreview end nSceneFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return v0

    .line 344
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;->isDetectedType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;->getFlag()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    goto :goto_0

    .line 310
    .end local v0    # "nSceneFlag":I
    .end local v1    # "sceneType":Lcom/lenovo/scg/camera/smartengine/SceneType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private enableRGBSensor(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 494
    const-string v2, "[smart_app]SmartPluginIVC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRGBSensor, enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z

    if-ne v2, p1, :cond_0

    .line 496
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor ignore set!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 501
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor error: mContext is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lledroid/nac/ShellCommand;->getNacShellCommandInstance(Landroid/content/Context;)Lledroid/nac/ShellCommand;

    move-result-object v1

    .line 507
    .local v1, "nac":Lledroid/nac/ShellCommand;
    if-nez v1, :cond_2

    .line 508
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor error: getNacShellCommandInstance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_2
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor getNacShellCommandInstance ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v2, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)V

    invoke-virtual {v1, v2}, Lledroid/nac/ShellCommand;->setResponseCallBack(Lledroid/nac/ShellCommand$ShellCommandResponse;)V

    .line 540
    :try_start_0
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor addCommand..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz p1, :cond_3

    .line 542
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "echo 5 > /sys/bus/i2c/devices/2-0044/mode"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cat /sys/bus/i2c/devices/2-0044/mode"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    .line 549
    :goto_1
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor exec start..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v1}, Lledroid/nac/ShellCommand;->exec()Lledroid/nac/ShellCommand;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lledroid/nac/ShellCommand;->waitResponse(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_2
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "enableRGBSensor end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "echo 0 > /sys/bus/i2c/devices/2-0044/mode"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cat /sys/bus/i2c/devices/2-0044/mode"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private declared-synchronized reset()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "reset begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->reset()V

    .line 131
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "reset end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public SetQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;)V
    .locals 3
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

    .prologue
    .line 52
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSceneCallback mSceneCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQRCodeCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$QRCodeCallback;

    .line 54
    return-void
.end method

.method public SetSceneCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;)V
    .locals 3
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    .prologue
    .line 43
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSceneCallback mSceneCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    .line 45
    return-void
.end method

.method public allocateTextureIfRequested(Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    .prologue
    .line 380
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string v1, "allocateTextureIfRequested begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    .line 383
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->switchStatus(I)V

    .line 385
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string v1, "allocateTextureIfRequested end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public enableQRCodeDetection(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    const/16 v3, 0xa0

    .line 481
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQRCodeDetection bEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->enable(I)Z

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->disable(I)Z

    goto :goto_0
.end method

.method public getCctLux()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v2, :cond_0

    .line 155
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "getLux error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->getEnvLightData()[I

    move-result-object v0

    .line 160
    .local v0, "cctLux":[I
    if-nez v0, :cond_1

    .line 162
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "getEnvLightData null error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 163
    goto :goto_0

    .line 166
    :cond_1
    const-string v1, "[smart_app]SmartPluginIVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRgbCct:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getLux:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getISPInfo()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v2, :cond_0

    .line 172
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "getISPInfo  not m_bRuning"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->getCameraSettings()[I

    move-result-object v0

    .line 177
    .local v0, "info":[I
    if-nez v0, :cond_1

    .line 179
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string v3, "getISPInfo null error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    const-string v1, "[smart_app]SmartPluginIVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getISPInfo: iso:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shutter speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    .line 202
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v6, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v3

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    if-eqz v6, :cond_0

    .line 210
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 211
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->switchStatus(I)V

    .line 214
    :cond_2
    sget v6, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-ne v8, v6, :cond_0

    .line 229
    const-string v3, "[smart_app]SmartPluginIVC"

    const-string/jumbo v6, "onDraw begin"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->frame:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->frame:J

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 269
    .local v4, "startDetect":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->updateSensoryData()Z

    .line 270
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setCanvasSize(IIII)Z

    .line 272
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->checkPreview()I

    move-result v2

    .line 274
    .local v2, "retFlag":I
    const-string v3, "[smart_app]SmartPluginIVC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sceneTypeDetector retFlag ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mnSceneFlag:I

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    if-eqz v3, :cond_3

    .line 277
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mSceneCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$SceneCallback;->onSceneChange(I)V

    .line 278
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mnSceneFlag:I

    .line 280
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 281
    .local v0, "endDetect":J
    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    long-to-float v6, v0

    add-float/2addr v3, v6

    sput v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    .line 282
    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->maxtime:F

    long-to-float v6, v0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    .line 283
    long-to-float v3, v0

    sput v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->maxtime:F

    .line 285
    :cond_4
    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mintime:F

    long-to-float v6, v0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 286
    long-to-float v3, v0

    sput v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mintime:F

    .line 288
    :cond_5
    iget-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->frame:J

    sget-wide v8, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->FRAME_NUM:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    .line 289
    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    sget-wide v6, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->FRAME_NUM:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    sput v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    .line 290
    const-string v3, "SmartTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detect time is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v3, 0x0

    sput v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->avgtime:F

    .line 292
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->frame:J

    .line 294
    :cond_6
    const-string v3, "SmartIVC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detect time is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v3, "[smart_app]SmartPluginIVC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDraw end retFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mQrCoordPosition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->destory()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    goto :goto_0
.end method

.method public printMatrix([F)V
    .locals 5
    .param p1, "v"    # [F

    .prologue
    .line 359
    const-string v2, "[smart_app]SmartPluginIVC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suojp printMatrix begin length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 362
    const-string v2, "[smart_app]SmartPluginIVC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suojp printMatrix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x4

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    const-string v2, "[smart_app]SmartPluginIVC"

    const-string/jumbo v3, "suojp printMatrix end "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public setISPData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v0, :cond_0

    .line 189
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "setISPData not m_bRuning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "setISPData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-static {p1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setISPData([B)Z

    goto :goto_0
.end method

.method public setPreviewSize(II)Z
    .locals 3
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 470
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize previewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    if-nez v0, :cond_0

    .line 473
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "setPreviewSize failure, ivcScene is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setPictureParameter(II)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mnSceneFlag:I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "start setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setContext(Landroid/content/Context;)V

    .line 148
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    .line 149
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->enableRGBSensor(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->destory()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .line 124
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->enableRGBSensor(Z)V

    .line 125
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->reset()V

    goto :goto_0
.end method

.method public switchStatus(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 401
    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-ne v1, p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v1, "[smart_app]SmartPluginIVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchStatus begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 465
    :cond_1
    :goto_1
    const-string v1, "[smart_app]SmartPluginIVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchStatus end m_nInitStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :pswitch_0
    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-nez v1, :cond_1

    .line 410
    const/16 v0, 0x11d

    .line 418
    .local v0, "flag":I
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-nez v1, :cond_2

    .line 419
    const/16 v1, 0x13d

    or-int/lit16 v0, v1, 0x80

    .line 422
    const-string v1, "[smart_app]SmartPluginIVC"

    const-string/jumbo v2, "switchStatus CameraUtil.mIsCMCC false, support SCENE_2DCODE! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->enable(I)Z

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setTextureUnitID(I)Z

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->afVertices:[F

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setPosUvVertices([F)Z

    .line 434
    sput v7, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    goto :goto_1

    .line 425
    :cond_2
    const-string v1, "[smart_app]SmartPluginIVC"

    const-string/jumbo v2, "switchStatus CameraUtil.mIsCMCC true, no support SCENE_2DCODE! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 438
    .end local v0    # "flag":I
    :pswitch_1
    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-ne v1, v7, :cond_1

    .line 439
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->initShader()V

    .line 440
    sput v4, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    goto :goto_1

    .line 446
    :pswitch_2
    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-eq v1, v5, :cond_3

    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-ne v1, v4, :cond_1

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pictureBind(I)Z

    .line 448
    iput v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    .line 449
    sput v5, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    goto :goto_1

    .line 455
    :pswitch_3
    sget v1, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    if-ne v1, v4, :cond_1

    .line 456
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pictureBind(I)Z

    .line 457
    iput v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nTextureId:I

    .line 458
    sput v5, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_nInitStatus:I

    goto :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateTransformMatrix([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRuning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->ivcScene:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    if-eqz v0, :cond_0

    .line 375
    :cond_0
    return-void
.end method
