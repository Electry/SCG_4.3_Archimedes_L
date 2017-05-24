.class final Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoModule$1;

    .prologue
    .line 2915
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2919
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocus, mPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    :goto_0
    return-void

    .line 2921
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$6600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordEnterOnAutoFocus()V

    .line 2927
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 2928
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->isShutterPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onAutoFocus(ZZ)V

    .line 2931
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->onFocusDone()V

    .line 2933
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$6600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnAutoFocus()V

    goto :goto_0
.end method
