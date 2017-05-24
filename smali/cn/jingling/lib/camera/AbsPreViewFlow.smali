.class public abstract Lcn/jingling/lib/camera/AbsPreViewFlow;
.super Ljava/lang/Object;
.source "AbsPreViewFlow.java"

# interfaces
.implements Lcn/jingling/lib/camera/IPreViewFlow;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected isCurOpenFront:Z

.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

.field protected mCameraDisplayOrientation:I

.field protected mCameraManager:Lcn/jingling/lib/camera/CameraManager;

.field protected mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

.field protected mContext:Landroid/content/Context;

.field protected mDisplayOrientation:I

.field protected mDisplayRotation:I

.field protected mJpegRotation:I

.field private mOrientationEventListener:Lcn/jingling/lib/camera/CameraOrientationListener;

.field protected mPreviewSize:Landroid/hardware/Camera$Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcn/jingling/lib/camera/CameraManager;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcn/jingling/lib/camera/CameraOrientationListener;

    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/jingling/lib/camera/CameraOrientationListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mOrientationEventListener:Lcn/jingling/lib/camera/CameraOrientationListener;

    .line 36
    iput-object p2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    .line 37
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraManager;->getCameraViewBean()Lcn/jingling/lib/camera/CameraViewBean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    .line 38
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraManager;->getCameraControl()Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 39
    return-void
.end method

.method private _openCamera(Landroid/app/Activity;Z)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isFront"    # Z

    .prologue
    .line 181
    invoke-static {p2}, Lcn/jingling/lib/camera/CameraUtils;->getCameraId(Z)I

    move-result v0

    .line 182
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 183
    iput-boolean p2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    .line 184
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    .line 189
    invoke-virtual {p0, p1, v0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->setDisplayOrientation(Landroid/app/Activity;I)V

    .line 190
    const-string/jumbo v1, "xxxx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCameraDisplayOrientation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 192
    invoke-virtual {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->updatePreviewAndPictureSize()V

    .line 193
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private _openCameraTwice(Landroid/app/Activity;Z)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isFront"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCamera(Landroid/app/Activity;Z)Z

    move-result v0

    .line 174
    .local v0, "isOpen":Z
    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCamera(Landroid/app/Activity;Z)Z

    move-result v0

    .line 177
    :cond_0
    return v0
.end method

.method private updateRotation()V
    .locals 5

    .prologue
    .line 197
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    .line 198
    iget-object v3, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mOrientationEventListener:Lcn/jingling/lib/camera/CameraOrientationListener;

    invoke-virtual {v3}, Lcn/jingling/lib/camera/CameraOrientationListener;->getOrientation()I

    move-result v3

    iget v4, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mDisplayOrientation:I

    .line 197
    invoke-static {v1, v2, v3, v4}, Lcn/jingling/lib/camera/CameraUtils;->getPictureRotation(Landroid/content/Context;ZII)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mJpegRotation:I

    .line 199
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 200
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 202
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 203
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 209
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 210
    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    .line 212
    :cond_0
    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mContext:Landroid/content/Context;

    .line 213
    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 214
    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    .line 215
    iput-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    .line 216
    return-void
.end method

.method public isOpenFront()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mOrientationEventListener:Lcn/jingling/lib/camera/CameraOrientationListener;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraOrientationListener;->disable()V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 55
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraViewBean;->onViewPause()V

    .line 59
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraViewBean;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcn/jingling/lib/camera/AbsPreViewFlow;->retake(Landroid/app/Activity;)Z

    .line 45
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mOrientationEventListener:Lcn/jingling/lib/camera/CameraOrientationListener;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraOrientationListener;->enable()V

    .line 46
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/CameraViewBean;->onViewResume()V

    goto :goto_0
.end method

.method public openCamera(Landroid/app/Activity;Z)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isFront"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCameraTwice(Landroid/app/Activity;Z)Z

    move-result v0

    .line 86
    .local v0, "isOpen":Z
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->initCameraView()V

    .line 88
    invoke-virtual {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->initCameraGlSurfaceView()V

    .line 90
    :cond_0
    return v0
.end method

.method public retake(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 96
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 97
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 98
    iput-object v2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    invoke-direct {p0, p1, v1}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCameraTwice(Landroid/app/Activity;Z)Z

    move-result v0

    .line 101
    .local v0, "openResult":Z
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jingling/lib/livefilter/CameraPreview;->setVisibility(I)V

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->initCameraGlSurfaceView()V

    .line 107
    :cond_2
    return v0
.end method

.method protected setDisplayOrientation(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cameraId"    # I

    .prologue
    .line 62
    invoke-static {p1}, Lcn/jingling/lib/camera/CameraUtils;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mDisplayRotation:I

    .line 63
    iget v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mDisplayRotation:I

    invoke-static {v0, p2}, Lcn/jingling/lib/camera/CameraUtils;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mDisplayOrientation:I

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcn/jingling/lib/camera/CameraUtils;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraDisplayOrientation:I

    .line 65
    return-void
.end method

.method public switchCamera(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "openResult":Z
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 116
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 117
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 118
    iput-object v4, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    .line 120
    :cond_0
    iget-boolean v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    if-eqz v1, :cond_2

    .line 121
    invoke-direct {p0, p1, v2}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCameraTwice(Landroid/app/Activity;Z)Z

    move-result v0

    .line 122
    iput-boolean v2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->initCameraGlSurfaceView()V

    .line 130
    :cond_1
    return v0

    .line 124
    :cond_2
    invoke-direct {p0, p1, v3}, Lcn/jingling/lib/camera/AbsPreViewFlow;->_openCameraTwice(Landroid/app/Activity;Z)Z

    move-result v0

    .line 125
    iput-boolean v3, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->isCurOpenFront:Z

    goto :goto_0
.end method

.method public takePictureImmediately(Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V
    .locals 4
    .param p1, "cameraControl"    # Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcn/jingling/lib/camera/AbsPreViewFlow$1;

    invoke-direct {v0, p0}, Lcn/jingling/lib/camera/AbsPreViewFlow$1;-><init>(Lcn/jingling/lib/camera/AbsPreViewFlow;)V

    .line 146
    .local v0, "scb":Landroid/hardware/Camera$ShutterCallback;
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 147
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 148
    invoke-direct {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->updateRotation()V

    .line 151
    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcn/jingling/lib/camera/AbsPreViewFlow$2;

    invoke-direct {v2, p0, p1}, Lcn/jingling/lib/camera/AbsPreViewFlow$2;-><init>(Lcn/jingling/lib/camera/AbsPreViewFlow;Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 159
    return-void
.end method

.method protected updatePreviewAndPictureSize()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    iget-object v1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1}, Lcn/jingling/lib/camera/CameraManager$ICameraControl;->updatePreviewAndPictureSize(Landroid/hardware/Camera;)V

    .line 77
    return-void
.end method
