.class Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;
.super Landroid/os/Handler;
.source "MiniCameraZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x14

    const/16 v5, 0xd

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_ZOOM_ON_ADD_STEP : mCurrentStepTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$002(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;I)I

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$102(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;Z)Z

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # += operator for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$312(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # operator-- for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$010(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->invalidate()V

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # invokes: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->onZoomChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$600(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)V

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_ZOOM_ON_REDUCE_STEP : mCurrentStepTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$002(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;I)I

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$102(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;Z)Z

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # -= operator for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$320(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # operator-- for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$010(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->invalidate()V

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v0, v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;->this$1:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    # invokes: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->onZoomChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->access$600(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)V

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
