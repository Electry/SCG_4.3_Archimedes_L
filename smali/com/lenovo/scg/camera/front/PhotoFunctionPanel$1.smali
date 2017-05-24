.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;
.super Landroid/os/Handler;
.source "PhotoFunctionPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$000(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$100(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$200(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$300(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$400(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->releaseBlinkSpec()V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->releaseGestureSpec()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
