.class public Lcom/lenovo/scg/camera/focus/FocusGroupManager;
.super Ljava/lang/Object;
.source "FocusGroupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusGroupManager"

.field private static mManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

.field private mFocusGroupSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

.field private mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

.field private mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

.field private mMirror:Z

.field private mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroupSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    return-object v0
.end method

.method private isGroupPreviewModeChanged()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isPreviewModeChanged()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->autoFocus()Z

    .line 291
    :cond_0
    return-void
.end method

.method public clearFocusGroup()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 79
    return-void
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFocusGroup()Lcom/lenovo/scg/camera/focus/FocusGroup;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    const-string v0, "FocusGroupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusMode(): mFocusGroup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "continuous-picture"

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroup()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    return-object v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public handOverParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 311
    :cond_0
    return-void
.end method

.method public isFocusLocked()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isProFocusGroup()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    instance-of v0, v0, Lcom/lenovo/scg/camera/focus/ProFocusGroup;

    goto :goto_0
.end method

.method public isTouchFocusing()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isTouchFocusing()Z

    move-result v0

    goto :goto_0
.end method

.method public isTouchPhotoFocusGroup()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    instance-of v0, v0, Lcom/lenovo/scg/camera/focus/TouchPhotoFocusGroup;

    goto :goto_0
.end method

.method public isVideoSmartFocusGroup()Z
    .locals 3

    .prologue
    .line 255
    const-string v0, "FocusGroupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoSmartFocusGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    instance-of v0, v0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    goto :goto_0
.end method

.method public loadMeteringLogicEnable()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->loadMeteringLogicEnable()V

    .line 304
    :cond_0
    return-void
.end method

.method public onCameraClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    const-string v0, "FocusGroupManager"

    const-string/jumbo v1, "onCameraClosed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPreviewStopped()V

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->removeMessages()V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->destory()V

    .line 357
    :cond_0
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    .line 358
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 359
    return-void
.end method

.method public onFullScreenChange()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onFullScreenChange()V

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->unlockAeAf()V

    .line 372
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPause()V

    .line 365
    :cond_0
    return-void
.end method

.method public onPictrueTakenDone()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPictrueTakenDone()Z

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewStopped()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->overrideFocusMode(Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method public setComboSharedPreferences(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V
    .locals 1
    .param p1, "comboSharedPreferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroupSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->setComboSharedPreferences(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V

    .line 241
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "displayOrientation"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mDisplayOrientation:I

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setDisplayOrientation(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V
    .locals 2
    .param p1, "para"    # Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V

    .line 214
    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 2
    .param p1, "mirror"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mMirror:Z

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mMirror:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMirror(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewWidth:I

    .line 315
    iput p2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewHeight:I

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setPreviewSize(II)V

    .line 319
    :cond_0
    return-void
.end method

.method public unLickAeAf()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->unlockAeAf()V

    .line 378
    :cond_0
    return-void
.end method

.method public updateFocusGroup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroupSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getGroup()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    move-result-object v0

    .line 93
    .local v0, "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->isGroupPreviewModeChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "FocusGroupManager"

    const-string/jumbo v2, "updateFocusGroup(): no group need update && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    if-ne v0, v1, :cond_1

    .line 100
    const-string v1, "FocusGroupManager"

    const-string/jumbo v2, "updateFocusGroup() : only preview mode changed : mListener.setFocusParametersOnly();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "FocusGroupManager"

    const-string v2, "mFocusGroup.destory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->destory()V

    .line 111
    :cond_2
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-static {v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->create(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;)Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setPreviewSize(II)V

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setDisplayOrientation(I)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMirror(Z)V

    .line 120
    const-string v1, "FocusGroupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFocusGroup() : mFocusGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 123
    const-string v1, "FocusGroupManager"

    const-string/jumbo v2, "updateFocusGroup() : mListener.setFocusParametersOnly();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    goto/16 :goto_0
.end method

.method public updateFocusGroupOnUiThread()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/focus/FocusGroupManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager$1;-><init>(Lcom/lenovo/scg/camera/focus/FocusGroupManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateFocusGroupWithoutSetPara()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroupSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getGroup()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    move-result-object v0

    .line 136
    .local v0, "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "FocusGroupManager"

    const-string v2, "mFocusGroup.destory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->destory()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mGroup:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-static {v1}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->create(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;)Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setPreviewSize(II)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setDisplayOrientation(I)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMirror(Z)V

    .line 149
    const-string v1, "FocusGroupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFocusGroup() : mFocusGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->mFocusGroup:Lcom/lenovo/scg/camera/focus/FocusGroup;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 157
    return-void
.end method
