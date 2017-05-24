.class Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;
.super Landroid/os/Handler;
.source "ShowModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 39
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "WINDOW_MODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "windowMode":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->mIsDelayHide:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->access$002(Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;Z)Z

    .line 41
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->hideShowModeWindow(I)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
