.class public Lcom/lenovo/scg/camera/mode/NormalMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "NormalMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    return-void
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 144
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 126
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 32
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v4, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 33
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v3

    .line 35
    .local v3, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v2, Lcom/lenovo/scg/camera/PhotoController;

    .line 36
    .local v2, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v2}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 38
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 43
    .local v1, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 45
    .local v0, "pNew":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mIsSupportZSD:Z

    .line 47
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 48
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 50
    const-string v4, "NormalMode enter"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected exit()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 60
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 63
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit()V

    .line 70
    const-string v2, "NormalMode exit"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSavePicNeedTrim11()Z
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    .line 184
    .local v0, "isSettingTrim11":Z
    const-string v1, "NormalMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePicNeedTrim11\uff0c value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    .line 79
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mIsSupportZSD:Z

    .line 81
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public isSupportZSD()Z
    .locals 3

    .prologue
    .line 161
    const-string v0, "DEVELOP OPTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mIsSupportZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mIsSupportZSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", platform ZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mIsSupportZSD:Z

    .line 163
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mIsSupportZSD:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onBeforeTakePicture()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    .line 194
    .local v0, "isSettingTrim11":Z
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "NormalMode onPause"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NormalMode;->exit()V

    .line 96
    return-void
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "NormalMode onResume"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/NormalMode;->enter(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "NormalMode pause"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "NormalMode resume"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NormalMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/NormalMode;->enter(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 132
    return-void
.end method
