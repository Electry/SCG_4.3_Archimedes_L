.class public Lcom/lenovo/scg/camera/mode/SmartMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "SmartMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartMode"


# instance fields
.field private final MSG_SMART_INIT:I

.field private mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

.field private mEnableSceneChange:Z

.field private mHandler:Landroid/os/Handler;

.field private mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

.field private mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

.field private mOldZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

.field private mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->MSG_SMART_INIT:I

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 386
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mOldZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 388
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 390
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/SmartMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/SmartMode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterSmartEngine()V

    return-void
.end method

.method private enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V
    .locals 7
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mOldZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_0

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    :goto_1
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 416
    :cond_0
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 418
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    const-string v5, "error: ModeFactory.createMode"

    invoke-static {v2, v5}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    .line 420
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 428
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-boolean v2, v2, Lcom/lenovo/scg/camera/mode/CaptureMode;->mIsSupportZSD:Z

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mIsSupportZSD:Z

    .line 431
    const-string/jumbo v2, "smart mode inner enter mode : %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    sget-object v2, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    sget-object v3, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v2, v3, :cond_5

    const-string/jumbo v1, "off"

    .line 435
    .local v1, "sStatus":Ljava/lang/String;
    :goto_4
    sget-object v2, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;->onModeChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v1    # "sStatus":Ljava/lang/String;
    :cond_1
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_2

    .line 405
    const-string v2, "SmartMode.enterMode exit: %s, error=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    goto :goto_1

    :cond_4
    move v2, v4

    .line 418
    goto :goto_2

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "SmartMode enter mode error: %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v1, "on"

    goto :goto_4
.end method

.method private enterSmartEngine()V
    .locals 5

    .prologue
    .line 227
    const-string v2, "SmartMode"

    const-string v3, "kbg374, enterSmartEngine"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->initSmartEngineView()V

    .line 229
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->addSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V

    .line 230
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 234
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 235
    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 236
    .local v1, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    const-string v2, "first is not camera, will not enter smart engine view"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 246
    .end local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .end local v1    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->enter()V

    .line 244
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private exitSmartEngine()V
    .locals 3

    .prologue
    .line 249
    const-string v1, "SmartMode"

    const-string v2, "kbg374, exitSmartEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->delSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->exit()V

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 256
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .line 260
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private initSmartEngineView()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 197
    const-string v4, "SmartMode"

    const-string v5, "kbg374, initSmartEngineView"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 200
    .local v3, "vg":Landroid/view/ViewGroup;
    const v4, 0x7f1008f2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "vChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 203
    const-string v4, "SmartMode"

    const-string v5, "kbg374, initSmartEngineView, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 208
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_2

    .line 209
    const-string v4, "SmartMode"

    const-string v5, "initSmartEngineView layoutInflater is null,return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_2
    const v4, 0x7f040182

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .line 214
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v4, :cond_0

    .line 218
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setSmartEngineEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setSmartEngineEnable(Z)V

    .line 477
    :cond_0
    return-void
.end method

.method private updateZSDStatus(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Z)V
    .locals 7
    .param p1, "oldStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .param p2, "defaultStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .param p3, "newStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .param p4, "isNeedRestartPreview"    # Z

    .prologue
    .line 440
    const-string v4, "SmartMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kbg374, updateZSDStatus, oldStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", defaultStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v3, 0x0

    .line 445
    .local v3, "startStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    const/4 v1, 0x0

    .line 446
    .local v1, "endStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-eq p1, v4, :cond_2

    .line 447
    move-object v3, p1

    .line 451
    :goto_1
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-eq p3, v4, :cond_3

    .line 452
    move-object v1, p3

    .line 457
    :goto_2
    if-eq v3, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 459
    .local v0, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v1, v4, :cond_4

    .line 460
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v4}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 465
    :goto_3
    if-eqz p4, :cond_0

    .line 466
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/PhotoModule;

    .line 467
    .local v2, "module":Lcom/lenovo/scg/camera/PhotoModule;
    const-string v4, "SmartMode : will call restartPreview"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->restartPreview()V

    goto :goto_0

    .line 449
    .end local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    .end local v2    # "module":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_2
    move-object v3, p2

    goto :goto_1

    .line 454
    :cond_3
    move-object v1, p2

    goto :goto_2

    .line 462
    .restart local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_4
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v4}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_3
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->clearScreen([I)V

    .line 165
    return-void
.end method

.method public disableSceneChange()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 281
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->setSmartEngineEnable(Z)V

    .line 282
    return-void
.end method

.method public enableSceneChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 276
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->setSmartEngineEnable(Z)V

    .line 277
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 44
    const-string v0, "SmartMode enter"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mIsSmart:Z

    .line 49
    new-instance v0, Lcom/lenovo/scg/camera/mode/SmartMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/mode/SmartMode$1;-><init>(Lcom/lenovo/scg/camera/mode/SmartMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method

.method protected exit()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    const-string v1, "SmartMode exit"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->exitSmartEngine()V

    .line 81
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    goto :goto_0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v0

    return-object v0
.end method

.method public isEnableSceneChange()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "SmartMode"

    const-string v1, "kbg374, onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->exit()V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBeforeTakePicture()V
    .locals 4

    .prologue
    .line 95
    const-string/jumbo v0, "wwf"

    const-string/jumbo v1, "onBeforeCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->updateZSDStatus(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Z)V

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->setSmartEngineEnable(Z)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onBeforeTakePicture()V

    .line 100
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)Z
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onError(ILandroid/hardware/Camera;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "SmartMode"

    const-string v1, "kbg374, onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 124
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->exitSmartEngine()V

    .line 127
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 105
    const-string/jumbo v1, "wwf"

    const-string/jumbo v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTaken([BLandroid/location/Location;)Z

    move-result v0

    .line 107
    .local v0, "bSuc":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/SmartMode;->setSmartEngineEnable(Z)V

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mNewZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mDefaultZSDStatus:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/SmartMode;->updateZSDStatus(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Z)V

    .line 110
    return v0
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "SmartMode"

    const-string v1, "kbg374, onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTakenTimeOut()V

    .line 493
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->setSmartEngineEnable(Z)V

    .line 494
    return-void
.end method

.method public onPreviewJitteringChange(I)V
    .locals 0
    .param p1, "nFlag"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onPreviewSceneChange(I)V
    .locals 4
    .param p1, "nFlag"    # I

    .prologue
    .line 288
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    if-nez v2, :cond_1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableSceneChange=false, onPreviewSceneChange will return, not change mode,flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSceneChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 296
    .local v1, "modInst":Lcom/lenovo/scg/camera/mode/CaptureMode;
    packed-switch p1, :pswitch_data_0

    .line 374
    :pswitch_0
    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 376
    .local v0, "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 380
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_2
    const-string/jumbo v2, "smart enter normal"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 381
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :pswitch_1
    if-eqz v1, :cond_3

    .line 302
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 303
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 307
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_3
    const-string/jumbo v2, "smart enter lowlight"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 308
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :pswitch_2
    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 316
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 320
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_4
    const-string/jumbo v2, "smart enter DIMLIT"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :pswitch_3
    if-eqz v1, :cond_5

    .line 328
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 329
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 333
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_5
    const-string/jumbo v2, "smart enter DYNAMICNIGHT"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 334
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    :pswitch_4
    if-eqz v1, :cond_6

    .line 340
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 341
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 345
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_6
    const-string/jumbo v2, "smart enter hdr"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 346
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 351
    :pswitch_5
    if-eqz v1, :cond_7

    .line 352
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 353
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 357
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_7
    const-string/jumbo v2, "smart enter portrait"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 358
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 363
    :pswitch_6
    if-eqz v1, :cond_8

    .line 364
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 365
    .restart local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 369
    .end local v0    # "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_8
    const-string/jumbo v2, "smart enter land scape"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 370
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SmartMode"

    const-string v1, "kbg374, onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 135
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterSmartEngine()V

    .line 137
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onShutterButtonClick()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "SmartMode"

    const-string v1, "kbg374, pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 148
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->exitSmartEngine()V

    .line 150
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "SmartMode"

    const-string v1, "kbg374, resume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mEnableSceneChange:Z

    .line 158
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/SmartMode;->enterSmartEngine()V

    .line 159
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setOrientation(IZ)V

    .line 179
    :cond_0
    return-void
.end method

.method public showScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/SmartMode;->mMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->showScreen([I)V

    .line 171
    return-void
.end method
