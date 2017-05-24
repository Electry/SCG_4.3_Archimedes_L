.class public Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
.super Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
.source "ShowModeControllerProxy.java"


# static fields
.field private static final BACKGROUNDCOLOR:Ljava/lang/String; = "BACKGROUNDCOLOR"

.field private static final CAMERA_MODE:Ljava/lang/String; = "CAMERA_MODE"

.field public static final DISPLAY_CURRENT_MODE_VIEWS:I = 0x3ef

.field public static final ENTER_MODE:I = 0x3ea

.field public static final FINISH_GAUSS_EXT:I = 0x3ee

.field public static final HIDE_GAUSS_BLUR_BITMAP:I = 0x3f0

.field public static final ON_MODE_FRAME_BACK_PRESSED:I = 0x3f1

.field public static final RESTORE_BACKGROUND:I = 0x3ec

.field public static final SHOW_CAMERA_VIEWS:I = 0x3ed

.field public static final SHOW_MODE_WINDOW_BACK_PRESSED:I = 0x3e8

.field public static final SHOW_SWITCH_MODE_WINDOW:I = 0x3e9

.field public static final UPDATE_BACKGROUND:I = 0x3eb

.field private static final WINDOW_MODE:Ljava/lang/String; = "WINDOW_MODE"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayCurrentModeViews()V
    .locals 2

    .prologue
    const/16 v1, 0x3ef

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void
.end method

.method public enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;I)V
    .locals 4
    .param p1, "cameraMode"    # Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .param p2, "windowMode"    # I

    .prologue
    const/16 v3, 0x3ea

    .line 110
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "CAMERA_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 113
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    iput v3, v1, Landroid/os/Message;->what:I

    .line 117
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public finishGaussExt()V
    .locals 2

    .prologue
    const/16 v1, 0x3ee

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    return-void
.end method

.method public hideGaussBlur2DBitmap()V
    .locals 2

    .prologue
    const/16 v1, 0x3f0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method

.method public hideShowModeWindow(I)V
    .locals 4
    .param p1, "windowMode"    # I

    .prologue
    const/16 v3, 0x3e8

    .line 123
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 128
    iput v3, v1, Landroid/os/Message;->what:I

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    if-nez v9, :cond_0

    .line 97
    :goto_0
    return-void

    .line 49
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "WINDOW_MODE"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 53
    .local v6, "mode":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->hideShowModeWindow(I)V

    goto :goto_0

    .line 57
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "mode":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 58
    .local v5, "data":Landroid/os/Bundle;
    const-string v9, "WINDOW_MODE"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 60
    .local v7, "windowMode":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9, v7}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->showFunctionDetailsWindow(I)V

    goto :goto_0

    .line 63
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v7    # "windowMode":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 64
    .local v3, "cameraModeData":Landroid/os/Bundle;
    const-string v9, "WINDOW_MODE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 66
    .local v8, "windowModeValue":I
    const-string v9, "CAMERA_MODE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .line 67
    .local v2, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9, v8, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->delayHideShowModeWindow(ILcom/lenovo/scg/camera/cameramode/CameraMode;)V

    .line 68
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;)V

    goto :goto_0

    .line 72
    .end local v2    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .end local v3    # "cameraModeData":Landroid/os/Bundle;
    .end local v8    # "windowModeValue":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 73
    .local v4, "colorBundle":Landroid/os/Bundle;
    const-string v9, "BACKGROUNDCOLOR"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "backgroundColor":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->setBackground(I)V

    goto :goto_0

    .line 77
    .end local v0    # "backgroundColor":I
    .end local v4    # "colorBundle":Landroid/os/Bundle;
    :pswitch_4
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->restoreBackground()V

    goto :goto_0

    .line 80
    :pswitch_5
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->showCameraViews()V

    goto :goto_0

    .line 83
    :pswitch_6
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->finishGaussExt()V

    goto :goto_0

    .line 86
    :pswitch_7
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->displayCurrentModeViews()V

    goto :goto_0

    .line 89
    :pswitch_8
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->hideGaussBlur2DBitmap()V

    goto/16 :goto_0

    .line 92
    :pswitch_9
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    check-cast v9, Lcom/lenovo/scg/camera/cameramode/ShowModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeController;->onModeFrameBackPressed()V

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onModeFrameBackpressed()V
    .locals 2

    .prologue
    const/16 v1, 0x3f1

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public restoreBackgroundColor()V
    .locals 2

    .prologue
    const/16 v1, 0x3ec

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0x3eb

    .line 133
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "BACKGROUNDCOLOR"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 138
    iput v3, v1, Landroid/os/Message;->what:I

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public showCameraViews()V
    .locals 2

    .prologue
    const/16 v1, 0x3ed

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method public showSwitchModeWindow(I)V
    .locals 4
    .param p1, "windowMode"    # I

    .prologue
    const/16 v3, 0x3e9

    .line 100
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WINDOW_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 104
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    iput v3, v1, Landroid/os/Message;->what:I

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
