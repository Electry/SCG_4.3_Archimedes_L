.class public Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "TouchPhotoFocusGroup.java"


# static fields
.field private static final MSG_CAPTURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchPhotoFocusGroup"


# instance fields
.field mTouchFocusGropHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 20
    new-instance v0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup$1;-><init>(Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mTouchFocusGropHandler:Landroid/os/Handler;

    .line 42
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mAeAfLockListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoFocus(Z)Z
    .locals 6
    .param p1, "focused"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mState:I

    if-ne v1, v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->setState(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->updateFocusUI()V

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mTouchFocusGropHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    :goto_1
    return v0

    .line 78
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->setState(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocus(Z)Z

    move-result v0

    goto :goto_1
.end method

.method public onSingleTapUp(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    .line 52
    const-string v1, "TouchPhotoFocusGroup"

    const-string/jumbo v2, "onSingleTapUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "TouchPhotoFocusGroup"

    const-string/jumbo v2, "onSingleTapUp(): input locked && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return v4

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "TouchPhotoFocusGroup"

    const-string/jumbo v2, "super.onSingleTapUp() return true && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    .line 63
    .local v0, "mUI":Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    const-string v1, "TouchPhotoFocusGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSingleTapUp() mUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->showTouchCaptureAnim()V

    goto :goto_0
.end method

.method public updateFocusUI()V
    .locals 4

    .prologue
    .line 97
    iget v0, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "touch capture way:front camera"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "TouchPhotoFocusGroup"

    const-string/jumbo v1, "updateFocusUI: lock fail && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;->mTouchFocusGropHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 104
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    goto :goto_0
.end method
