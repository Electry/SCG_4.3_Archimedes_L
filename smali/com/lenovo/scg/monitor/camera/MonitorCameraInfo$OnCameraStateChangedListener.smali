.class public interface abstract Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;
.super Ljava/lang/Object;
.source "MonitorCameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraStateChangedListener"
.end annotation


# virtual methods
.method public abstract onCameraSwitched(I)V
.end method

.method public abstract onFlashModeChanged(Ljava/lang/String;)V
.end method

.method public abstract onMeteringModeChanged(Ljava/lang/String;)V
.end method

.method public abstract onPictureSizeChanged(Landroid/hardware/Camera$Size;)V
.end method

.method public abstract onPreviewSizeChanged(Landroid/hardware/Camera$Size;)V
.end method
