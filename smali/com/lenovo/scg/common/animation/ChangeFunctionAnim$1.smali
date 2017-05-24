.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;
.super Landroid/os/Handler;
.source "ChangeFunctionAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSwitchToFrontImage:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$000(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShortcutAnimNextStep(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$100(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Landroid/view/View;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->destroyViews()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$200(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->startHideAnim()V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartTextAnim(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Z)V

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    const/4 v1, 0x0

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartTextAnim(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Z)V

    goto :goto_0

    .line 126
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$1;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startHideSmartAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$500(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
