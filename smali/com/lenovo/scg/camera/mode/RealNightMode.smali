.class public Lcom/lenovo/scg/camera/mode/RealNightMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "RealNightMode.java"


# static fields
.field private static final REALNIGHT_FLASH_MODE:Ljava/lang/String; = "on"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

.field private mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

.field private mNightPreviewParmaHandler:Landroid/os/Handler;

.field private mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 18
    const-string v0, "RealNightMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    .line 22
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 24
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 150
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 82
    const-string v0, "RealNightMode"

    const-string v1, "enter()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    if-nez v0, :cond_1

    .line 85
    const-string v0, "RealNightMode"

    const-string v1, "enter, mController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mFlashStatusSave:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "set flash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 117
    const-string v0, "RealNightMode"

    const-string v1, "exit()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "RealNightMode"

    const-string v1, "mModeController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "restore flash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    goto :goto_0
.end method

.method public initNightPreviewEng()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 166
    .local v1, "s":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 167
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 168
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RealNightMode;->exit()V

    .line 159
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeforeTakePicture()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onBeforeTakePicture()V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "RealNightMode"

    const-string v1, "kbg374, onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public releaseNightPreviewEng()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RealNightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "RealNightMode"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 154
    return-void
.end method
