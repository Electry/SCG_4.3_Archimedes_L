.class public interface abstract Lcom/lenovo/scg/camera/setting/CameraSettingController;
.super Ljava/lang/Object;
.source "CameraSettingController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
.implements Lcom/lenovo/scg/camera/PhotoController;


# virtual methods
.method public abstract addView2CameraCotrolLayout(Landroid/view/View;)V
.end method

.method public abstract applyPreferencesToParameters()V
.end method

.method public varargs abstract changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;
.end method

.method public abstract checkStorage()V
.end method

.method public abstract clearAllPopupWindow()V
.end method

.method public abstract clearScreenExcept([I)V
.end method

.method public abstract clearScreenExceptWithoutAnim([I)V
.end method

.method public abstract dismisPopupWindow()V
.end method

.method public abstract displayScreenExcept([I)V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;
.end method

.method public abstract getCameraAppRootFrameLayout()Landroid/view/ViewGroup;
.end method

.method public abstract getCameraConfig()Lcom/lenovo/scg/camera/CameraConfig;
.end method

.method public abstract getCameraControlLayout()Landroid/widget/RelativeLayout;
.end method

.method public abstract getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
.end method

.method public abstract getCameraDisplayOrientation()I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraProSettingListPreferenceHelper()Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;
.end method

.method public abstract getCameraRotationForVideoMode()I
.end method

.method public abstract getCurrentFunction()I
.end method

.method public abstract getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
.end method

.method public abstract getCurrentZoomValue()I
.end method

.method public abstract getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
.end method

.method public abstract getIsImageCaptureIntent()Z
.end method

.method public abstract getOrientationCompensation()I
.end method

.method public abstract getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
.end method

.method public abstract getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;
.end method

.method public abstract getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end method

.method public abstract getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
.end method

.method public abstract getmContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;
.end method

.method public abstract getmPreviewFrameLayout()Lcom/lenovo/scg/camera/PreviewFrameLayout;
.end method

.method public abstract getmRecordingTimeView()Landroid/widget/TextView;
.end method

.method public abstract getmReviewDoneButton()Landroid/view/View;
.end method

.method public abstract getmReviewImage()Landroid/widget/ImageView;
.end method

.method public abstract getmReviewPlayButton()Landroid/widget/ImageView;
.end method

.method public abstract getmReviewRetakeButton()Landroid/view/View;
.end method

.method public abstract getmStorageSpace()J
.end method

.method public abstract getmSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract inflate(I)Landroid/view/View;
.end method

.method public abstract isBackCamera()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract isInProFuncton()Z
.end method

.method public abstract isQuickCapture()Z
.end method

.method public abstract isVideoIntent()Z
.end method

.method public abstract isVideoPaused()Z
.end method

.method public abstract ismPaused()Z
.end method

.method public abstract notifyScreenNailChanged()V
.end method

.method public abstract onAutoSettingShow(Z)V
.end method

.method public abstract onCameraAboutClicked()V
.end method

.method public abstract onCameraFling()V
.end method

.method public abstract onCameraSettingEffectClicked()V
.end method

.method public abstract onCameraSwitchButtonClicked(I)V
.end method

.method public abstract onDeveloperPreferenceClicked()V
.end method

.method public abstract onProSettingShow(Z)V
.end method

.method public abstract onRestCameraPreferenceClicked()V
.end method

.method public abstract openGPSDialog(Landroid/app/Activity;)V
.end method

.method public abstract putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeSquareMaskView()V
.end method

.method public abstract removeViewFromCameraControlLayout(Landroid/view/View;)V
.end method

.method public abstract restorePicturePreviewSize(Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;)V
.end method

.method public abstract setIsVideoPaused(Z)V
.end method

.method public abstract setResultEx(ILandroid/content/Intent;)V
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract setmRecordingTimeView(Landroid/widget/TextView;)V
.end method

.method public abstract showAllScreen()V
.end method

.method public abstract showRightButton(Z)V
.end method

.method public abstract showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
.end method

.method public abstract updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateThumbnail()V
.end method
