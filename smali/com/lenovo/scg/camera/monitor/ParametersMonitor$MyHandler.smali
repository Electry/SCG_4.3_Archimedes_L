.class Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;
.super Landroid/os/Handler;
.source "ParametersMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/monitor/ParametersMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;->this$0:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/monitor/ParametersMonitor;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$MyHandler;-><init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 68
    :pswitch_0
    const-string v0, "ParametersMonitor"

    const-string v1, "get MSG_ONPICTURETAKEN_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    const-string/jumbo v1, "onPictureTaken time out."

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
