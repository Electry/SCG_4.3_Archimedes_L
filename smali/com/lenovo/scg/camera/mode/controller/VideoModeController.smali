.class public interface abstract Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
.super Ljava/lang/Object;
.source "VideoModeController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/CameraSettingController;


# virtual methods
.method public abstract cleanVideoScreen()V
.end method

.method public abstract playVideoStartingSound()V
.end method

.method public abstract playVideoStoppingSound()V
.end method

.method public abstract resumeVideoRecord()V
.end method

.method public abstract setThumbnailBtnClickable(Z)V
.end method

.method public abstract setThumbnailBtnVisible(Z)V
.end method

.method public abstract showVideoRecordResult()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method
