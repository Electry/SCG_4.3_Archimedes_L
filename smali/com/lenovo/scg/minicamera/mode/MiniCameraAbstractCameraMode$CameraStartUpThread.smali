.class Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "MiniCameraAbstractCameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p2, "x1"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;-><init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    .line 318
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->interrupt()V

    .line 319
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 330
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v2, "AbstractModeBaseController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraStartUpThread, run!! mCancelled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # getter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$500(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v0

    .line 340
    .local v0, "cameraDevice":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # invokes: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->initCameraConfigManager(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$600(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    .line 342
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # getter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mConfigManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$700(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->initializeCapabilities()V

    .line 346
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    if-nez v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # invokes: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->setCameraParameters(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$800(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    .line 350
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # getter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$900(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    if-nez v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->startPreview()V

    .line 356
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->mCancelled:Z

    if-nez v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->startScan()V
    :try_end_0
    .catch Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 360
    .end local v0    # "cameraDevice":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # getter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$900(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 363
    .end local v1    # "e":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraDisabledException;
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # getter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$900(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
