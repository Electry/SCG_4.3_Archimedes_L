.class Lcom/lenovo/scg/common/animation/SmartAnimation$1;
.super Landroid/os/Handler;
.source "SmartAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/SmartAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # invokes: Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$000(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # invokes: Lcom/lenovo/scg/common/animation/SmartAnimation;->destroyViews()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$100(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartTextAnim(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$200(Lcom/lenovo/scg/common/animation/SmartAnimation;Z)V

    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    const/4 v1, 0x0

    # invokes: Lcom/lenovo/scg/common/animation/SmartAnimation;->startSmartTextAnim(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$200(Lcom/lenovo/scg/common/animation/SmartAnimation;Z)V

    goto :goto_0

    .line 79
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # invokes: Lcom/lenovo/scg/common/animation/SmartAnimation;->startHideSmartAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$300(Lcom/lenovo/scg/common/animation/SmartAnimation;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
