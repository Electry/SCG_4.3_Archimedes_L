.class Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;
.super Landroid/os/Handler;
.source "CaptureAnimManager1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/CaptureAnimManager1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->startAnim()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, "jiaxiaowei"

    const-string v1, "drawAnimation: mView == null && return false: anim end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    # getter for: Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->invalidate()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;->this$0:Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->stopCaptureAnim()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
