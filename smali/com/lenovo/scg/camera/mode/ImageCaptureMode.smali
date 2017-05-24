.class public Lcom/lenovo/scg/camera/mode/ImageCaptureMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "ImageCaptureMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# instance fields
.field mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    return-void
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 72
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 116
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 28
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    .line 29
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    move-result-object v2

    .line 30
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 31
    .local v1, "para":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 32
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 35
    :cond_0
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 38
    .local v0, "pNew":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mIsSupportZSD:Z

    .line 42
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 43
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 45
    return-void
.end method

.method protected exit()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 56
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    .line 57
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    move-result-object v2

    .line 58
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 59
    .local v1, "para":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 60
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 62
    :cond_0
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 64
    .local v0, "pNew":Landroid/hardware/Camera$Parameters;
    return-void
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;->get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 122
    return-void
.end method
