.class public abstract Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;
.super Ljava/lang/Object;
.source "LeSCFBaseStub.java"


# instance fields
.field private mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 18
    return-void
.end method


# virtual methods
.method protected getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 22
    return-void
.end method

.method protected setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "LeSCFBaseStub"

    const-string/jumbo v1, "setParameters LeSCFBaseStub"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;->mCameraProxy:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 40
    :cond_0
    return-void
.end method
