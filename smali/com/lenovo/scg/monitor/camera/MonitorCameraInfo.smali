.class public Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;
.super Ljava/lang/Object;
.source "MonitorCameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;
    }
.end annotation


# static fields
.field public static final CAMERAID_CHANGED:I = 0x8001

.field public static final FLASH_MODE_CHANGED:I = 0x8004

.field public static final METERING_CHANGED:I = 0x8005

.field public static final PICTURE_SIZE_CHANGED:I = 0x8003

.field public static final PREVIEW_SIZE_CHANGED:I = 0x8002

.field public static currentPreviewSize:Ljava/lang/String;

.field public static mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "0x0"

    sput-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->currentPreviewSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static onCameraSwitched(I)V
    .locals 1
    .param p0, "cameraid"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;->onCameraSwitched(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public static onFlashModeChanged(Ljava/lang/String;)V
    .locals 1
    .param p0, "newFlashMode"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;->onFlashModeChanged(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static onMeteringModeChanged(Ljava/lang/String;)V
    .locals 1
    .param p0, "newMetering"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;->onMeteringModeChanged(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static onPictureSizeChanged(Landroid/hardware/Camera$Size;)V
    .locals 1
    .param p0, "newPictureSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 83
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;->onPictureSizeChanged(Landroid/hardware/Camera$Size;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static onPreviewSizeChanged(Landroid/hardware/Camera$Size;)V
    .locals 1
    .param p0, "currentPreviewSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 70
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;->onPreviewSizeChanged(Landroid/hardware/Camera$Size;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static setOnCameraStateChangedListener(Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;)V
    .locals 0
    .param p0, "mListener"    # Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    .prologue
    .line 57
    sput-object p0, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->mCameraStateChangedListener:Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;

    .line 58
    return-void
.end method
