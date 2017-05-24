.class public Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
.super Ljava/lang/Object;
.source "EffectModeUI.java"


# instance fields
.field private mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numOfType"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .line 17
    return-void
.end method


# virtual methods
.method public destoryEffectWindow()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->destoryWindow()V

    .line 45
    return-void
.end method

.method public getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    return-object v0
.end method

.method public getEffectShowOrHide()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getEffectShowOrHideState()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getEffectWindow()Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    return-object v0
.end method

.method public getEffectWindowMoveX()F
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public hideEffectWindow()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setVisibility(I)V

    .line 29
    return-void
.end method

.method public setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 84
    return-void
.end method

.method public setEffecListtHide()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public setEffectHideOrShowState(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 1
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 25
    return-void
.end method

.method public setEffectShowOrHide(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public setEffectWindowMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    .line 59
    return-void
.end method

.method public setEffectWindowPreOrienation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setPreOrientaion(I)V

    .line 63
    return-void
.end method

.method public showEffectWindow()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V
    .locals 7
    .param p1, "effectHandler"    # Landroid/os/Handler;
    .param p2, "jpegData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "IsOneShot"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->mEffectWindow:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V

    .line 67
    return-void
.end method
