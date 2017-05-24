.class public Lcom/lenovo/scg/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraErrorCallback"


# instance fields
.field private mCameraModule:Lcom/lenovo/scg/camera/CameraModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraModule;)V
    .locals 0
    .param p1, "cameraModule"    # Lcom/lenovo/scg/camera/CameraModule;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraErrorCallback;->mCameraModule:Lcom/lenovo/scg/camera/CameraModule;

    .line 33
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 37
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 44
    const-string v0, "error == android.hardware.Camera.CAMERA_ERROR_SERVER_DIED -----------------------------------error == android.hardware.Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraErrorCallback;->mCameraModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraModule;->resetFatalError()V

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraErrorCallback;->mCameraModule:Lcom/lenovo/scg/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/CameraModule;->onLescfError(I)V

    .line 52
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ModeManager;->onError(ILandroid/hardware/Camera;)Z

    goto :goto_0
.end method
