.class public interface abstract Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
.super Ljava/lang/Object;
.source "ModeBaseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;
    }
.end annotation


# virtual methods
.method public abstract clearUIScreen([I)V
.end method

.method public abstract displayUIScreen([I)V
.end method

.method public abstract get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
.end method

.method public abstract getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;
.end method

.method public abstract getCameraAppRootFrameLayout()Landroid/view/ViewGroup;
.end method

.method public abstract getCameraRootView()Landroid/widget/RelativeLayout;
.end method

.method public abstract getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
.end method

.method public abstract getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
.end method

.method public abstract getFlashStatusByModeBar()Ljava/lang/String;
.end method

.method public abstract getJpegRotate()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getParametersInCache()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
.end method

.method public abstract getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
.end method

.method public abstract hideLoadingTips()V
.end method

.method public abstract hideUISetting()Z
.end method

.method public abstract isFilmMode()Z
.end method

.method public abstract isFirstCamera()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract isVideoIntent()Z
.end method

.method public abstract loadCameraClickSound()V
.end method

.method public abstract modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V
.end method

.method public abstract onModeFrameBackpressed()V
.end method

.method public abstract onZoomEnd()V
.end method

.method public abstract onZoomStart()V
.end method

.method public abstract playCameraClickSound()V
.end method

.method public abstract releaseCameraClickSound()V
.end method

.method public abstract restoreShutterButton()V
.end method

.method public abstract setCameraDefaultParamerters()V
.end method

.method public abstract setFaceIndicatorVisiable(Z)V
.end method

.method public abstract setGLRootToSurfaceScreenNail()V
.end method

.method public abstract setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V
.end method

.method public abstract setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V
.end method

.method public abstract setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract showModeFlash(Z)V
.end method

.method public abstract showModeStatusBar(Z)V
.end method

.method public abstract startCameraPreview()V
.end method

.method public abstract startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V
.end method

.method public abstract stopCameraPreview()V
.end method

.method public abstract stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
.end method

.method public abstract switchToBackCamera()V
.end method

.method public abstract switchToFrontCamera()V
.end method

.method public abstract updateShutterButton(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
.end method
