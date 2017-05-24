.class public Lcn/jingling/lib/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/CameraManager$ICameraControl;
    }
.end annotation


# instance fields
.field private mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

.field private mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

.field private mContext:Landroid/content/Context;

.field private mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/jingling/lib/camera/CameraViewBean;Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cameraViewBean"    # Lcn/jingling/lib/camera/CameraViewBean;
    .param p3, "cameraControl"    # Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 30
    invoke-static {}, Lcn/jingling/lib/camera/CameraManager;->supportSurfaceTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcn/jingling/lib/camera/STPreViewFlow;

    iget-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/jingling/lib/camera/STPreViewFlow;-><init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcn/jingling/lib/camera/CommonPreViewFlow;

    iget-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/jingling/lib/camera/CommonPreViewFlow;-><init>(Landroid/content/Context;Lcn/jingling/lib/camera/CameraManager;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    goto :goto_0
.end method

.method public static supportSurfaceTexture()Z
    .locals 2

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0}, Lcn/jingling/lib/camera/IPreViewFlow;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 64
    return-void
.end method

.method public freee()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    .line 114
    iput-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 115
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0}, Lcn/jingling/lib/camera/IPreViewFlow;->free()V

    .line 118
    :cond_0
    iput-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    .line 119
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0}, Lcn/jingling/lib/camera/IPreViewFlow;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getCameraControl()Lcn/jingling/lib/camera/CameraManager$ICameraControl;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    return-object v0
.end method

.method public getCameraViewBean()Lcn/jingling/lib/camera/CameraViewBean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    return-object v0
.end method

.method public isCurOpenFront()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0}, Lcn/jingling/lib/camera/IPreViewFlow;->isOpenFront()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0}, Lcn/jingling/lib/camera/IPreViewFlow;->onPause()V

    .line 44
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0, p1}, Lcn/jingling/lib/camera/IPreViewFlow;->onResume(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public openCamera(Landroid/app/Activity;Z)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isFront"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0, p1, p2}, Lcn/jingling/lib/camera/IPreViewFlow;->openCamera(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method public retake(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0, p1}, Lcn/jingling/lib/camera/IPreViewFlow;->retake(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public setCameraControl(Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V
    .locals 0
    .param p1, "control"    # Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 92
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setFilter(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public switchCamera(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    invoke-interface {v0, p1}, Lcn/jingling/lib/camera/IPreViewFlow;->switchCamera(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public takePictureImmediately()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/jingling/lib/camera/CameraManager;->mIPreViewFlow:Lcn/jingling/lib/camera/IPreViewFlow;

    iget-object v1, p0, Lcn/jingling/lib/camera/CameraManager;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    invoke-interface {v0, v1}, Lcn/jingling/lib/camera/IPreViewFlow;->takePictureImmediately(Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V

    .line 72
    return-void
.end method
