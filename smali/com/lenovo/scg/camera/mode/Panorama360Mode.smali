.class public Lcom/lenovo/scg/camera/mode/Panorama360Mode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "Panorama360Mode.java"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 78
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 21
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    .line 22
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 23
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;->clearUIScreen([I)V

    .line 24
    return-void

    .line 22
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
    .line 29
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 32
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 34
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->exit()V

    .line 90
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
    .line 52
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 58
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;->clearUIScreen([I)V

    .line 59
    return-void

    .line 57
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
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 70
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 71
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/Panorama360Mode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;->clearUIScreen([I)V

    .line 72
    return-void

    .line 70
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
    .line 84
    return-void
.end method
