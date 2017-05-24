.class Lcom/lenovo/scg/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    return-void
.end method

.method private doSetFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "doSetFaceDetectionListener"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "mCamera = null, setFaceDetectionListener will cancel"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableShutterSound(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, "enableShutterSound"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 197
    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 3
    .param p1, "surfaceTexture"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v1, v1, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v2, "setPreviewTexture"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    check-cast p1, Landroid/graphics/SurfaceTexture;

    .end local p1    # "surfaceTexture":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewTexture error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "startFaceDetection"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 162
    return-void
.end method

.method private stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraManager;->mCameraParameterObserver:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string/jumbo v1, "stopFaceDetection"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->onMethodCalled(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 168
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 205
    const-string v2, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 210
    const-string v2, "CameraManager"

    const-string v3, "handleMessage mCamera == null && return "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 424
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CameraProxy message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraManager handle message RuntimeException: %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 430
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 436
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v8}, Lcom/lenovo/scg/camera/CameraManager;->access$002(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_2
    const-string v2, "CameraManager.handleMessge: start release"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 221
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraISP;->stop()V

    .line 222
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraISP;->emptyCameraDevice()V

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 227
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 228
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 231
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$002(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x1

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z

    .line 236
    const-string v2, "CameraManager.handleMessge: end release"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 439
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraManager handle message Exception: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$202(Lcom/lenovo/scg/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 243
    :try_start_4
    const-string v2, "CameraManager.handleMessge: start RECONNECT"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x1

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z

    .line 246
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    .line 247
    const-string v2, "CameraManager.handleMessge: end RECONNECT"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 248
    :catch_2
    move-exception v1

    .line 249
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v2, "CameraManager.handleMessge: RECONNECT error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/CameraManager;->access$202(Lcom/lenovo/scg/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto/16 :goto_0

    .line 255
    .end local v1    # "ex":Ljava/io/IOException;
    :pswitch_2
    const-string v2, "CameraManager.handleMessge: start UNLOCK"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 257
    const-string v2, "CameraManager.handleMessge: end UNLOCK"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :pswitch_3
    const-string v2, "CameraManager.handleMessge: start LOCK"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 263
    const-string v2, "CameraManager.handleMessge: end LOCK"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 275
    :pswitch_5
    :try_start_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 277
    :catch_3
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraManager.handleMessge: setPreviewDisplay error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 287
    const-string v2, "CameraManager"

    const-string/jumbo v5, "startPreview() --- end"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :pswitch_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 299
    :pswitch_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 305
    :pswitch_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 311
    :pswitch_a
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 318
    :pswitch_b
    :try_start_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 320
    :catch_4
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v2, "autoFocus error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_c
    :try_start_a
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 331
    :catch_5
    move-exception v0

    .line 332
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_b
    const-string v2, "cancelAutoFocus error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_d
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lenovo/scg/camera/CameraManager;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    invoke-static {v2, v5, v6}, Lcom/lenovo/scg/camera/CameraManager;->access$300(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 345
    :pswitch_e
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 351
    :pswitch_f
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 357
    :pswitch_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->doSetFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 363
    :pswitch_11
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->startFaceDetection()V

    goto/16 :goto_0

    .line 369
    :pswitch_12
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_0

    .line 375
    :pswitch_13
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 380
    :pswitch_14
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x1

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z

    .line 381
    const-string v5, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set parameters: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$400(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraManager;->access$400(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 389
    :pswitch_15
    const-string v2, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameters : mParametersIsDirty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/CameraManager;->access$100(Lcom/lenovo/scg/camera/CameraManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$100(Lcom/lenovo/scg/camera/CameraManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$502(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 395
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 401
    :pswitch_16
    const-string v2, "CameraManager.handleMessge: start getParameters force"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$502(Lcom/lenovo/scg/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 403
    const-string v2, "CameraManager.handleMessge: end getParameters force"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :pswitch_17
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    # getter for: Lcom/lenovo/scg/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraManager;->access$000(Lcom/lenovo/scg/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 415
    :pswitch_18
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    .line 420
    :pswitch_19
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraHandler;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    const/4 v5, 0x1

    # setter for: Lcom/lenovo/scg/camera/CameraManager;->mParametersIsDirty:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/CameraManager;->access$102(Lcom/lenovo/scg/camera/CameraManager;Z)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 433
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v1

    .line 434
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_5
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method
