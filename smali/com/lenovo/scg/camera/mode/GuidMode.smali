.class public Lcom/lenovo/scg/camera/mode/GuidMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "GuidMode.java"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 76
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 20
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    .line 21
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 22
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/GuidModeController;->clearUIScreen([I)V

    .line 23
    return-void

    .line 21
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
    .line 28
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 31
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 32
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/GuidMode;->exit()V

    .line 88
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
    .line 50
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 56
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/GuidModeController;->clearUIScreen([I)V

    .line 57
    return-void

    .line 55
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
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 68
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 69
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/GuidMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/GuidModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/GuidModeController;->clearUIScreen([I)V

    .line 70
    return-void

    .line 68
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
    .line 82
    return-void
.end method
