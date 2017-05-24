.class public Lcom/lenovo/scg/camera/mode/DynamicNightMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "DynamicNightMode.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 19
    const-string v0, "DynamicNightMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 100
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 27
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    .line 29
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v2

    .line 31
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoController;

    .line 32
    .local v1, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 34
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 39
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 41
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mIsSupportZSD:Z

    .line 43
    const-string v3, "DynamicNightMode enter"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected exit()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 50
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 52
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/DynamicNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 55
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 57
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit()V

    .line 62
    const-string v2, "DynamicNightMode exit"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "DynamicNightMode"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "DynamicNightMode"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "DynamicNightMode"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "DynamicNightMode"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 106
    return-void
.end method
