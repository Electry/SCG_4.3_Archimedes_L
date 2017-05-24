.class public Lcom/lenovo/scg/camera/smartengine/SensorService;
.super Ljava/lang/Object;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;,
        Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;,
        Lcom/lenovo/scg/camera/smartengine/SensorService$NewSensor;
    }
.end annotation


# static fields
.field public static final DEF_SCHEDULE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "[smart_app]SensorService"

.field public static final TYPE_ACCELEROMETER_SENSOR:I = 0x2

.field public static final TYPE_BACK_RGB_SENSOR:I = 0x10

.field public static final TYPE_FRONT_RGB_SENSOR:I = 0x8

.field public static final TYPE_ISP_SENSOR:I = 0x20

.field public static final TYPE_LIGHT_SENSOR:I = 0x1

.field public static final TYPE_NO_SENSOR:I = 0x0

.field public static final TYPE_ORIENTATION_SENSOR:I = 0x4


# instance fields
.field private fRGBSensorData:[F

.field private gSensorData:[F

.field private isBackRGBDataUsable:Z

.field private isBackRGBSensorSupport:Z

.field private isFrontRGBSensorSupport:Z

.field private isGSensorChangedFlag:Z

.field private isGsensorSupport:Z

.field private isISPSupport:Z

.field private isLightSensorSupport:Z

.field private isOrientationSensorSupport:Z

.field private lSensorData:F

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;

.field private oSensorData:[F

.field private oriListener:Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;

.field private orientation:I

.field sensorChangeStatus:J

.field private sensorListener:Landroid/hardware/SensorEventListener;

.field private sensorMgr:Landroid/hardware/SensorManager;

.field sensorSaveStatus:J

.field sensorStatus:J

.field private supportSensorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F

    .line 20
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->lSensorData:F

    .line 24
    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I

    .line 28
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport:Z

    .line 29
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isFrontRGBSensorSupport:Z

    .line 30
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    .line 31
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable:Z

    .line 32
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport:Z

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGsensorSupport:Z

    .line 34
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isOrientationSensorSupport:Z

    .line 36
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGSensorChangedFlag:Z

    .line 50
    iput-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimerTask:Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;

    .line 51
    iput-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    .line 200
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SensorService$1;-><init>(Lcom/lenovo/scg/camera/smartengine/SensorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 58
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    .line 59
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;-><init>(Lcom/lenovo/scg/camera/smartengine/SensorService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oriListener:Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/smartengine/SensorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/smartengine/SensorService;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/smartengine/SensorService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/smartengine/SensorService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->lSensorData:F

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/smartengine/SensorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;

    .prologue
    .line 16
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/smartengine/SensorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I

    return p1
.end method


# virtual methods
.method public getCctLux()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "backRgb":[I
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    if-eqz v1, :cond_1

    .line 152
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->getBackRGBData()[I

    move-result-object v0

    .line 153
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable:Z

    .line 154
    if-eqz v0, :cond_0

    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    aget v1, v0, v5

    if-nez v1, :cond_1

    .line 155
    :cond_0
    const-string v1, "[smart_app]SensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCctLux BackRGBDatais not Usable backRgb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 157
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable:Z

    .line 161
    :cond_1
    if-eqz v0, :cond_2

    .line 162
    const-string v1, "[smart_app]SensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCctLux, backRgb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-object v0

    .line 164
    :cond_2
    const-string v1, "[smart_app]SensorService"

    const-string v2, "getCctLux, backRgb is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFRGBSensorData()[F
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F

    return-object v0
.end method

.method public getGSensorData()[F
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F

    return-object v0
.end method

.method public getLSensorData()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->lSensorData:F

    return v0
.end method

.method public getOSensorData()[F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I

    return v0
.end method

.method public isBackRGBDataUsable()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable:Z

    return v0
.end method

.method public isBackRGBSensorSupport()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    return v0
.end method

.method public isFrontRGBSensorSupport()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isFrontRGBSensorSupport:Z

    return v0
.end method

.method public isGSensorChanged()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGSensorChangedFlag:Z

    return v0
.end method

.method public isGsensorSupport()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGsensorSupport:Z

    return v0
.end method

.method public isISPSupport()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport:Z

    return v0
.end method

.method public isLightSensorSupport()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport:Z

    return v0
.end method

.method public isOsensorSupport()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isOrientationSensorSupport:Z

    return v0
.end method

.method public isSensorSupport(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->supportSensorType:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSensor(I)Z
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 62
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->supportSensorType:I

    .line 63
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v5, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 65
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGsensorSupport:Z

    .line 67
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v6, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport:Z

    .line 71
    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 73
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isOrientationSensorSupport:Z

    .line 75
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    const v3, 0x1fa2645

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 77
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isFrontRGBSensorSupport:Z

    .line 79
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 80
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;-><init>(Lcom/lenovo/scg/camera/smartengine/SensorService;Lcom/lenovo/scg/camera/smartengine/SensorService$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimerTask:Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;

    .line 85
    const-string v0, "[smart_app]SensorService"

    const-string/jumbo v1, "registerSensor mTimer schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimerTask:Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;

    const-wide/16 v2, 0x190

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 89
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 90
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport:Z

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oriListener:Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;->enable()V

    .line 93
    return v6
.end method

.method public setGSensorChangedFlag(Z)V
    .locals 0
    .param p1, "Flag"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGSensorChangedFlag:Z

    .line 114
    return-void
.end method

.method public unregisterSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "[smart_app]SensorService"

    const-string/jumbo v1, "unregisterSensor mTimer cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->oriListener:Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;->disable()V

    .line 104
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport:Z

    .line 105
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGsensorSupport:Z

    .line 106
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport:Z

    .line 107
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z

    .line 108
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isFrontRGBSensorSupport:Z

    .line 109
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isOrientationSensorSupport:Z

    .line 110
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGSensorChangedFlag:Z

    .line 111
    return-void
.end method
