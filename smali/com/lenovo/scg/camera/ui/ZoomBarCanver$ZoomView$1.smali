.class Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;
.super Landroid/os/Handler;
.source "ZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x14

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 402
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_ZOOM_ON_ADD_STEP : mCurrentStepTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$002(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;I)I

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$102(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;Z)Z

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$400(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v1

    # += operator for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$312(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # operator-- for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$010(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->invalidate()V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # invokes: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->onZoomChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)V

    goto :goto_0

    .line 422
    :pswitch_1
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_ZOOM_ON_REDUCE_STEP : mCurrentStepTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$002(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;I)I

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$102(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;Z)Z

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$400(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    move-result v1

    # -= operator for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$320(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # operator-- for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$010(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I

    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->invalidate()V

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    # invokes: Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->onZoomChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->access$700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)V

    goto/16 :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
