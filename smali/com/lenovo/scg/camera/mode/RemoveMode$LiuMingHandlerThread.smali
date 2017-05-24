.class Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;
.super Landroid/os/HandlerThread;
.source "RemoveMode.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiuMingHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    .line 494
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 495
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 499
    const-string v0, "RemoveMode"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 504
    :pswitch_0
    const/4 v7, 0x0

    .line 520
    .local v7, "YUVData":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$100(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$100(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$200(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$300(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v3

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZZ)[B

    move-result-object v7

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$500(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/morpho/core/ObjectEraser2App;

    move-result-object v0

    if-nez v0, :cond_3

    .line 527
    const-string v0, "RemoveMode"

    const-string v1, "mMorphoObjEraser2JNI == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 533
    const-string v0, "RemoveMode"

    const-string v1, "All data is saved."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$602(Lcom/lenovo/scg/camera/mode/RemoveMode;Z)Z

    .line 536
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$700(Lcom/lenovo/scg/camera/mode/RemoveMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$702(Lcom/lenovo/scg/camera/mode/RemoveMode;Z)Z

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread$1;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$200(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$300(Lcom/lenovo/scg/camera/mode/RemoveMode;)I

    move-result v3

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZZ)[B

    move-result-object v7

    goto :goto_1

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$500(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/morpho/core/ObjectEraser2App;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/morpho/core/ObjectEraser2App;->addImage([B)I

    goto :goto_2

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->execute()V

    goto/16 :goto_0

    .line 553
    .end local v7    # "YUVData":[B
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->updateAfterTouch()V

    goto/16 :goto_0

    .line 556
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RemoveMode;->save()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1100(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    goto/16 :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
