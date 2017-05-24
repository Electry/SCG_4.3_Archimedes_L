.class public Lcom/lenovo/scg/common/le3d/Le3dFrameManager;
.super Ljava/lang/Object;
.source "Le3dFrameManager.java"


# instance fields
.field private mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

.field private mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

.field private mOrientation:I

.field private mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

.field private mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;Lcom/lenovo/scg/camera/cameramode/CameraModeController;)V
    .locals 0
    .param p1, "photoUI"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p2, "controller"    # Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    .line 43
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    .line 44
    return-void
.end method


# virtual methods
.method public changeFunction()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->changeFunction()V

    .line 170
    :cond_0
    return-void
.end method

.method public destroyWindow()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->destroyWindow()V

    .line 137
    return-void
.end method

.method public destroyWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 123
    if-nez p1, :cond_0

    .line 124
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    goto :goto_0
.end method

.method public destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 132
    return-void
.end method

.method public displayCurrentModeViews()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->displayCurrentModeViews()V

    .line 240
    return-void
.end method

.method public displayUIScreen()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->displayUIScreen([I)V

    .line 152
    return-void
.end method

.method public enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->enterModeClick(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 176
    :cond_0
    return-void
.end method

.method public finishGaussExt()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 157
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Lcom/lenovo/scg/camera/CameraActivity;
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getLe3dFrameRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onOrientationChanged(I)V

    .line 55
    .end local v0    # "activity":Lcom/lenovo/scg/camera/CameraActivity;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    goto :goto_0
.end method

.method public hideCameraModeWindow(I)V
    .locals 2
    .param p1, "windowMode"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    goto :goto_0
.end method

.method public hideGaussBlur2DBitmap()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->hideGaussBlur2DBitmap()V

    .line 247
    :cond_0
    return-void
.end method

.method public hideLe3dFrame()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "jiaxiaowei"

    const-string v1, "Le3dFrameManager------hideLe3dFrame----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->hideLe3dGLSurfaceView()V

    .line 148
    return-void
.end method

.method public hideSwitchModeWindow(I)V
    .locals 2
    .param p1, "windowMode"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    goto :goto_0
.end method

.method public isLe3dFrameVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->isLe3dFrameVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onBackPressed()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->onBackPressed()V

    .line 198
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->destroyWindow()V

    .line 164
    :cond_0
    return-void
.end method

.method public onKeyCodeVolumeClick()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onKeyCodeVolumeClick()V

    .line 255
    :cond_0
    return-void
.end method

.method public onModeFrameBackPressed()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->onModeFrameBackpressed()V

    .line 204
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onOrientationChanged(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public restoreBackground()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->restoreGLBackgroundColor()V

    .line 226
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->setGLBackgroundColor(I)V

    .line 219
    return-void
.end method

.method public setFocusAndFaceCanVisible(Z)V
    .locals 1
    .param p1, "vis"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->setFocusAndFaceCanVisible(Z)V

    .line 261
    return-void
.end method

.method public showCameraModeWindow(IZ)V
    .locals 4
    .param p1, "windowMode"    # I
    .param p2, "isAnim"    # Z

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 93
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;-><init>()V

    .local v0, "controller":Lcom/lenovo/scg/common/le3d/Le3dController;
    move-object v1, v0

    .line 94
    check-cast v1, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerImpl;->setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;IZ)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onOrientationChanged(I)V

    .line 101
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;IZ)V

    goto :goto_0
.end method

.method public showCameraViews()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->onModeFrameBackpressed()V

    .line 232
    :cond_0
    return-void
.end method

.method public showSwitchModeWindow(I)V
    .locals 3
    .param p1, "windowMode"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 60
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;-><init>()V

    .line 61
    .local v0, "controller":Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V

    .line 62
    if-nez p1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->onOrientationChanged(I)V

    .line 68
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrame;->createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V

    goto :goto_0
.end method

.method public showTutorialWindow()V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getLe3dFrame()Lcom/lenovo/scg/common/le3d/Le3dFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mLe3dFrame:Lcom/lenovo/scg/common/le3d/Le3dFrame;

    .line 72
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;-><init>()V

    .line 73
    .local v0, "controller":Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V

    .line 75
    new-instance v1, Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/tutorial/Tutorial;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->mTutorial:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->setTutorialController(Lcom/lenovo/scg/camera/tutorial/TutorialController;)V

    .line 77
    return-void
.end method
