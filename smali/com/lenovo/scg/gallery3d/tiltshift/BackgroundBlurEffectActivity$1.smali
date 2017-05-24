.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;
.super Landroid/os/Handler;
.source "BackgroundBlurEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 177
    :cond_1
    return-void

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateBitmap()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$000(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showExitDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->finish()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
