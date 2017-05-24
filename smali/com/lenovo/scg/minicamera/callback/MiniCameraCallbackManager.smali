.class public Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;
.super Ljava/lang/Object;
.source "MiniCameraCallbackManager.java"


# static fields
.field public static final HAVE_BITS_PRE_BYTE:F = 8.0f

.field private static final TAG:Ljava/lang/String; = "CallbackManager"


# instance fields
.field private mCallbackBuffers:[B

.field private mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

.field private mIsEnabled:Z

.field private mIsFirst:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 8
    .param p1, "cameraproxy"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 35
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mIsEnabled:Z

    .line 37
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 39
    .local v4, "previewsize":Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 41
    .local v2, "format":I
    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    .line 43
    .local v3, "pixels":I
    int-to-float v5, v3

    const/high16 v6, 0x41000000    # 8.0f

    div-float v0, v5, v6

    .line 45
    .local v0, "bytes":F
    const-string v5, "CallbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "format="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pixels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",previewsizeW="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",previewsizeH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v1, v5

    .line 49
    .local v1, "dataBufferSize":I
    const-string v5, "CallbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallbackManager, dataBufferSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-array v5, v1, [B

    iput-object v5, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCallbackBuffers:[B

    .line 52
    const-string v5, "CallbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallbackManager, mCallbackBuffers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCallbackBuffers:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized setCallbackBuffer()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCallbackBuffers:[B

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallbackBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCallbackBuffers:[B

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->mIsEnabled:Z

    .line 57
    return-void
.end method
