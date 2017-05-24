.class public interface abstract Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;
.super Ljava/lang/Object;
.source "PanoramaModeController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;


# virtual methods
.method public abstract getCameraId()I
.end method

.method public abstract getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
.end method

.method public abstract getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
.end method

.method public abstract isFilmMode()Z
.end method

.method public abstract isFirstCamera()Z
.end method

.method public abstract removeCameraOverlayGLView()V
.end method

.method public abstract restoreShutterButton()V
.end method

.method public abstract setAutoExposureLock(Z)V
.end method

.method public abstract setAutoWhiteBalanceLock(Z)V
.end method

.method public abstract setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
.end method

.method public abstract setFaceIndicatorVisiable(Z)V
.end method

.method public abstract setScaleSupported(Z)V
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract updateShutterButton(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
.end method

.method public abstract updateThumbnail()V
.end method
