.class public Lcom/lenovo/scg/camera/mode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ModeManager$1;,
        Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;,
        Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;
    }
.end annotation


# static fields
.field private static mManager:Lcom/lenovo/scg/camera/mode/ModeManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private clearFrontModeOnPause:Z

.field private mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

.field private mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

.field private mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

.field private mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeManager;->mManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "CaptureModeManager"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->TAG:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 60
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 65
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 69
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    .line 636
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    .line 81
    return-void
.end method

.method private doEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V
    .locals 14
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string/jumbo v10, "will enter mode %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_0
    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v10, :cond_2

    .line 189
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v5, "i":Landroid/content/Intent;
    const-string v10, "com.lenovo.scg.minicamera.qrcode.start"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v5    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    if-nez v10, :cond_3

    move-object/from16 v10, p2

    .line 200
    check-cast v10, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iput-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 202
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    if-eqz v10, :cond_1

    .line 207
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v10

    if-eq v10, p1, :cond_4

    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->isSwitchingCamera()Z

    move-result v10

    if-nez v10, :cond_4

    .line 208
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setCameraDefaultParamerters()V

    .line 212
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setCurrentMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 213
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setCurrentMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 215
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v10, :cond_6

    invoke-static {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory;->isSmartMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v10, :cond_6

    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v10, :cond_6

    .line 216
    const-string/jumbo v10, "will enter normal mode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 217
    const-string v10, "enterNormalMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterNormalMode()V

    .line 219
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 220
    const-string v10, "enterNormalMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 222
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    if-eqz v10, :cond_5

    .line 223
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;->onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 227
    :cond_5
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onModeChange(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto :goto_0

    .line 231
    :cond_6
    sget-object v9, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 232
    .local v9, "oldStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 233
    .local v2, "defaultStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v8, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 235
    .local v8, "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v10, :cond_a

    .line 236
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v10

    if-ne p1, v10, :cond_9

    .line 237
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->resume()V

    .line 239
    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v10, :cond_7

    .line 240
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v10, :cond_8

    .line 242
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto/16 :goto_0

    .line 243
    :cond_8
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v10

    if-nez v10, :cond_1

    .line 244
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeHandler()Landroid/os/Handler;

    move-result-object v4

    .line 245
    .local v4, "handler":Landroid/os/Handler;
    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 246
    .local v7, "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 251
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_9
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v9

    .line 254
    :cond_a
    const-string v10, "ExitMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 255
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v10, :cond_c

    .line 256
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 257
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->restoreCaptureAndPreviewSize()Z

    .line 258
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_mem_analysis_log_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 259
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getModeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/common/utils/android/StatusLog;->writeEvent(Ljava/lang/String;)V

    .line 261
    :cond_b
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    .line 263
    :cond_c
    const-string v10, "ExitMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 264
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v10

    if-eqz v10, :cond_12

    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 265
    :goto_1
    invoke-static/range {p1 .. p2}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 267
    const-string/jumbo v10, "updateCaptureAndPreviewSize start"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/ModeManager;->updateCaptureAndPreviewSize(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    .line 269
    .local v1, "bPreviewAlreadyRestarted":Z
    const-string/jumbo v10, "updateCaptureAndPreviewSize end"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 271
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v10, :cond_15

    .line 272
    const-string v10, "EnterMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 273
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v11, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 274
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_mem_analysis_log_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 275
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getModeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " enter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/common/utils/android/StatusLog;->writeEvent(Ljava/lang/String;)V

    .line 277
    :cond_d
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v8

    .line 279
    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v10, :cond_13

    .line 280
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 288
    :cond_e
    :goto_2
    const-string v10, "EnterMode"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 292
    :goto_3
    const-string/jumbo v10, "off"

    iget-object v11, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 293
    sget-object v9, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .line 295
    :cond_f
    const-string/jumbo v10, "updateZSDStatus"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v9, v2, v8}, Lcom/lenovo/scg/camera/mode/ModeManager;->updateZSDStatus(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;)Z

    move-result v0

    .line 297
    .local v0, "bNeedRestartPreview":Z
    const-string/jumbo v10, "updateZSDStatus"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 298
    if-eqz v0, :cond_10

    .line 299
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 300
    .local v6, "module":Lcom/lenovo/scg/camera/PhotoModule;
    if-nez v1, :cond_16

    .line 301
    const-string/jumbo v10, "restartPreview"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoModule;->restartPreview()V

    .line 303
    const-string/jumbo v10, "restartPreview"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 312
    .end local v6    # "module":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_10
    :goto_4
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    if-eqz v10, :cond_11

    .line 313
    const-string/jumbo v10, "onEnterModeDone"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 314
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    invoke-interface {v10, p1}, Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;->onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 315
    const-string/jumbo v10, "onEnterModeDone"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 319
    :cond_11
    const-string/jumbo v10, "onModeChange"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onModeChange(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 321
    const-string/jumbo v10, "onModeChange"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "bNeedRestartPreview":Z
    .end local v1    # "bPreviewAlreadyRestarted":Z
    :cond_12
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    goto/16 :goto_1

    .line 281
    .restart local v1    # "bPreviewAlreadyRestarted":Z
    :cond_13
    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v10, :cond_14

    .line 282
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto :goto_2

    .line 283
    :cond_14
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v10

    if-nez v10, :cond_e

    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v10, :cond_e

    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v10, :cond_e

    sget-object v10, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v10, :cond_e

    .line 284
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeHandler()Landroid/os/Handler;

    move-result-object v4

    .line 285
    .restart local v4    # "handler":Landroid/os/Handler;
    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 286
    .restart local v7    # "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 290
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_15
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto/16 :goto_3

    .line 305
    .restart local v0    # "bNeedRestartPreview":Z
    .restart local v6    # "module":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_16
    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeHandler()Landroid/os/Handler;

    move-result-object v4

    .line 306
    .restart local v4    # "handler":Landroid/os/Handler;
    const/4 v10, 0x1

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 307
    .restart local v7    # "msg":Landroid/os/Message;
    const-wide/16 v10, 0x64

    invoke-virtual {v4, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method private enterNormalMode()V
    .locals 3

    .prologue
    .line 738
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 739
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isSmartSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 743
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 744
    return-void
.end method

.method private exitNormalMode()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 748
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/lenovo/scg/camera/mode/ModeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeManager;->mManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeManager;->mManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeManager;->mManager:Lcom/lenovo/scg/camera/mode/ModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSmartSettingEnable()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->isSmartSettingEnable()Z

    move-result v0

    return v0
.end method

.method private restoreCaptureAndPreviewSize()Z
    .locals 2

    .prologue
    .line 708
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 713
    :goto_0
    return v1

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 711
    .local v0, "settingController":Lcom/lenovo/scg/camera/setting/CameraSettingController;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->restorePicturePreviewSize(Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;)V

    .line 712
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    .line 713
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateZSDStatus(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;)Z
    .locals 8
    .param p1, "oldStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .param p2, "defaultStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .param p3, "newStatus"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "bRestartPreview":Z
    const/4 v3, 0x0

    .line 606
    .local v3, "startStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    const/4 v2, 0x0

    .line 607
    .local v2, "endStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-eq p1, v4, :cond_0

    .line 608
    move-object v3, p1

    .line 612
    :goto_0
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_UNKNOWN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-eq p3, v4, :cond_1

    .line 613
    move-object v2, p3

    .line 618
    :goto_1
    if-eq v3, v2, :cond_3

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 620
    .local v1, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v2, v4, :cond_2

    .line 621
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 628
    :goto_2
    const/4 v0, 0x1

    .line 633
    .end local v1    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :goto_3
    return v0

    .line 610
    :cond_0
    move-object v3, p2

    goto :goto_0

    .line 615
    :cond_1
    move-object v2, p2

    goto :goto_1

    .line 623
    .restart local v1    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_2
    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_2

    .line 630
    .end local v1    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_3
    const-string/jumbo v4, "updateZSDStatus do nothing,zsd=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public clearCurrentMode()V
    .locals 2

    .prologue
    .line 785
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    if-nez v1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getModeRetButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    .line 788
    .local v0, "modeRetBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    if-eqz v0, :cond_1

    .line 789
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->removeModeStatusBar()V

    goto :goto_0
.end method

.method public clearScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 936
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->clearScreen([I)V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearScreen([I)V

    goto :goto_0
.end method

.method public clearTempVideoOnIntent()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->clearValues()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 535
    :cond_0
    return-void
.end method

.method public emptyCurrentMode()V
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 796
    const-string/jumbo v0, "will emptyCurrentMode"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 798
    return-void
.end method

.method public declared-synchronized enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/ModeManager;->doEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enterVideoMode(Landroid/content/Context;Lcom/lenovo/scg/camera/setting/CameraSettingController;)Lcom/lenovo/scg/camera/mode/CaptureMode;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 359
    const-string v2, "CaptureModeManager"

    const-string v3, "enterVideoMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 365
    :cond_1
    const-string v2, "CaptureModeManager"

    const-string v3, "enterVideoMode with null paras!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v2, 0x0

    .line 408
    :goto_0
    return-object v2

    .line 368
    :cond_2
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 370
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-nez v2, :cond_6

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 373
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    invoke-interface {p2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 374
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 376
    const-string v2, "CaptureModeManager"

    const-string v3, "enterVideoMode to new VideoMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/VideoMode;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    .line 379
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->enter(Landroid/content/Context;)V

    .line 382
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->stopFaceDetection()V

    .line 383
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->closeAllCaptureWay()V

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lenovo.scg.camera.ENTERVIDEO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/FaceView;->setVisibility(I)V

    .line 391
    .end local v0    # "para":Landroid/hardware/Camera$Parameters;
    .end local v1    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;->onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 397
    :cond_3
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    .line 403
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iget-object v2, v2, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 406
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->removeSquareMaskView()V

    .line 408
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    goto/16 :goto_0

    .line 388
    :cond_6
    const-string v2, "CaptureModeManager"

    const-string v3, "Enter video mode again when it\'s already video mode!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public exitMode()V
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getModeRetButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    .line 727
    .local v0, "modeRetBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    if-eqz v0, :cond_0

    .line 728
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->removeModeStatusBar()V

    .line 733
    .end local v0    # "modeRetBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    .line 735
    return-void
.end method

.method public exitModeInst(Lcom/lenovo/scg/camera/mode/CaptureMode;)V
    .locals 0
    .param p1, "modeInst"    # Lcom/lenovo/scg/camera/mode/CaptureMode;

    .prologue
    .line 991
    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 994
    :cond_0
    return-void
.end method

.method public exitVideoMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    const-string v2, "CaptureModeManager"

    const-string v3, "exit video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-nez v2, :cond_1

    .line 414
    const-string v2, "CaptureModeManager"

    const-string v3, "exitVideoMode with mVideoMode == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 420
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 421
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 423
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->exit()V

    .line 424
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    .line 426
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startFaceDetection()V

    .line 427
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->restoreCaptureAndPreviewSize()Z

    .line 433
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lenovo.scg.camera.EXITVIDEO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/FaceView;->setVisibility(I)V

    .line 439
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeCaptureWay()V

    .line 440
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_5

    .line 441
    const-string v2, "CaptureModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notEneterFrontModeOnPause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->clearFrontModeOnPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->clearFrontModeOnPause:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    instance-of v2, v2, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    if-eqz v2, :cond_8

    .line 444
    const-string v2, "CaptureModeManager"

    const-string v3, "Clear front mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    .line 456
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->clearFrontModeOnPause:Z

    .line 459
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    if-eqz v2, :cond_6

    .line 460
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;->onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 465
    :cond_6
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v2, v6, :cond_7

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 467
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    .line 471
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    iget-object v2, v2, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    goto/16 :goto_0

    .line 448
    :cond_8
    const-string v2, "CaptureModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter mode is SmartMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    instance-of v4, v4, Lcom/lenovo/scg/camera/mode/SmartMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isPaused()Z

    move-result v2

    if-nez v2, :cond_4

    .line 452
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    .line 120
    .local v1, "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 121
    .local v0, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    if-eqz v0, :cond_0

    .line 122
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v1, v2, :cond_2

    .line 123
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 129
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onResume()V

    .line 162
    .end local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    .end local v1    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_1
    :goto_1
    return-void

    .line 125
    .restart local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    .restart local v1    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_2
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_0

    .line 135
    .end local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    .end local v1    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_3
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/mode/ModeFactory;->createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 143
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    .line 149
    .restart local v1    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 150
    .restart local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v1, v2, :cond_4

    .line 151
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 157
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    invoke-interface {v2, p1}, Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;->onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto :goto_1

    .line 153
    :cond_4
    sget-object v2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_2
.end method

.method public getBaseController()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    return-object v0
.end method

.method public getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    return-object v0
.end method

.method public getTempVideoNameOnIntent()Lcom/lenovo/scg/common/utils/VideoIntentInfo;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    return-object v0
.end method

.method public handleRetakeVideo()V
    .locals 2

    .prologue
    .line 499
    const-string v0, "CaptureModeManager"

    const-string v1, "Video intent handleRetakeVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->deleteCurrentVideo()V

    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->hideAlert()V

    .line 508
    :cond_1
    return-void
.end method

.method public handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V
    .locals 5
    .param p1, "action"    # Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    .prologue
    .line 538
    if-nez p1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string v2, "CaptureModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVideoEvent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v2, :cond_0

    .line 546
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeManager$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeManager$VideoClickAction:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 548
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->initVideoMode()V

    goto :goto_0

    .line 551
    :pswitch_1
    const/4 v1, 0x0

    .line 553
    .local v1, "size":Landroid/hardware/Camera$Size;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    :goto_1
    const-string v3, "initVariable onRecordButtonClick "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->onVideoRecord()V

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVideoEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 563
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->onVideoPauseClick()V

    goto/16 :goto_0

    .line 566
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->onVideoResumeClick()V

    goto/16 :goto_0

    .line 569
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStopVideoRecording()V

    goto/16 :goto_0

    .line 572
    :pswitch_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->onPhotoButtonClick()V

    goto/16 :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isEntered()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isEntered()Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalContinuous()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1009
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-nez v2, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return v1

    .line 1013
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getContinuousShotPara()Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    move-result-object v0

    .line 1014
    .local v0, "csp":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    if-eqz v0, :cond_0

    .line 1017
    iget-object v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v3, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v2, v3, :cond_0

    .line 1018
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRealMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 770
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_0

    .line 780
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSmart()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v0

    goto :goto_0
.end method

.method public isVideoMode()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRecording()Z
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "CaptureModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoRecording()Z

    move-result v0

    .line 600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 964
    sget-boolean v3, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-eqz v3, :cond_2

    .line 965
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v2, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onBackPressed()Z

    move-result v0

    .line 967
    .local v0, "bRet":Z
    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    goto :goto_0

    .line 973
    .end local v0    # "bRet":Z
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 974
    .local v1, "modeNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    if-nez v3, :cond_3

    .line 975
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v3, :cond_0

    .line 976
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    move v0, v2

    .line 977
    goto :goto_0

    .line 980
    :cond_3
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v3, :cond_0

    .line 982
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    move v0, v2

    .line 983
    goto :goto_0
.end method

.method public onBeforeTakePicture()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onBeforeTakePicture()V

    .line 1029
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    goto :goto_0
.end method

.method public onError(ILandroid/hardware/Camera;)Z
    .locals 5
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 868
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->onCameraError(ILandroid/hardware/Camera;)V

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_1

    .line 872
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onError(ILandroid/hardware/Camera;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 879
    :cond_1
    :goto_0
    return v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ModeManager onError error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 889
    const-string v0, "CaptureModeManager"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_1

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->clearFrontModeOnPause:Z

    .line 892
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onPause()V

    .line 895
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitVideoMode()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPause()V

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 840
    const-string v2, "CaptureModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPictureTaken currentMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v0, 0x0

    .line 844
    .local v0, "outBuffer":Lcom/lenovo/scg/camera/data/YUVBuffer;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getContinuousShotPara()Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    move-result-object v1

    .line 846
    .local v1, "shotPara":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    iget-boolean v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-nez v2, :cond_1

    .line 847
    new-instance v0, Lcom/lenovo/scg/camera/data/YUVBuffer;

    .end local v0    # "outBuffer":Lcom/lenovo/scg/camera/data/YUVBuffer;
    invoke-direct {v0}, Lcom/lenovo/scg/camera/data/YUVBuffer;-><init>()V

    .line 848
    .restart local v0    # "outBuffer":Lcom/lenovo/scg/camera/data/YUVBuffer;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, p1, v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->continuousShotOnPictureTaken([BLcom/lenovo/scg/camera/data/YUVBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    const/4 v2, 0x1

    .line 863
    .end local v1    # "shotPara":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :goto_0
    return v2

    .line 851
    .restart local v1    # "shotPara":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/lenovo/scg/camera/data/YUVBuffer;->buffer:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_2

    .line 852
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    iget-object v3, v0, Lcom/lenovo/scg/camera/data/YUVBuffer;->buffer:[B

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTaken([BLandroid/location/Location;)Z

    move-result v2

    goto :goto_0

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->oneShotOnPictureTaken([B)V

    .line 860
    .end local v1    # "shotPara":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v2, :cond_3

    .line 861
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTaken([BLandroid/location/Location;)Z

    move-result v2

    goto :goto_0

    .line 863
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onResume()V

    goto :goto_0
.end method

.method public onShutterButtonClick()Z
    .locals 3

    .prologue
    .line 822
    const-string v0, "CaptureModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick currentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onShutterButtonClick()Z

    move-result v0

    .line 826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->pause()V

    goto :goto_0
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "CaptureModeManager"

    const-string/jumbo v1, "wangsm3 playVideo mVideoMode != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->startPlayVideoActivity()V

    .line 584
    :cond_0
    return-void
.end method

.method public registerContinuousShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 2
    .param p1, "tool"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    .line 1001
    return-void
.end method

.method public releaseInstance()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeManager;->mManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 102
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->resume()V

    goto :goto_0
.end method

.method public saveTempVideoOnIntent(Ljava/lang/String;Landroid/net/Uri;IJILandroid/net/Uri;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "currentUri"    # Landroid/net/Uri;
    .param p3, "quality"    # I
    .param p4, "size"    # J
    .param p6, "duration"    # I
    .param p7, "mIntentUri"    # Landroid/net/Uri;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :cond_0
    const-string v1, "CaptureModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t saveTempVideoOnIntent mPhotoModule != null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1
    new-instance v0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmCurrentVideoFilename(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmCurrentVideoUri(Landroid/net/Uri;)V

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p7}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmIntentUri(Landroid/net/Uri;)V

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmIntentQuality(I)V

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p4, p5}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmIntentSize(J)V

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v0, p6}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->setmMaxVideoDurationInMs(I)V

    .line 524
    return-void

    .line 513
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set3rdVideoFlashBtn(ZI)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "marginTop"    # I

    .prologue
    .line 491
    const-string v1, "CaptureModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set3rdVideoFlashBtn mVideoMode != null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/VideoMode;->set3rdVideoFlashBtn(ZI)V

    .line 496
    :cond_0
    return-void

    .line 491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraActivity(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public setOnEnterModeDoneListener(Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mEnterModeDoneListener:Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;

    .line 355
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setOrientation(I)V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->setOrientation(I)V

    .line 1045
    :cond_1
    return-void
.end method

.method public setPhotoModule(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p1, "module"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 109
    check-cast p1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .end local p1    # "module":Lcom/lenovo/scg/camera/PhotoModule;
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 110
    return-void
.end method

.method public showScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCurrentMode:Lcom/lenovo/scg/camera/mode/CaptureMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->showScreen([I)V

    goto :goto_0
.end method

.method public turnToVideoCaller(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->doReturnToCaller(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitVideoMode()V

    .line 488
    :cond_1
    return-void
.end method

.method public unRegisterContinuousShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 2
    .param p1, "tool"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 1005
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setCFResultEnable(Z)V

    .line 1006
    return-void
.end method

.method public updateCaptureAndPreviewSize(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z
    .locals 7
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 642
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    const-string/jumbo v4, "updateCaptureAndPreviewSize"

    invoke-static {v1, v4}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 646
    .local v0, "settingController":Lcom/lenovo/scg/camera/setting/CameraSettingController;
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeManager$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 699
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->isPreviewAlreadyRestarted()Z

    move-result v3

    .line 702
    :cond_0
    return v3

    .end local v0    # "settingController":Lcom/lenovo/scg/camera/setting/CameraSettingController;
    :cond_1
    move v1, v3

    .line 642
    goto :goto_0

    .line 664
    .restart local v0    # "settingController":Lcom/lenovo/scg/camera/setting/CameraSettingController;
    :pswitch_1
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_1080P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v5, v3, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto :goto_1

    .line 670
    :pswitch_2
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v5, v3, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto :goto_1

    .line 675
    :pswitch_3
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v5, v3, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto :goto_1

    .line 680
    :pswitch_4
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v5, v3, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto :goto_1

    .line 686
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v4, "developer_setting_panorama_4K_key"

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 687
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v5, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ULTRA_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v2, v2, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v6, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    aput-object v6, v2, v3

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto :goto_1

    .line 690
    :cond_2
    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v1

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v5, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    new-array v2, v2, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v6, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    aput-object v6, v2, v3

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ModeManager;->mCapturePreviewInfo:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    goto/16 :goto_1

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
