.class public Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;,
        Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mContext:Landroid/content/Context;

.field private mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsRealTakePicture:Z

.field mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

.field private mMirror:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

.field private mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;Landroid/content/Context;)V
    .locals 3
    .param p1, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .param p2, "defaultFocusModes"    # [Ljava/lang/String;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;
    .param p5, "mirror"    # Z
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "ui"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    .param p8, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    .line 150
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 152
    iput-object p4, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .line 153
    iput-object p7, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    .line 154
    iput-object p8, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p3, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 157
    iput-boolean p5, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mMirror:Z

    .line 165
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->initFocusGroupManager()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)Lcom/lenovo/scg/camera/focus/FocusGroupManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    return-object v0
.end method

.method private initFocusGroupManager()V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setContext(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setComboSharedPreferences(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    new-instance v1, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;-><init>(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 176
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mMirror:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setMirror(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public clearFocusGroup()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->clearFocusGroup()V

    .line 503
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->doSnap()V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnap getFocusGroup is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "doSnap getFocusGroup is NULL, will not call capture---------------!!!"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    const-string v0, "CAM_FocusManager"

    const-string v1, "getFocusMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getFocusState()I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsCFResultUsable()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getIsCFResultUsable()Z

    move-result v0

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handOverParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 185
    return-void
.end method

.method public isAutoExposureLock()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock()Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusCompleted()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isFocusCompleted()Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isFocusingSnapOnFinish()Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMeteringLogicEnable()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->loadMeteringLogicEnable()V

    .line 267
    return-void
.end method

.method public onAutoFocus(ZZ)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "shutterButtonPressed"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocus(Z)Z

    .line 224
    :cond_0
    return-void
.end method

.method public onAutoFocusMoving(Z)V
    .locals 1
    .param p1, "moving"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocusMoving(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onCameraStopped()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onCameraClosed()V

    .line 275
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    const-string v0, "CAM_FocusManager"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 446
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setPinchEnable(Z)V

    .line 447
    return-void
.end method

.method public onFullScreenChange()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onFullScreenChange()V

    .line 464
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onPause()V

    .line 468
    return-void
.end method

.method public onPictrueTakenDone()V
    .locals 2

    .prologue
    .line 436
    const-string v0, "CAM_FocusManager"

    const-string/jumbo v1, "onPictrueTakenDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onPictrueTakenDone()Z

    .line 438
    return-void
.end method

.method public onPreviewHide()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setAeAfLockEnable(Z)V

    .line 499
    :cond_0
    return-void
.end method

.method public onPreviewShow()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setAeAfLockEnable(Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onPreviewStopped()V

    .line 271
    return-void
.end method

.method public onShutterDown()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->onSingleTapUp(II)Z

    .line 263
    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public removeMessages()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->removeMessages()V

    .line 321
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->resetTouchFocus()V

    .line 294
    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mAeAwbLock:Z

    .line 329
    return-void
.end method

.method public setCFResultEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setCFResultEnable(Z)V

    .line 460
    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "displayOrientation"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setDisplayOrientation(I)V

    .line 197
    return-void
.end method

.method public setFocusAndFaceCanVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 392
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusAndFaceCanVisible: vis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusAndFaceCanVisible(Z)V

    .line 399
    :cond_0
    if-eqz p1, :cond_1

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 406
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    goto :goto_0
.end method

.method public setFocusAndFaceCanVisibleForWheel(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 412
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusAndFaceCanVisible: vis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusAndFaceCanVisible(Z)V

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setMirror(Z)V

    .line 193
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->setPreviewSize(II)V

    .line 189
    return-void
.end method

.method public unLickAeAf()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->unlockAeAf()V

    .line 339
    :cond_0
    return-void
.end method

.method public updateFocusGroup()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "CAM_FocusManager"

    const-string/jumbo v1, "updateFocusGroup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$1;-><init>(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    :cond_0
    return-void
.end method

.method public updateFocusGroupWithoutSetPara()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "CAM_FocusManager"

    const-string/jumbo v1, "updateFocusGroupWithoutSetPara()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$2;-><init>(Lcom/lenovo/scg/camera/focus/FocusOverlayManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    :cond_0
    return-void
.end method
