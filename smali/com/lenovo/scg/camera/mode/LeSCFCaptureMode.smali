.class public abstract Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "LeSCFCaptureMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->mIsSupportZSD:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    goto :goto_0
.end method

.method public final onError(ILandroid/hardware/Camera;)Z
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->OnNotifyCallback(I)Z

    move-result v0

    return v0
.end method

.method public final onPictureTaken([BLandroid/location/Location;)Z
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;

    move-result-object v0

    .line 17
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    if-nez v0, :cond_0

    .line 18
    const/4 v1, 0x0

    .line 20
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->OnPictureCallback([B)Z

    move-result v1

    goto :goto_0
.end method
