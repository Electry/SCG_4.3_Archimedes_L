.class Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoModule$1;

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    .line 774
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->interrupt()V

    .line 775
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 783
    const-string v3, "CameraStartUpThread start"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 784
    const-string v3, "CameraStartUpThread-start"

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->addTime(Ljava/lang/String;)V

    .line 785
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 789
    :try_start_0
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 791
    const-string v3, "CameraStartUpThread canceled !!!"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 889
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    add-int/lit8 v1, v3, 0x64

    .line 796
    .local v1, "exCameraId":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isCameraIdSupported(I)Z

    move-result v8

    iput-boolean v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    .line 799
    const-string v3, "CameraStartUpThread OpenCamera start"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v8, v8, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-boolean v9, v9, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    if-eqz v9, :cond_1

    .end local v1    # "exCameraId":I
    :goto_1
    invoke-static {v8, v1}, Lcom/lenovo/scg/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v8

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    invoke-static {v3, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$1002(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 803
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 804
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    const-string v3, "CameraStartUpThread OpenCamera end"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 807
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->readHardwareAbility(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$1100(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V

    .line 813
    const-string v3, "block start"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 815
    .local v4, "t1":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 817
    .local v6, "t2":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "block end cost: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v6, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 819
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v3, :cond_2

    .line 820
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 821
    const-string v3, "CameraStartUpThread canceled !!!"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 876
    .end local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "t1":J
    .end local v6    # "t2":J
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    const-string v3, "camera startup thread error:CameraHardwareException %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHardwareException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 879
    const-string/jumbo v3, "openCamera catched Exception: "

    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/CameraUtil;->printStackTrace(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 800
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    .restart local v1    # "exCameraId":I
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v1, v9, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    goto :goto_1

    .line 825
    .end local v1    # "exCameraId":I
    .restart local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .restart local v4    # "t1":J
    .restart local v6    # "t2":J
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    const-string v3, "block return"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    :try_end_1
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 880
    .end local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "t1":J
    .end local v6    # "t2":J
    :catch_1
    move-exception v0

    .line 881
    .local v0, "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    const-string v3, "camera startup thread error:CameraDisabledException %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraDisabledException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 883
    const-string/jumbo v3, "openCamera catched Exception:"

    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/CameraUtil;->printStackTrace(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    .restart local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .restart local v4    # "t1":J
    .restart local v6    # "t2":J
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->initializeCapabilities(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$1200(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V

    .line 832
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->initializeFocusManager(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$1300(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V

    .line 833
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v3, :cond_5

    .line 834
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    :try_end_2
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 884
    .end local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "t1":J
    .end local v6    # "t2":J
    :catch_2
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "camera startup thread RuntimeException: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 887
    const-string/jumbo v3, "openCamera catched Exception:"

    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/CameraUtil;->printStackTrace(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 837
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .restart local v4    # "t1":J
    .restart local v6    # "t2":J
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, -0x1

    sget-object v9, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->INITIAL:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {v3, v8, v9}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 838
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v3, :cond_6

    .line 840
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    goto/16 :goto_0

    .line 844
    :cond_6
    const-string v3, "CameraStartUpThread initZSD start"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 845
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-boolean v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    if-nez v3, :cond_8

    .line 846
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->initZSDStatus()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1400(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 847
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->startPreview()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1500(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 852
    :goto_2
    const-string v3, "CameraStartUpThread initZSD end"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 854
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 856
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v3, v8, v9}, Lcom/lenovo/scg/camera/PhotoModule;->access$1602(Lcom/lenovo/scg/camera/PhotoModule;J)J

    .line 857
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 860
    const-string v3, "CameraStartUpThread-end"

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->addTime(Ljava/lang/String;)V

    .line 862
    const-string v3, "CameraStartUpThread end"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 864
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 866
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->changeSizeIfNeed()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1700(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 868
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v3, :cond_7

    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 869
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v3

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    invoke-static {v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$1000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/CameraISP;->setCameraDevice(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 870
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraISP;->start()V

    .line 873
    :cond_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoModule;->getLastThumbnailUncached()V

    .line 874
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v8, 0x1

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitializedSuccess:Z
    invoke-static {v3, v8}, Lcom/lenovo/scg/camera/PhotoModule;->access$1802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    goto/16 :goto_0

    .line 849
    :cond_8
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->initZSDStatus()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1400(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 850
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->startPreview()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$1500(Lcom/lenovo/scg/camera/PhotoModule;)V
    :try_end_3
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method
