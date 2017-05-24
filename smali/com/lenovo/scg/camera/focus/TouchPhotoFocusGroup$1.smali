.class Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup$1;
.super Landroid/os/Handler;
.source "TouchPhotoFocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup$1;->this$0:Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 29
    :pswitch_0
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onShutterButtonClick()Z

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->captureForFrontTouchNo3sDelay()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
