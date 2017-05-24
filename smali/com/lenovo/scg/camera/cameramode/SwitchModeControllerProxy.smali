.class public Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerProxy;
.super Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
.source "SwitchModeControllerProxy.java"


# static fields
.field private static final CHANGE_CAMERA_MODE:I = 0x44d

.field private static final SHOW_SHOW_MODE_WINDOW:I = 0x44c

.field private static final WINDOW_MODE:Ljava/lang/String; = "WINDOW_MODE"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 21
    return-void
.end method


# virtual methods
.method public changeWindowMode(I)V
    .locals 5
    .param p1, "windowMode"    # I

    .prologue
    .line 51
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===============changeWindowMode---windowMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 56
    const/16 v2, 0x44d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 57
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 28
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "WINDOW_MODE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 29
    .local v3, "windowMode":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v4, Lcom/lenovo/scg/camera/cameramode/SwitchModeController;

    invoke-interface {v4, v3}, Lcom/lenovo/scg/camera/cameramode/SwitchModeController;->showShowModeWindow(I)V

    goto :goto_0

    .line 32
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "windowMode":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "WINDOW_MODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, "newWindowMode":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v4, Lcom/lenovo/scg/camera/cameramode/SwitchModeController;

    invoke-interface {v4, v2}, Lcom/lenovo/scg/camera/cameramode/SwitchModeController;->changeWindowMode(I)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showShowModeWindow(I)V
    .locals 3
    .param p1, "windowMode"    # I

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 45
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 46
    const/16 v2, 0x44c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 47
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method
