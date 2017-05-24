.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;
.super Landroid/os/Handler;
.source "ShowModeWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initMainHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1597
    :goto_0
    return-void

    .line 1580
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1581
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    move-result-object v0

    new-instance v2, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8$1;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;)V

    invoke-interface {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInitAllProModesCompleted:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$3002(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z

    .line 1592
    monitor-exit v1

    goto :goto_0

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1578
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method
