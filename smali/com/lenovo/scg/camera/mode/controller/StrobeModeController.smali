.class public interface abstract Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
.super Ljava/lang/Object;
.source "StrobeModeController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;


# virtual methods
.method public abstract getCameraId()I
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract strobeHideShutterButton()V
.end method

.method public abstract strobeShowShutterButton()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method

.method public abstract updateThumbnail()V
.end method
