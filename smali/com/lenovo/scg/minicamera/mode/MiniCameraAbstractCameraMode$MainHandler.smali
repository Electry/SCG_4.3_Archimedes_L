.class Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;
.super Landroid/os/Handler;
.source "MiniCameraAbstractCameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
    .param p2, "x1"    # Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;-><init>(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->onCameraOpened()V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->onPreviewStarted()V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # setter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;
    invoke-static {v0, v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$102(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;)Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # setter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mOpenCameraFail:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$202(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Z)Z

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # setter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraStartUpThread:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;
    invoke-static {v0, v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$102(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;)Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$CameraStartUpThread;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode$MainHandler;->this$0:Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;

    # setter for: Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->mCameraDisabled:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->access$302(Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;Z)Z

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
