.class public Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/CameraManager;)V
    .locals 1

    .prologue
    .line 481
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->Assert(Z)V

    .line 484
    iget-object v0, p1, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-direct {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;-><init>()V

    iput-object v0, p1, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    .line 487
    :cond_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/CameraManager;Lcom/lenovo/scg/camera/CameraManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/CameraManager;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/CameraManager$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;-><init>(Lcom/lenovo/scg/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "addCallbackBuffer"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 594
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "autoFocus"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "cancelAutoFocus"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 606
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v2, "enableShutterSound"

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 826
    return-void

    :cond_0
    move v0, v1

    .line 825
    goto :goto_0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 789
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 795
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 797
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getParametersForce()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "getParametersForce"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 813
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "reconnect"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$200(Lcom/lenovo/scg/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$200(Lcom/lenovo/scg/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 537
    :cond_0
    return-void
.end method

.method public refreshParameters()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "refreshParameters"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->resetRecord()V

    .line 500
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 502
    return-void
.end method

.method public releaseForce()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    const-string/jumbo v0, "releaseForce: start release"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraISP;->stop()V

    .line 514
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraISP;->emptyCameraDevice()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/CameraManager;->access$002(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z

    .line 526
    const-string/jumbo v0, "releaseForce: end release"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setAutoFocusMoveCallback"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setDisplayOrientation"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setErrorCallback"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 679
    return-void
.end method

.method public setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    const-string v2, "CameraManager"

    const-string/jumbo v3, "null parameters in setParameters()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordSetParameters(Landroid/hardware/Camera$Parameters;)V

    .line 753
    const/4 v1, 0x0

    .line 755
    .local v1, "mFlattenString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 760
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setExFeatureParameters send out CameraHandler message with preview-size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "preview-size"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and videoSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "video-size"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 769
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v2, v2, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onCameraParametersChanged(Ljava/lang/String;)V

    .line 772
    const-string v2, "ZSD_DEBUG_set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "lenovo_hardware_ability"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "params.flatten() ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setFaceDetectionListener"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 664
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setOneShotPreviewCallback"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 578
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    const-string v2, "CameraManager"

    const-string/jumbo v3, "null parameters in setParameters()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->onPreviewSizeChanged(Landroid/hardware/Camera$Size;)V

    .line 702
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->onPictureSizeChanged(Landroid/hardware/Camera$Size;)V

    .line 704
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->onFlashModeChanged(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->onMeteringModeChanged(Ljava/lang/String;)V

    .line 707
    const-string v2, "ZSD_DEBUG_get"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "lenovo_hardware_ability"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordSetParameters(Landroid/hardware/Camera$Parameters;)V

    .line 717
    const/4 v1, 0x0

    .line 719
    .local v1, "mFlattenString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 725
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParameters send out CameraHandler message with preview-size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "preview-size"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and videoSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "video-size"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 733
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v2, v2, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onCameraParametersChanged(Ljava/lang/String;)V

    .line 736
    const-string v2, "ZSD_DEBUG_set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraManager;->access$500(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "lenovo_hardware_ability"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "params.flatten() ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setPreviewCallback"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 584
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setPreviewCallbackWithBuffer"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 589
    return-void
.end method

.method public setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setPreviewDisplayAsync"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 558
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setPreviewTextureAsync"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 553
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "setZoomChangeListener"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 658
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "startFaceDetection"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 669
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "startPreviewAsync"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "stopFaceDetection"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 569
    const/4 v0, 0x0

    const-string v1, "00000+++00000    CameraManager ============== stopPreview"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "stopPreview"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 572
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 573
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V
    .locals 9
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "cameraState"    # I
    .param p6, "focusState"    # I

    .prologue
    .line 628
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordTakePicture()V

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$1;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "unlock"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    return-void
.end method

.method public waitDone()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 830
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 831
    .local v3, "waitDoneLock":Ljava/lang/Object;
    new-instance v2, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Ljava/lang/Object;)V

    .line 841
    .local v2, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v3

    .line 842
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraManager;->access$700(Lcom/lenovo/scg/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 843
    .local v0, "bPost":Z
    if-nez v0, :cond_0

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bPost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n----------------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 845
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :goto_0
    return v4

    .line 848
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :try_start_2
    monitor-exit v3

    .line 854
    const/4 v4, 0x1

    goto :goto_0

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, "ex":Ljava/lang/InterruptedException;
    const-string v5, "CameraManager"

    const-string/jumbo v6, "waitDone interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    monitor-exit v3

    goto :goto_0

    .line 853
    .end local v0    # "bPost":Z
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
