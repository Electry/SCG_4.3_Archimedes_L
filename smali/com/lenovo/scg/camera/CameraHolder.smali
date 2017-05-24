.class public Lcom/lenovo/scg/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraHolder$1;,
        Lcom/lenovo/scg/camera/CameraHolder$MyHandler;,
        Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    }
.end annotation


# static fields
.field private static final DEBUG_OPEN_RELEASE:Z = true

.field private static final KEEP_CAMERA_TIMEOUT:I = 0xbb8

.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static mMockCamera:[Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sHolder:Lcom/lenovo/scg/camera/CameraHolder;

.field private static sOpenReleaseStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v4, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I

    .line 70
    iput v4, p0, Lcom/lenovo/scg/camera/CameraHolder;->mBackCameraId:I

    .line 72
    iput v4, p0, Lcom/lenovo/scg/camera/CameraHolder;->mFrontCameraId:I

    .line 182
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v2, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;-><init>(Lcom/lenovo/scg/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 185
    sget-object v2, Lcom/lenovo/scg/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2

    .line 186
    sget-object v2, Lcom/lenovo/scg/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    .line 187
    sget-object v2, Lcom/lenovo/scg/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 198
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_4

    .line 199
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_3

    .line 200
    iput v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mBackCameraId:I

    .line 198
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    .line 190
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 191
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 193
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 202
    iput v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mFrontCameraId:I

    goto :goto_1

    .line 205
    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/CameraHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraHolder;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private static declared-synchronized collectState(ILcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "device"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 99
    const-class v5, Lcom/lenovo/scg/camera/CameraHolder;

    monitor-enter v5

    :try_start_0
    new-instance v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;-><init>(Lcom/lenovo/scg/camera/CameraHolder$1;)V

    .line 100
    .local v2, "s":Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->time:J

    .line 101
    iput p0, v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->id:I

    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v4, "(null)"

    iput-object v4, v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    .line 108
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 109
    .local v3, "stack":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 110
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 111
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v3    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v2    # "s":Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 113
    .restart local v0    # "i":I
    .restart local v1    # "lines":[Ljava/lang/String;
    .restart local v2    # "s":Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    .restart local v3    # "stack":[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_1
    iput-object v1, v2, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    .line 115
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_2

    .line 116
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    :cond_2
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit v5

    return-void
.end method

.method private static declared-synchronized dumpStates()V
    .locals 10

    .prologue
    .line 122
    const-class v5, Lcom/lenovo/scg/camera/CameraHolder;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 123
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;

    .line 124
    .local v3, "s":Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    sget-object v4, Lcom/lenovo/scg/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->time:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "date":Ljava/lang/String;
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCameraDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v4, "CameraHolder"

    const-string v6, "Stack:"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 129
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 132
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v3    # "s":Lcom/lenovo/scg/camera/CameraHolder$OpenReleaseState;
    :cond_1
    monitor-exit v5

    return-void

    .line 122
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p0, "info"    # [Landroid/hardware/Camera$CameraInfo;
    .param p1, "camera"    # [Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 176
    sput-object p0, Lcom/lenovo/scg/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 177
    sput-object p1, Lcom/lenovo/scg/camera/CameraHolder;->mMockCamera:[Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 178
    new-instance v0, Lcom/lenovo/scg/camera/CameraHolder;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sHolder:Lcom/lenovo/scg/camera/CameraHolder;

    .line 179
    return-void
.end method

.method public static declared-synchronized instance()Lcom/lenovo/scg/camera/CameraHolder;
    .locals 2

    .prologue
    .line 144
    const-class v1, Lcom/lenovo/scg/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sHolder:Lcom/lenovo/scg/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/lenovo/scg/camera/CameraHolder;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sHolder:Lcom/lenovo/scg/camera/CameraHolder;

    .line 147
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraHolder;->sHolder:Lcom/lenovo/scg/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public keep()V
    .locals 1

    .prologue
    .line 330
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraHolder;->keep(I)V

    .line 331
    return-void
.end method

.method public declared-synchronized keep(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 4
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-static {p1, v2}, Lcom/lenovo/scg/camera/CameraHolder;->collectState(ILcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 218
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_0

    .line 219
    const-string v2, "CameraHolder"

    const-string v3, "double open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->dumpStates()V

    .line 223
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->Assert(Z)V

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->release()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 227
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 231
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v1, Lcom/lenovo/scg/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v1, :cond_3

    .line 233
    invoke-static {}, Lcom/lenovo/scg/camera/CameraManager;->instance()Lcom/lenovo/scg/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraManager;->cameraOpen(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 238
    :goto_1
    iput p1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 254
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J

    .line 257
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 223
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    :cond_3
    :try_start_3
    sget-object v1, Lcom/lenovo/scg/camera/CameraHolder;->mMockCamera:[Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    new-instance v1, Lcom/lenovo/scg/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    :cond_4
    :try_start_5
    sget-object v1, Lcom/lenovo/scg/camera/CameraHolder;->mMockCamera:[Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 246
    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    :try_start_7
    const-string v1, "CameraHolder"

    const-string/jumbo v2, "setParameters CameraProxy open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string/jumbo v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Lcom/lenovo/scg/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 6

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/CameraHolder;->collectState(ILcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 286
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_1

    .line 287
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    .line 288
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    .restart local v0    # "now":J
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->release()V

    .line 295
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 298
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 299
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized releaseForce()V
    .locals 6

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/CameraHolder;->collectState(ILcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 307
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 327
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 311
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_1

    .line 312
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    .line 313
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 315
    :cond_1
    const-string/jumbo v2, "releaseForce will send RELEASE_CAMERA message"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/lenovo/scg/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 319
    .restart local v0    # "now":J
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    .line 321
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->releaseForce()V

    .line 322
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 325
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 326
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized tryOpen(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 266
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/CameraHolder;->open(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 273
    :cond_0
    monitor-exit p0

    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
