.class Lcom/lenovo/scg/camera/focus/FocusGroup$2;
.super Landroid/os/Handler;
.source "FocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/FocusGroup;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const-string v1, "FocusGroupBase"

    const-string v2, "handleMessage: RESET_TOUCH_FOCUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->cancelAutoFocus()Z

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 153
    :pswitch_1
    const-string v1, "FocusGroupBase"

    const-string v2, "handleMessage: MSG_CHECK_POSTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->isMove()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPosChanged()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v1, "FocusGroupBase"

    const-string v2, "handleMessage: MSG_REMOVE_CF_INDICATOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    goto :goto_0

    .line 173
    :pswitch_3
    const-string v1, "FocusGroupBase"

    const-string v2, "handleMessage: MSG_AUTOFOCUS_TIMEOUT_PROTECT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocus(Z)Z

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    goto :goto_0

    .line 182
    :pswitch_4
    const-string v1, "FocusGroupBase"

    const-string v2, "handleMessage: MSG_ENABLE_SWIPING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Lcom/lenovo/scg/camera/ActivityBase;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ActivityBase;->setSwipingEnabled(Z)V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
