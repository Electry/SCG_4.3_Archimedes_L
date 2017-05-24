.class Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "MiniCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 206
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CameraProxy message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/RuntimeException;
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v6}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$102(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 219
    :cond_2
    throw v0

    .line 125
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_2
    const-string v2, "CameraManager"

    const-string v3, "CameraHandler, handleMessage, RELEASE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 127
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$102(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$202(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :try_start_3
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$202(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 140
    .end local v1    # "ex":Ljava/io/IOException;
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0

    .line 145
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 151
    :pswitch_5
    :try_start_5
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    .line 163
    :pswitch_7
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 167
    :pswitch_8
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$300(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$402(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$302(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Z)Z

    goto/16 :goto_0

    .line 174
    :pswitch_9
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$302(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Z)Z

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$500(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$500(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 180
    :pswitch_a
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$302(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Z)Z

    goto/16 :goto_0

    .line 184
    :pswitch_b
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 189
    :pswitch_c
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 193
    :pswitch_d
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_e
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 202
    :pswitch_f
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 214
    .local v0, "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 215
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
