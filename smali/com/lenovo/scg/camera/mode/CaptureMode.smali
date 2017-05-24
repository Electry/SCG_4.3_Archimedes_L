.class public abstract Lcom/lenovo/scg/camera/mode/CaptureMode;
.super Ljava/lang/Object;
.source "CaptureMode.java"


# static fields
.field private static mMapMode2ExFeature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entered:Z

.field protected mContext:Landroid/content/Context;

.field protected mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

.field protected mFlashStatusSave:Ljava/lang/String;

.field protected mIsSmart:Z

.field protected mIsSupportZSD:Z

.field protected mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/lenovo/scg/camera/mode/CaptureMode$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mMapMode2ExFeature:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->entered:Z

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 37
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSmart:Z

    .line 39
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSupportZSD:Z

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mFlashStatusSave:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private translateMode2ExfeatureValue(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 336
    sget-object v0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mMapMode2ExFeature:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addModeRootView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method

.method public clearExFeatureSetting()V
    .locals 4

    .prologue
    .line 323
    const-string/jumbo v2, "setExFeature"

    const-string v3, "MODE = Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 326
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    const-string v2, "ex_feature"

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CaptureMode.clearExFeatureSetting"

    invoke-static {v2, v0}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 331
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public abstract clearScreen([I)V
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mContext:Landroid/content/Context;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setEntered(Z)V

    .line 104
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setEntered(Z)V

    .line 112
    return-void
.end method

.method public exitOutter()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 116
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-object v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "clasz":Ljava/lang/String;
    const-string v2, ".mode."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "claszSplit":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 180
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 182
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "CaptureMode"

    goto :goto_0
.end method

.method public getOnPictureTakenTimeOutTimer()J
    .locals 2

    .prologue
    .line 418
    const-wide/16 v0, 0x1770

    return-wide v0
.end method

.method public getSavePicNeedMirror()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePicNeedTrim11()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    return-object v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSupportZSD:Z

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 354
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    goto :goto_0
.end method

.method public isBackToModePreview()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected isEntered()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->entered:Z

    return v0
.end method

.method public isNeedOrientation()Z
    .locals 2

    .prologue
    .line 405
    const-string v0, "CaptureMode"

    const-string v1, "isNeedOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public isSmart()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSmart:Z

    return v0
.end method

.method public isSupportZSD()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSupportZSD:Z

    return v0
.end method

.method public isTakePictureFinish()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public isTorch()Z
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract onBackPressed()Z
.end method

.method public onBeforeTakePicture()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)Z
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPause()V
.end method

.method public abstract onPictureTaken([BLandroid/location/Location;)Z
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "CaptureMode"

    const-string/jumbo v1, "onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public abstract onResume()V
.end method

.method public abstract onShutterButtonClick()Z
.end method

.method public abstract pause()V
.end method

.method protected removeModeRootView(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method public abstract resume()V
.end method

.method protected setEntered(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->entered:Z

    .line 58
    return-void
.end method

.method public setExFeature()V
    .locals 7

    .prologue
    .line 247
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 248
    .local v1, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string/jumbo v4, "setExFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->translateMode2ExfeatureValue(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 253
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    const-string v4, "ex_feature"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v4, :cond_0

    .line 257
    const-string v4, "ex_feature-lowlight-algorithm"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4, v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v2    # "p":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CaptureMode.setExFeature"

    invoke-static {v4, v0}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 264
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setExFeatureIntParamters([Ljava/lang/String;[I)V
    .locals 5
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 303
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 304
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 305
    aget-object v3, p1, v1

    aget v4, p2, v1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CaptureMode.setExFeatureStringParamters"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 312
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public setExFeatureStringParamters([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 280
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 281
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CaptureMode.setExFeatureStringParamters"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public setIsSmart(Z)V
    .locals 0
    .param p1, "isSmart"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSmart:Z

    .line 74
    return-void
.end method

.method public setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 0
    .param p1, "m"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 62
    return-void
.end method

.method public setModeController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 96
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 380
    return-void
.end method

.method public setSupportZSD(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSupportZSD:Z

    .line 83
    return-void
.end method

.method public abstract showScreen([I)V
.end method
