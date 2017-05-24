.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;
.super Landroid/os/Handler;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 415
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 419
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # setter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$102(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->shutdownExecutorService()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$200(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->saveFile()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 432
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$600(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->playCameraClickSound()V

    goto :goto_0

    .line 442
    :pswitch_2
    const-string v0, "handle msg: shot finish"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 446
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # setter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$102(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->shutdownExecutorService()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$200(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    .line 451
    new-instance v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;->start()V

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 463
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$600(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$700(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->finishContinuousShot(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
