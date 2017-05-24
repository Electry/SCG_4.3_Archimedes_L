.class public Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;
.super Ljava/lang/Object;
.source "TutorialControllerImpl.java"

# interfaces
.implements Lcom/lenovo/scg/camera/tutorial/TutorialController;


# instance fields
.field private mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFunction()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(I)V

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->changeFunction()V

    .line 32
    return-void
.end method

.method public hideTutorialWindow(Z)V
    .locals 2
    .param p1, "showScreen"    # Z

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_TUTORIAL_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->hideLe3dFrame()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->displayCurrentModeViews()V

    .line 21
    :cond_0
    return-void
.end method

.method public setFocusAndFaceCanVisible(Z)V
    .locals 1
    .param p1, "vis"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->setFocusAndFaceCanVisible(Z)V

    .line 37
    return-void
.end method

.method public setLe3dFrameManager(Lcom/lenovo/scg/common/le3d/Le3dFrameManager;)V
    .locals 0
    .param p1, "le3dFrameManager"    # Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialControllerImpl;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 25
    return-void
.end method
