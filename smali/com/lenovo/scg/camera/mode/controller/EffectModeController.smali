.class public interface abstract Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
.super Ljava/lang/Object;
.source "EffectModeController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;


# virtual methods
.method public abstract getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
.end method

.method public abstract lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
.end method

.method public abstract queueEventToGLRootView(Ljava/lang/Runnable;)V
.end method

.method public abstract removeCameraOverlayGLView()V
.end method

.method public abstract setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
.end method

.method public abstract unlockScreenRotation()V
.end method
