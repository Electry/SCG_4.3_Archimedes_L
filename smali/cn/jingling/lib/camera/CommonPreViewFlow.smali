.class public Lcn/jingling/lib/camera/CommonPreViewFlow;
.super Lcn/jingling/lib/camera/AbsPreViewFlow;
.source "CommonPreViewFlow.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCameraSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcn/jingling/lib/camera/CameraManager;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;-><init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V

    .line 30
    return-void
.end method

.method private startPreview(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 79
    :try_start_0
    iget-object v2, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v2}, Lcn/jingling/lib/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 80
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 81
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 82
    invoke-static {v0}, Lcn/jingling/lib/camera/HDRHelper;->clearExposure(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "camera":Landroid/hardware/Camera;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method protected initCameraAndGLView()V
    .locals 9

    .prologue
    .line 95
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 96
    .local v8, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 101
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    iget-object v1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getWidth()I

    move-result v1

    .line 102
    iget-object v2, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v2, v2, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v2}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    .line 103
    iget-object v4, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraDisplayOrientation:I

    iget-boolean v6, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->isCurOpenFront:Z

    invoke-static {v5, v6}, Lcn/jingling/lib/camera/CameraUtils;->getGLRenderDirection(IZ)I

    move-result v5

    const/16 v6, 0x11

    .line 104
    iget-boolean v7, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->isCurOpenFront:Z

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->initCommonRender(IIIIIIZ)V

    .line 106
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    .line 107
    iget-object v2, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    .line 108
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 106
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 109
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcn/jingling/lib/camera/CommonPreViewFlow$2;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/CommonPreViewFlow$2;-><init>(Lcn/jingling/lib/camera/CommonPreViewFlow;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 117
    return-void
.end method

.method public initCameraGlSurfaceView()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public initCameraView()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->createRender(ZZ)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    new-instance v1, Lcn/jingling/lib/camera/CommonPreViewFlow$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/CommonPreViewFlow$1;-><init>(Lcn/jingling/lib/camera/CommonPreViewFlow;)V

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V

    .line 45
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 67
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 59
    invoke-virtual {p0}, Lcn/jingling/lib/camera/CommonPreViewFlow;->initCameraAndGLView()V

    .line 60
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcn/jingling/lib/camera/CommonPreViewFlow;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 61
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    :cond_0
    return-void
.end method

.method public switchCamera(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcn/jingling/lib/camera/AbsPreViewFlow;->switchCamera(Landroid/app/Activity;)Z

    move-result v0

    .line 50
    .local v0, "isOpenSuc":Z
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcn/jingling/lib/camera/CommonPreViewFlow;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 53
    :cond_0
    return v0
.end method
