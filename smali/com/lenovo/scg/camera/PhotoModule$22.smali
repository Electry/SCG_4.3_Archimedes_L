.class Lcom/lenovo/scg/camera/PhotoModule$22;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->finishContinuousShot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 6392
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6397
    const-string v1, "enter onEnd, will call displayScreenExceptByHandler"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6399
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z
    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$7002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 6400
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->enableScreenShow(Z)V
    invoke-static {v1, v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7100(Lcom/lenovo/scg/camera/PhotoModule;Z)V

    .line 6403
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 6405
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->showCameraApp()V

    .line 6407
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 6410
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$7200(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 6411
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z
    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$7302(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 6414
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-nez v1, :cond_0

    .line 6415
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 6416
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->resume()V

    .line 6420
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$6100(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6421
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$22;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$6100(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6424
    return-void
.end method
