.class Lcom/lenovo/scg/camera/way/TimerUI$1;
.super Landroid/os/Handler;
.source "TimerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/TimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerUI;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI$1;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    const-string v0, "TimerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_ANIM_END mTimerView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI$1;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI$1;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI$1;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI$1;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->access$100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
