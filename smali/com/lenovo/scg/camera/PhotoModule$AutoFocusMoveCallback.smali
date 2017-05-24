.class final Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoModule$1;

    .prologue
    .line 2938
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2944
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->isWaitOnPictureTaken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "onAutoFocusMoving: isWaitOnPictureTaken() == true && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :goto_0
    return-void

    .line 2948
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_1

    .line 2950
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "onAutoFocusMoving: getCurrentMode() == MODE.PANORAMA && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2955
    :cond_1
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "onAutoFocusMoving()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$6600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordEnterOnAutoFocusMoving()V

    .line 2958
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 2959
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$6600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnAutoFocusMoving()V

    goto :goto_0
.end method
