.class Lcom/lenovo/scg/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/camera/CameraHolder;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/camera/CameraHolder;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/camera/CameraHolder;

    # getter for: Lcom/lenovo/scg/camera/CameraHolder;->mCameraOpened:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraHolder;->access$100(Lcom/lenovo/scg/camera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraHolder$MyHandler;->this$0:Lcom/lenovo/scg/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->release()V

    .line 169
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
