.class public Lcom/lenovo/scg/camera/focus/ProFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "ProFocusGroup.java"


# static fields
.field private static final MSG_UNLOCK_FOCUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProFocusGroup"

.field public static isFocusLocked:Z

.field private static showMovingIndicator:Z


# instance fields
.field mProFocusModeHandler:Landroid/os/Handler;

.field private mUi:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->showMovingIndicator:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mUi:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    .line 35
    new-instance v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup$1;-><init>(Lcom/lenovo/scg/camera/focus/ProFocusGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mProFocusModeHandler:Landroid/os/Handler;

    .line 52
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mAeAfLockListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/focus/ProFocusGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/ProFocusGroup;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->unlockFocus()V

    return-void
.end method

.method private getUI()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mUi:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mUi:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mUi:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    return-object v0
.end method

.method private unlockFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    const-string v0, "ProFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockFocus() isFocusLocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mFocusArea:Ljava/util/List;

    .line 239
    sput-boolean v3, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 240
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->pauseFaceDetection()V

    .line 244
    sput-boolean v3, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->showMovingIndicator:Z

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->startFaceDetection()V

    .line 247
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setState(I)V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "ProFocusGroup"

    const-string v1, "destory() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->showMovingIndicator:Z

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mProFocusModeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->unlockFocus()V

    .line 261
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->destory()V

    .line 262
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Lock:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V

    .line 117
    :goto_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V

    goto :goto_0
.end method

.method public onAutoFocus(Z)Z
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 163
    const-string v1, "ProFocusGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAutoFocus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v1, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    if-ne v1, v0, :cond_1

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setState(I)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->updateFocusUI()V

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    :goto_1
    return v0

    .line 169
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setState(I)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocus(Z)Z

    move-result v0

    goto :goto_1
.end method

.method public onFullScreenChange()V
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->unlockFocus()V

    .line 226
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onFullScreenChange()V

    .line 227
    return-void
.end method

.method public onPictrueTakenDone()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    sput-boolean v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isCaptureing:Z

    .line 186
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->startPosChangeDet()Z

    .line 190
    :cond_0
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isNeedSetParametersAfterCapture:Z

    if-eqz v0, :cond_1

    .line 191
    sput-boolean v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isNeedSetParametersAfterCapture:Z

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->cancelAutoFocus()Z

    .line 199
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected onPosChanged()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 214
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;->PM_Continuous:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V

    .line 215
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPosChanged()V

    .line 216
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 58
    sget-boolean v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isAutoExposureLock:Z

    if-eqz v1, :cond_0

    .line 59
    const-string v0, "ProFocusGroup"

    const-string/jumbo v1, "onSingleTapUp() : isAutoExposureLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->showMovingIndicator:Z

    .line 62
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 64
    :cond_0
    sget-boolean v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->getUI()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->isInside(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->unlockFocus()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v1, v2, :cond_3

    .line 73
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    move-result v0

    goto :goto_0

    .line 76
    :cond_3
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 78
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    move-result v0

    goto :goto_0
.end method

.method public resetTouchFocus()V
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->resetTouchFocus()V

    .line 208
    :cond_0
    return-void
.end method

.method public updateFocusUI()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 132
    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    if-nez v0, :cond_1

    .line 133
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 136
    :cond_2
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    goto :goto_0

    .line 138
    :cond_3
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    const-string v0, "ProFocusGroup"

    const-string/jumbo v1, "updateFocusUI(): onFocusSucceeded()1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    if-ne v0, v3, :cond_4

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusFailed(Z)V

    goto :goto_0

    .line 146
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    if-ne v0, v3, :cond_6

    .line 147
    const-string v0, "ProFocusGroup"

    const-string/jumbo v1, "updateFocusUI(): onFocusSucceeded()2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_0

    .line 149
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 150
    const-string v0, "ProFocusGroup"

    const-string/jumbo v1, "updateFocusUI(): onFocusFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusFailed(Z)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->mProFocusModeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
