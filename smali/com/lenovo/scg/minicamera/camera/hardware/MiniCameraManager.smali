.class public Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
.super Ljava/lang/Object;
.source "MiniCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$1;,
        Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;,
        Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x9

.field private static final AUTO_FOCUS:I = 0xa

.field private static final CANCEL_AUTO_FOCUS:I = 0xb

.field private static final GET_PARAMETERS:I = 0x14

.field private static final LOCK:I = 0x4

.field private static final RECONNECT:I = 0x2

.field private static final REFRESH_PARAMETERS:I = 0x18

.field private static final RELEASE:I = 0x1

.field private static final SET_DISPLAY_ORIENTATION:I = 0xd

.field private static final SET_PARAMETERS:I = 0x13

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x15

.field private static final START_PREVIEW_ASYNC:I = 0x6

.field private static final STOP_PREVIEW:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final UNLOCK:I = 0x3

.field private static sCameraManager:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersIsDirty:Z

.field private mParamsToSet:Landroid/hardware/Camera$Parameters;

.field private mReconnectIOException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->sCameraManager:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->sCameraManager:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    return-object v0
.end method


# virtual methods
.method cameraOpen(I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    .line 103
    :cond_0
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$1;)V

    .line 105
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
