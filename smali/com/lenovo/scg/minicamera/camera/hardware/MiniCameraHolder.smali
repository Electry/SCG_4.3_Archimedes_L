.class public Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;
.super Ljava/lang/Object;
.source "MiniCameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;


# instance fields
.field private mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraOpened:Z

.field private mHandler:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraId:I

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mHandler:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;

    .line 135
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 136
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z

    return v0
.end method

.method public static declared-synchronized instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->sHolder:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->sHolder:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    .line 54
    :cond_0
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->sHolder:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public declared-synchronized open(I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    monitor-enter p0

    :try_start_0
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open, mCameraOpened="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->Assert(Z)V

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->release()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraId:I

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 154
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

    .line 157
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->cameraOpen(I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 164
    iput p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraId:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 183
    :goto_1
    const-string v1, "CameraHolder"

    const-string/jumbo v2, "set mCameraOpened is true!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mHandler:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;->removeMessages(I)V

    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 175
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :try_start_5
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string/jumbo v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraHolder"

    const-string/jumbo v1, "release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->release()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraDevice:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
