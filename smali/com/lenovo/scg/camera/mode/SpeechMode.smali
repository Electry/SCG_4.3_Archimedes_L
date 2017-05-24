.class public Lcom/lenovo/scg/camera/mode/SpeechMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "SpeechMode.java"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    .line 16
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 80
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 23
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    .line 24
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 25
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;->clearUIScreen([I)V

    .line 27
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 35
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 36
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/SpeechMode;->exit()V

    .line 92
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 54
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;->clearUIScreen([I)V

    .line 55
    return-void

    .line 53
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 66
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 67
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SpeechMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;->clearUIScreen([I)V

    .line 68
    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 86
    return-void
.end method
