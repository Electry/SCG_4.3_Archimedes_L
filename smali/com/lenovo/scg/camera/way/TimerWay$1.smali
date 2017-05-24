.class Lcom/lenovo/scg/camera/way/TimerWay$1;
.super Landroid/os/Handler;
.source "TimerWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/TimerWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerWay;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerWay$1;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string v0, "TimerWay"

    const-string v1, "handleMessage: MSG_UPDATE_TIMER_VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay$1;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    # invokes: Lcom/lenovo/scg/camera/way/TimerWay;->remindTimeValue()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/TimerWay;->access$000(Lcom/lenovo/scg/camera/way/TimerWay;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
