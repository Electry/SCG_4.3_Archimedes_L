.class public Lcom/lenovo/scg/camera/mode/VivMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "VivMode.java"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 77
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 19
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    .line 20
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 21
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/VivModeController;->clearUIScreen([I)V

    .line 24
    return-void

    .line 20
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

    .line 33
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VivMode;->exit()V

    .line 89
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
    .line 51
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 56
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 57
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/VivModeController;->clearUIScreen([I)V

    .line 58
    return-void

    .line 56
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
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 69
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 70
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VivMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VivModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/VivModeController;->clearUIScreen([I)V

    .line 71
    return-void

    .line 69
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
    .line 83
    return-void
.end method
