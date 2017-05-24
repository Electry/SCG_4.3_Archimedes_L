.class public interface abstract Lcn/jingling/lib/camera/CameraManager$ICameraControl;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICameraControl"
.end annotation


# virtual methods
.method public abstract didTakePicture([BLandroid/hardware/Camera;)V
.end method

.method public abstract onFpsUpdate(I)V
.end method

.method public abstract updatePreviewAndPictureSize(Landroid/hardware/Camera;)V
.end method
