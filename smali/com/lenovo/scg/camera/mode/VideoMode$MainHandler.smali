.class public Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;
.super Landroid/os/Handler;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 436
    :pswitch_0
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$100(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setThumbnailBtnVisible(Z)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1100(Lcom/lenovo/scg/camera/mode/VideoMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # invokes: Lcom/lenovo/scg/camera/mode/VideoMode;->updateRecordingTime()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1200(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mStorageSpace:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1302(Lcom/lenovo/scg/camera/mode/VideoMode;J)J

    .line 411
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cwh mStorageSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mStorageSpace:J
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1300(Lcom/lenovo/scg/camera/mode/VideoMode;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mStorageSpace:J
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1300(Lcom/lenovo/scg/camera/mode/VideoMode;)J

    move-result-wide v0

    const-wide/32 v2, 0x12c00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$100(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->checkStorage()V

    .line 415
    const-string v0, "VIDEO_MODE"

    const-string v1, "cwh low storage space left  stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$100(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->stopVideoMode()V

    goto :goto_0

    .line 432
    :pswitch_3
    const-string v0, "VIDEO_MODE"

    const-string v1, "CLEAR_VIDEO_RECORDING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # invokes: Lcom/lenovo/scg/camera/mode/VideoMode;->clearVideoRecording()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1400(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
