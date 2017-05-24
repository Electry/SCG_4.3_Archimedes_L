.class public Lcom/lenovo/scg/camera/focus/MultiPhotoFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "MultiPhotoFocusGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 10
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onSingleTapUp(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    .line 17
    .local v0, "mManager":Lcom/lenovo/scg/camera/mode/ModeManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 22
    :goto_0
    return v3

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/MultiPhotoFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onInfinityStarted()V

    goto :goto_0
.end method
