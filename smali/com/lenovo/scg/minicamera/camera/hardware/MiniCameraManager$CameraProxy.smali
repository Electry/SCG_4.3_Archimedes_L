.class public Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "MiniCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->Assert(Z)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;
    .param p2, "x1"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$1;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$100(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->waitDone()Z

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$400(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->waitDone()Z

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$200(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mReconnectIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$200(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->waitDone()Z

    .line 241
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v0, "CameraManager"

    const-string/jumbo v1, "null parameters in setParameters()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method

.method public setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->waitDone()Z

    .line 273
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    return-void
.end method

.method public waitDone()Z
    .locals 5

    .prologue
    .line 313
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 314
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;Ljava/lang/Object;)V

    .line 324
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->this$0:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;->access$600(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    monitor-exit v2

    .line 333
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v3, "CameraManager"

    const-string/jumbo v4, "waitDone interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 332
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
