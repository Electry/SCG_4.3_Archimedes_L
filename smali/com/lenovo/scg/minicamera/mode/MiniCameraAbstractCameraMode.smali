.class public abstract Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
.super Ljava/lang/Object;
.source "MiniCameraAbstractCameraMode.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;
.implements Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;,
        Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;,
        Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_DISABLED:I = 0xc

.field private static final CAMERA_OPEN_DONE:I = 0x9

.field private static final OPEN_CAMERA_FAIL:I = 0xb

.field private static final START_PREVIEW_DONE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AbstractModeBaseController"


# instance fields
.field private mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

.field private mCameraDisabled:Z

.field private mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

.field private mCameraState:I

.field private mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasSurface:Z

.field private mInitialized:Z

.field private mOpenCameraFail:Z

.field private mPaused:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;-><init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;)Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p1, "x1"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p1, "x1"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->initCameraConfigManager(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p1, "x1"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->setCameraParameters(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initCameraConfigManager(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 3
    .param p1, "cameraDevice"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 384
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraConfigManager, mConfigManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;-><init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .line 389
    :cond_0
    return-void
.end method

.method private initFromCameraParameters()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->initFromCameraParameters()V

    .line 395
    :cond_0
    return-void
.end method

.method private setCameraParameters(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 6
    .param p1, "cameraDevice"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->initFromCameraParameters()V

    .line 408
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->flattenParameters()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "parametersFlattened":Ljava/lang/String;
    const-string v3, "AbstractModeBaseController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parametersFlattened="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setDesiredCameraParameters()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v1

    .line 415
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v3, "AbstractModeBaseController"

    const-string v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v3, "AbstractModeBaseController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting to saved camera params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v0, :cond_0

    .line 421
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->unflattenParameters(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 423
    :catch_1
    move-exception v2

    .line 425
    .local v2, "re2":Ljava/lang/RuntimeException;
    const-string v3, "AbstractModeBaseController"

    const-string v4, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 3

    .prologue
    .line 268
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera, mConfigManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->closeCamera()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .line 274
    :cond_0
    return-void
.end method

.method public getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    return-object v0
.end method

.method public getCallbackManager()Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->getCallbackManager()Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getCameraConfigManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraState:I

    return v0
.end method

.method public getFocusManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->getFocusManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    .line 128
    return-void
.end method

.method public initCameraAndStartPreview()V
    .locals 3

    .prologue
    .line 233
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraAndStartPreview, mCameraDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOpenCameraFail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mOpenCameraFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    .line 247
    const-string v0, "AbstractModeBaseController"

    const-string v1, "initCameraAndStartPreview, mSurfaceHolder == null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "AbstractModeBaseController"

    const-string v1, "initCameraAndStartPreview, mConfigManager isCameraOpened, return!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_3
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraAndStartPreview, mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    if-nez v0, :cond_0

    .line 260
    const-string v0, "AbstractModeBaseController"

    const-string v1, "initCameraAndStartPreview, start CameraStartUpThread!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;-><init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->start()V

    goto :goto_0
.end method

.method public isFocusAreaSupported()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->isFocusAreaSupported()Z

    move-result v0

    return v0
.end method

.method public isMeteringAreaSupported()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->isMeteringAreaSupported()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->waitCameraStartUpThread()V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cancelAutoFocus()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->stopPreview()V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->closeCamera()V

    .line 218
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mPaused:Z

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    iget-boolean v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mPaused:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setPaused(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    .line 119
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->initCameraAndStartPreview()V

    .line 173
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mPaused:Z

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    iget-boolean v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mPaused:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setPaused(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mPaused:Z

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return p1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setZoom(I)V

    goto :goto_0
.end method

.method public setCameraDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraDisabled:Z

    .line 159
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 310
    return-void
.end method

.method public setTorch(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setTorch(Z)V

    .line 441
    return-void
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 288
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview, mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->stopPreview()V

    .line 291
    :cond_0
    const-string v0, "AbstractModeBaseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview, mSurfaceHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->startPreview()V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->stopPreview()V

    .line 281
    :cond_0
    return-void
.end method

.method public updatePreviewDisplayHolder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 306
    :cond_0
    return-void
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->cancel()V

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->join()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method
