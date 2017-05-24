.class public Lcom/lenovo/scg/camera/monitor/ParametersMonitor;
.super Ljava/lang/Object;
.source "ParametersMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_ONPICTURETAKEN_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ParametersMonitor"

.field private static sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;


# instance fields
.field private final SET_PARAMETERS_FREQUENCY_THRESHOLD:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastTime:J

.field private mOpenMonitor:Z

.field private mRecordTakePictureTime:J

.field private mSetParametersCount:I

.field private mWaitOnPictureTaken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mOpenMonitor:Z

    .line 27
    iput v1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    .line 29
    iput-wide v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mLastTime:J

    .line 31
    const/16 v0, 0x14

    iput v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->SET_PARAMETERS_FREQUENCY_THRESHOLD:I

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    .line 39
    iput-wide v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mRecordTakePictureTime:J

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->sInstance:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private monitorSetParametersFrequency()V
    .locals 6

    .prologue
    .line 110
    iget v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 112
    .local v0, "time":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 113
    iget v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_0
    iput-wide v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mLastTime:J

    .line 117
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    .line 119
    :cond_1
    return-void
.end method

.method private monitorWaitOnPictureTaken()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    if-ne v2, v1, :cond_0

    .line 123
    new-instance v2, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;-><init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)V

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;->start()V

    .line 133
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    if-ne v2, v1, :cond_1

    :goto_1
    const-string/jumbo v2, "setParameters not be allowed between takePicture and onPictureTaken"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 140
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mOpenMonitor:Z

    .line 59
    new-instance v0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;-><init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mHandler:Landroid/os/Handler;

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitOnPictureTaken()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    return v0
.end method

.method public recordOnPictureTaken()V
    .locals 6

    .prologue
    .line 101
    const-string v0, "ParametersMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordOnPictureTaken time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mRecordTakePictureTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mOpenMonitor:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public recordSetParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mOpenMonitor:Z

    if-nez v0, :cond_0

    .line 81
    :cond_0
    return-void
.end method

.method public recordTakePicture()V
    .locals 4

    .prologue
    .line 84
    const-string v0, "ParametersMonitor"

    const-string/jumbo v1, "recordTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mRecordTakePictureTime:J

    .line 86
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mOpenMonitor:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resetRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iput v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mSetParametersCount:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mLastTime:J

    .line 96
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mWaitOnPictureTaken:Z

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    return-void
.end method
