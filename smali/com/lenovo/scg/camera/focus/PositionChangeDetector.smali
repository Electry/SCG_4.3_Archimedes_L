.class public Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
.super Ljava/lang/Object;
.source "PositionChangeDetector.java"


# static fields
.field private static final MOVE_THRESHOLD_DISPLACEMENT:I = 0xc8

.field private static final MOVE_THRESHOLD_ROTATION:I = 0x28

.field private static final TAG:Ljava/lang/String; = "PositionChangeDetector"

.field private static final X_ORATIATION:I = 0x0

.field private static final Y_ORATIATION:I = 0x1

.field private static final Z_ORATIATION:I = 0x2

.field private static mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;


# instance fields
.field private mDetectorInited:Z

.field private mDisplacementX:I

.field private mDisplacementY:I

.field private mDisplacementZ:I

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private mMarkedDisX:I

.field private mMarkedDisY:I

.field private mMarkedDisZ:I

.field private mMarkedRotX:I

.field private mMarkedRotY:I

.field private mMarkedRotZ:I

.field private mMoved:Z

.field private mRotationVectorListener:Landroid/hardware/SensorEventListener;

.field private mRotationX:I

.field private mRotationY:I

.field private mRotationZ:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    .line 32
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    .line 36
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I

    .line 37
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I

    .line 38
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I

    .line 41
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I

    .line 42
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I

    .line 43
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I

    .line 46
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I

    .line 47
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I

    .line 48
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I

    .line 51
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I

    .line 52
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I

    .line 53
    iput v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;-><init>(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 112
    new-instance v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;-><init>(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I

    return p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I

    return v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I

    return v0
.end method

.method static synthetic access$712(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I

    return v0
.end method

.method static synthetic access$812(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I

    return v0
.end method

.method static synthetic access$912(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    monitor-enter v1

    :try_start_0
    const-string v0, "PositionChangeDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance: mMarker = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .line 62
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarker:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 163
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "PositionChangeDetector"

    const-string v5, "init mDetectorInited == True && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v4, "PositionChangeDetector"

    const-string v5, "init"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "aSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, "rSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 173
    const-string v4, "PositionChangeDetector"

    const-string v5, "init GSensor is support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 175
    .local v0, "aSensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 176
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    .line 180
    .end local v0    # "aSensor":Landroid/hardware/Sensor;
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 181
    const-string v4, "PositionChangeDetector"

    const-string v5, "init TuoLuoYi is support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 183
    .local v2, "rSensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationVectorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v2, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 184
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    .line 188
    .end local v2    # "rSensor":Landroid/hardware/Sensor;
    :goto_2
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    if-nez v4, :cond_3

    .line 189
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    .line 190
    const-string v4, "PositionChangeDetector"

    const-string v5, "init Fail!  HardWare not Support && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    const-string v4, "PositionChangeDetector"

    const-string v5, "init GSensor is NOT support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_2
    const-string v4, "PositionChangeDetector"

    const-string v5, "init TuoLuoYi is NOT support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 193
    :cond_3
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    return v0
.end method

.method public isMove()Z
    .locals 3

    .prologue
    .line 238
    const-string v0, "PositionChangeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMove --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    return v0
.end method

.method public mark()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorSupport:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "PositionChangeDetector"

    const-string/jumbo v1, "mark:  HardWare not Support && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "PositionChangeDetector"

    const-string/jumbo v1, "mark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    .line 226
    iput v2, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I

    .line 227
    iput v2, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I

    goto :goto_0
.end method

.method public setMoved(Z)V
    .locals 3
    .param p1, "move"    # Z

    .prologue
    .line 243
    const-string v0, "PositionChangeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMoved --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z

    .line 245
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    if-nez v0, :cond_0

    .line 204
    const-string v0, "PositionChangeDetector"

    const-string/jumbo v1, "uninit: mDetectorInited == false && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDetectorInited:Z

    .line 208
    const-string v0, "PositionChangeDetector"

    const-string/jumbo v1, "uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationVectorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
