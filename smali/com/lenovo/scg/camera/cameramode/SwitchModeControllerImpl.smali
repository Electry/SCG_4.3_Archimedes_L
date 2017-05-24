.class public Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;
.super Ljava/lang/Object;
.source "SwitchModeControllerImpl.java"

# interfaces
.implements Lcom/lenovo/scg/camera/cameramode/SwitchModeController;


# instance fields
.field private mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeWindowMode(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(I)V

    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->changeFunction()V

    .line 26
    return-void
.end method

.method public setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 34
    return-void
.end method

.method public showShowModeWindow(I)V
    .locals 2
    .param p1, "windowMode"    # I

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideSwitchModeWindow(I)V

    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/SwitchModeControllerImpl;->mManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->showCameraModeWindow(IZ)V

    .line 18
    :cond_0
    return-void
.end method
