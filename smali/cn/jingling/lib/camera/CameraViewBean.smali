.class public Lcn/jingling/lib/camera/CameraViewBean;
.super Ljava/lang/Object;
.source "CameraViewBean.java"


# instance fields
.field public cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

.field public cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;


# direct methods
.method public constructor <init>(Lcn/jingling/lib/livefilter/CameraPreview;Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;)V
    .locals 0
    .param p1, "cameraPreview"    # Lcn/jingling/lib/livefilter/CameraPreview;
    .param p2, "cameraGLSurfaceView"    # Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    .line 24
    iput-object p2, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    .line 25
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 59
    .local v0, "visible":Z
    iget-object v1, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewPause()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/CameraPreview;->setVisibility(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onPause()V

    .line 77
    :cond_1
    return-void
.end method

.method public onViewResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraPreview;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraPreview:Lcn/jingling/lib/livefilter/CameraPreview;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/CameraPreview;->setVisibility(I)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setVisibility(I)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onResume()V

    .line 39
    :cond_2
    return-void
.end method
