.class Lcom/lenovo/scg/camera/way/CaptureWayManager$1;
.super Landroid/os/Handler;
.source "CaptureWayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MSG_UPDATE_TIME : mFrontCurrentTimer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$000(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$000(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$100(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/mode/CaptureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$100(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/mode/CaptureListener;

    move-result-object v1

    const-string v2, "front time"

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/CaptureListener;->capture(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    const/4 v2, 0x3

    # setter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$002(Lcom/lenovo/scg/camera/way/CaptureWayManager;I)I

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$200(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$300(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$000(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/way/TimerUI;->showTimerRemind(Landroid/content/Context;I)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # operator-- for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$010(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$200(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 95
    .local v0, "bObj":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # setter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$402(Lcom/lenovo/scg/camera/way/CaptureWayManager;Z)Z

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$500(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$400(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$600(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->registPreviewCallback()V

    .line 105
    :cond_3
    :goto_1
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MSG_SET_ALLOW_CAPTURE: isAllowWayCapture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$400(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # getter for: Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$600(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->unregistPreviewCallback()V

    goto :goto_1

    .line 108
    .end local v0    # "bObj":Ljava/lang/Boolean;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # invokes: Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeOpenedWays()V
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$700(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V

    goto/16 :goto_0

    .line 111
    :pswitch_3
    const-string v1, "WayManager"

    const-string v2, "handleMessage: MSG_REOPEN_VOICE_WAY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;->this$0:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    # invokes: Lcom/lenovo/scg/camera/way/CaptureWayManager;->reopenVoiceEng()V
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->access$800(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V

    goto/16 :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
