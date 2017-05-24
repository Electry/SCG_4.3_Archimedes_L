.class Lcom/lenovo/scg/camera/focus/FocusGroup$3;
.super Ljava/lang/Object;
.source "FocusGroup.java"

# interfaces
.implements Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/FocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/FocusGroup;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 362
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v0, v1, :cond_1

    .line 363
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionDown() : ! AEAF_DIFFER_LOCKED && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->isInAE(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 370
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionDown() : isInside AE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->isInAF(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 377
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionDown() : isInside AF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActionMove(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 384
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 386
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionMove() : activ --- isInside AE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition2(II)V

    .line 389
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionMove() : activ --- isInside AF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActionUp(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 396
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_1

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 400
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionUp() : activ --- isInside AE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeMeteringAreas(II)V

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 403
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_0

    .line 406
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onActionUp() : activ --- isInside AE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeFocusAreas(II)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v0, v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->autoFocus()V

    .line 410
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    goto :goto_0
.end method

.method public onAeAfDifferLock(IIII)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 264
    const-string v4, "FocusGroupBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAeAfDefferLock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-boolean v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAeAfLockEnable:Z

    if-nez v4, :cond_1

    .line 268
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock() !isAeAfLockEnable && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v4, v7, :cond_2

    .line 272
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock() CameraUtil.CameraId == CameraUtil.FRONT_CAMERA && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    sget-boolean v4, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v4, :cond_3

    .line 277
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfLock() isFocusLocked && unlockFocus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iput-object v10, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 279
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iput-object v10, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 280
    sput-boolean v8, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 284
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "def":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_ae_af_key"

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "value":Ljava/lang/String;
    const-string v4, "FocusGroupBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAeAfDefferLock(): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock(): settings off && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v4, :cond_5

    .line 294
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock() mParameters == null && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v4

    if-nez v4, :cond_6

    .line 299
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock() !isAutoExposureLockSupported() && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 304
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 305
    const-string v4, "FocusGroupBase"

    const-string/jumbo v5, "onAeAfDefferLock() AT continous focusing && cancelAutoFocus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 307
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 312
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-eq v4, v7, :cond_0

    .line 317
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    const-string v5, "auto"

    iput-object v5, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 318
    sput-boolean v8, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 319
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 320
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    .line 321
    .local v2, "mUI":Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    invoke-interface {v2, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 322
    invoke-interface {v2, p3, p4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition2(II)V

    .line 323
    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->showAeAfDifferLockAnim()V

    .line 326
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v4, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeMeteringAreas(II)V

    .line 327
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v4, p3, p4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeFocusAreas(II)V

    .line 328
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 329
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->autoFocus()V

    .line 331
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToZoomBar(I)V

    .line 338
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToZoomBar(I)V

    .line 341
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI(II)V

    .line 342
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI(II)V

    .line 345
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 348
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setPinchEnable(Z)V

    .line 351
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v4, v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v4, :cond_0

    .line 353
    check-cast v0, Lcom/lenovo/scg/camera/ActivityBase;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/ActivityBase;->setSwipingEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onAeAfLock(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 198
    const-string v1, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAeAfLock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAeAfLockEnable:Z

    if-nez v1, :cond_1

    .line 202
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() !isAeAfLockEnable && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v1, v5, :cond_2

    .line 206
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() CameraUtil.CameraId == CameraUtil.FRONT_CAMERA && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_3

    .line 212
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() mParameters == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 217
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() !isAutoExposureLockSupported() && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 223
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() AT continous focusing && cancelAutoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-eq v1, v5, :cond_0

    .line 234
    sget-boolean v1, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    if-eqz v1, :cond_6

    .line 235
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAeAfLock() isFocusLocked && unlockFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iput-object v7, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iput-object v7, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 238
    sput-boolean v6, Lcom/lenovo/scg/camera/focus/ProFocusGroup;->isFocusLocked:Z

    .line 242
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    const-string v2, "auto"

    iput-object v2, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 243
    sput-boolean v5, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 244
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    .line 246
    .local v0, "mUI":Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 247
    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->showAeAfLockAnim()V

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeFocusAreas(II)V

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeMeteringAreas(II)V

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->autoFocus()V

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
