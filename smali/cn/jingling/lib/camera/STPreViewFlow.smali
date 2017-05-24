.class public Lcn/jingling/lib/camera/STPreViewFlow;
.super Lcn/jingling/lib/camera/AbsPreViewFlow;
.source "STPreViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;
    }
.end annotation


# instance fields
.field private mObserverRenderer:Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcn/jingling/lib/camera/CameraManager;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;-><init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V

    .line 26
    new-instance v0, Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;-><init>(Lcn/jingling/lib/camera/STPreViewFlow;Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mObserverRenderer:Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;

    .line 30
    return-void
.end method

.method private cameraBindtexture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 119
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcn/jingling/lib/camera/AbsPreViewFlow;->free()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mObserverRenderer:Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;

    .line 133
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public initCameraGlSurfaceView()V
    .locals 6

    .prologue
    .line 90
    iget-object v1, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v1}, Lcn/jingling/lib/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 91
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 92
    iget-object v1, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    iget-object v2, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 93
    iget v4, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraDisplayOrientation:I

    iget-boolean v5, p0, Lcn/jingling/lib/camera/STPreViewFlow;->isCurOpenFront:Z

    invoke-static {v4, v5}, Lcn/jingling/lib/camera/CameraUtils;->getGLRenderDirection(IZ)I

    move-result v4

    .line 94
    iget-object v5, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v5}, Lcn/jingling/lib/camera/CameraManager;->isCurOpenFront()Z

    move-result v5

    .line 92
    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->initSTRender(IIIZ)V

    .line 95
    return-void
.end method

.method public initCameraView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0, v1, v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->createRender(ZZ)V

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    new-instance v1, Lcn/jingling/lib/camera/STPreViewFlow$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/STPreViewFlow$1;-><init>(Lcn/jingling/lib/camera/STPreViewFlow;)V

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V

    .line 44
    return-void
.end method

.method public openCamera(Landroid/app/Activity;Z)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isFront"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/camera/AbsPreViewFlow;->openCamera(Landroid/app/Activity;Z)Z

    move-result v0

    .line 68
    .local v0, "isOpenSuc":Z
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v1, v1, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    iget-object v2, p0, Lcn/jingling/lib/camera/STPreViewFlow;->mObserverRenderer:Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;

    invoke-virtual {v1, v2}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setObserver(Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;)V

    .line 71
    :cond_0
    return v0
.end method

.method public retake(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcn/jingling/lib/camera/AbsPreViewFlow;->retake(Landroid/app/Activity;)Z

    move-result v1

    .line 58
    .local v1, "openResult":Z
    :try_start_0
    invoke-direct {p0}, Lcn/jingling/lib/camera/STPreViewFlow;->cameraBindtexture()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchCamera(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcn/jingling/lib/camera/AbsPreViewFlow;->switchCamera(Landroid/app/Activity;)Z

    move-result v0

    .line 85
    .local v0, "isOpenSuc":Z
    return v0
.end method
