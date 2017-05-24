.class public Lcom/lenovo/scg/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraManager$1;,
        Lcom/lenovo/scg/camera/CameraManager$CameraProxy;,
        Lcom/lenovo/scg/camera/CameraManager$CameraHandler;,
        Lcom/lenovo/scg/camera/CameraManager$IOExceptionHolder;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x9

.field private static final AUTO_FOCUS:I = 0xa

.field private static final CANCEL_AUTO_FOCUS:I = 0xb

.field private static final ENABLE_SHUTTER_SOUND:I = 0x17

.field private static final GET_PARAMETERS:I = 0x14

.field private static final GET_PARAMETERS_FORCE:I = 0x1a

.field private static final LOCK:I = 0x4

.field private static final RECONNECT:I = 0x2

.field private static final REFRESH_PARAMETERS:I = 0x18

.field private static final RELEASE:I = 0x1

.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0xc

.field private static final SET_DISPLAY_ORIENTATION:I = 0xd

.field private static final SET_ERROR_CALLBACK:I = 0x12

.field private static final SET_FACE_DETECTION_LISTENER:I = 0xf

.field private static final SET_ONE_SHOT_PREVIEW_CALLBACK:I = 0x19

.field private static final SET_PARAMETERS:I = 0x13

.field private static final SET_PREVIEW_CALLBACK:I = 0x16

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x15

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x5

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0xe

.field private static final START_FACE_DETECTION:I = 0x10

.field private static final START_PREVIEW_ASYNC:I = 0x6

.field private static final STOP_FACE_DETECTION:I = 0x11

.field private static final STOP_PREVIEW:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final UNLOCK:I = 0x3

.field private static sCameraManager:Lcom/lenovo/scg/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

.field private mLastParasString:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersIsDirty:Z

.field private mParamsToSet:Landroid/hardware/Camera$Parameters;

.field private mReconnectIOException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/lenovo/scg/camera/CameraManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraManager;->sCameraManager:Lcom/lenovo/scg/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-direct {v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    .line 147
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;-><init>(Lcom/lenovo/scg/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/CameraManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/CameraManager;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/lenovo/scg/camera/CameraManager;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/lenovo/scg/camera/CameraManager;->sCameraManager:Lcom/lenovo/scg/camera/CameraManager;

    return-object v0
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 450
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2    # "cb":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 452
    return-void
.end method


# virtual methods
.method cameraOpen(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera.open"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 464
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera.open"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 467
    const-string v0, "CameraManager"

    const-string v2, "cameraOpen success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    .line 473
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;-><init>(Lcom/lenovo/scg/camera/CameraManager;Lcom/lenovo/scg/camera/CameraManager$1;)V

    .line 475
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
