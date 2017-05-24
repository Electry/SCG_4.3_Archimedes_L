.class Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "MiniCameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
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

    .line 77
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->mCameraOpened:Z
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->access$000(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->release()V

    .line 74
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
