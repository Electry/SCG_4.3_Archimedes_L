.class public Lcom/lenovo/scg/camera/ContinuousShotTool;
.super Ljava/lang/Object;
.source "ContinuousShotTool.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ContinuousShotTool$OneShotNotifyListener;,
        Lcom/lenovo/scg/camera/ContinuousShotTool$OnPictureTakenListener;,
        Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;,
        Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;
    }
.end annotation


# static fields
.field private static final MSG_TAKE_MORE:I


# instance fields
.field private mAnimEndListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

.field private mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

.field private mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

.field private mCaptureStartTime:J

.field private mCountNow:I

.field private mFlashStatusSave:Ljava/lang/String;

.field private mLastTime:J

.field private mOldQuality:I

.field private mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

.field private mParametersCache:Landroid/hardware/Camera$Parameters;

.field mPictureSize:Landroid/hardware/Camera$Size;

.field private mPictureTakenTime:J

.field private mStopNormal:Z

.field private mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

.field private mToolHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V
    .locals 6
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    .line 37
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mLastTime:J

    .line 39
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    .line 41
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureTakenTime:J

    .line 43
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    .line 45
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    .line 49
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    .line 53
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .line 55
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 57
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimEndListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mOldQuality:I

    .line 69
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 328
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mStopNormal:Z

    .line 565
    new-instance v1, Lcom/lenovo/scg/camera/ContinuousShotTool$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ContinuousShotTool$1;-><init>(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolHandler:Landroid/os/Handler;

    .line 77
    check-cast p1, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    .end local p1    # "controller":Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    iput-object p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "controller can not be null"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/ContinuousShotTool;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ContinuousShotTool;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    return-object v0
.end method

.method private getYUVData([B)[B
    .locals 4
    .param p1, "jpeg"    # [B

    .prologue
    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 83
    .local v2, "width":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 85
    .local v0, "height":I
    sget v3, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-static {p1, v2, v0, v3}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUV([BIII)[B

    move-result-object v1

    .line 86
    .local v1, "outData":[B
    return-object v1
.end method


# virtual methods
.method public OnContinuousShotPictureTaken([BZ)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "bRestartPreview"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    const-string v0, "count=%d, bRestartPreview=%s time=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    if-eqz p2, :cond_0

    .line 508
    const-string v0, "continuous shot end end end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    iget v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v1, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    if-ge v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v0, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mHandlerOnEnd:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "continuous tool send message: %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v2, v2, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->msgOnEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v0, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mHandlerOnEnd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v1, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->msgOnEnd:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    :cond_0
    return v6
.end method

.method public cancelMultiFrameAnim()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->cancelAnimation()V

    .line 154
    :cond_0
    return-void
.end method

.method public continuousShotOnPictureTaken([BLcom/lenovo/scg/camera/data/YUVBuffer;)Z
    .locals 16
    .param p1, "data"    # [B
    .param p2, "outBuffer"    # Lcom/lenovo/scg/camera/data/YUVBuffer;

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-eqz v11, :cond_0

    .line 413
    const/4 v11, 0x0

    const-string v12, "continuousShotOnPictureTaken type error"

    invoke-static {v11, v12}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    .line 416
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v12, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v11, v12, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mStopNormal:Z

    if-eqz v11, :cond_1

    .line 419
    const/4 v11, 0x1

    .line 500
    :goto_0
    return v11

    .line 421
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureTakenTime:J

    .line 422
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureTakenTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    .line 427
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continuousShotOnPictureTaken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v12, v12, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    if-ne v11, v12, :cond_4

    .line 429
    const-string v11, "continuousShotOnPictureTaken end"

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v11, :cond_3

    .line 433
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 434
    const/4 v11, 0x1

    goto :goto_0

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v11, :cond_5

    .line 441
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-wide v2, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 442
    .local v2, "delayTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureTakenTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    sub-long v6, v12, v14

    .line 443
    .local v6, "lCostTime":J
    const-string v11, "before: costtime=%d delayTime=%d "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    cmp-long v11, v6, v2

    if-gez v11, :cond_6

    .line 445
    sub-long/2addr v2, v6

    .line 449
    :goto_1
    const-string v11, "after: costtime=%d delayTime=%d dataLength=%d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 452
    .local v5, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    const-string/jumbo v11, "will delay time =%d get next picture,costTime=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 447
    .end local v5    # "msg":Landroid/os/Message;
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 459
    .end local v2    # "delayTime":J
    .end local v6    # "lCostTime":J
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->OnPictureCallback([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v12, v12, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    if-ne v11, v12, :cond_8

    .line 466
    const-string/jumbo v11, "will stop continuous shot, count=%d para.count=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v14, v14, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 469
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v4

    .line 461
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "mToolController.getSCFContinuousShotModeStub().OnPictureCallback(data), error: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 472
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v12, v12, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    if-ge v11, v12, :cond_c

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 475
    .local v8, "lTimeNow":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mLastTime:J

    sub-long v12, v8, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-wide v14, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    cmp-long v11, v12, v14

    if-ltz v11, :cond_c

    .line 477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v11, :cond_9

    .line 481
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v11, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    sget-object v12, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_YUV:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    if-ne v11, v12, :cond_a

    .line 482
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getYUVData([B)[B

    move-result-object v10

    .line 483
    .local v10, "yuvData":[B
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/lenovo/scg/camera/data/YUVBuffer;->buffer:[B

    .line 486
    .end local v10    # "yuvData":[B
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    .line 487
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mLastTime:J

    .line 488
    const-string v11, "ContinuousShotTool: nowCount=%d totalCount=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v14, v14, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget v12, v12, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    if-ne v11, v12, :cond_b

    .line 490
    const-string/jumbo v11, "will stop continuous shot"

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 492
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-wide v12, v11, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_b

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 496
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 500
    .end local v8    # "lTimeNow":J
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public deleteCacheData(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->deleteCacheData(I)Z

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheData(I)[B
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 539
    iget-object v5, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    if-eqz v5, :cond_0

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 541
    .local v0, "l1":J
    iget-object v5, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->getCacheData(I)[B

    move-result-object v4

    .line 542
    .local v4, "outData":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 543
    .local v2, "l2":J
    const-string v5, "getCacheData cost time=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-long v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    .end local v0    # "l1":J
    .end local v2    # "l2":J
    .end local v4    # "outData":[B
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getContinuousShotPara()Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    return-object v0
.end method

.method public getLostFrame()[B
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->getLastCacheData()[B

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleYUVData([BIIIZ)[B
    .locals 9
    .param p1, "srcBuffer"    # [B
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "format"    # I
    .param p5, "bNeedRotate"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    const-string v4, "enter getScaleYUVData w=%d h=%d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "outData":[B
    const/4 v3, 0x0

    .line 95
    .local v3, "rotateJpeg":[B
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUVWithBuffer([BIIIZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "outData":[B
    check-cast v2, [B

    .line 97
    .restart local v2    # "outData":[B
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rotateJpeg":[B
    check-cast v3, [B

    .line 99
    .restart local v3    # "rotateJpeg":[B
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->setCacheData([B)V

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 104
    move-object v0, v2

    .line 106
    .local v0, "animData":[B
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v4, v0, p2, p3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setYUVData([BII)V

    .line 108
    .end local v0    # "animData":[B
    :cond_1
    return-object v2
.end method

.method public getScaleYUVData([BIIIZZ)[B
    .locals 10
    .param p1, "srcBuffer"    # [B
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "format"    # I
    .param p5, "bNeedRotate"    # Z
    .param p6, "bNeedRotateSmall"    # Z

    .prologue
    .line 112
    const-string v2, "enter getScaleYUVData w=%d h=%d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "outData":[B
    const/4 v8, 0x0

    .line 117
    .local v8, "rotateJpeg":[B
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUVWithBuffer([BIIIZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 118
    .local v7, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "outData":[B
    check-cast v1, [B

    .line 119
    .restart local v1    # "outData":[B
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "rotateJpeg":[B
    check-cast v8, [B

    .line 121
    .restart local v8    # "rotateJpeg":[B
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v2, v2, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->setCacheData([B)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 126
    move-object v6, v1

    .line 129
    .local v6, "animData":[B
    if-eqz p6, :cond_2

    .line 130
    array-length v2, v1

    new-array v5, v2, [B

    .line 131
    .local v5, "newYUVData":[B
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;-><init>()V

    .line 132
    .local v0, "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Init()Z

    .line 133
    sget-object v4, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_90:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z

    .line 134
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Finish()V

    .line 135
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v2, v5, p3, p2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setYUVData([BII)V

    .line 140
    .end local v0    # "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    .end local v5    # "newYUVData":[B
    .end local v6    # "animData":[B
    :cond_1
    :goto_0
    return-object v1

    .line 137
    .restart local v6    # "animData":[B
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v2, v6, p2, p3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setYUVData([BII)V

    goto :goto_0
.end method

.method public getSupportZSD()Z
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v1, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v1, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v0

    .line 170
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getSupportZSD()Z

    move-result v1

    .line 179
    .end local v0    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    :goto_0
    return v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    .line 174
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v0

    .line 179
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->getSupportZSD()Z

    move-result v1

    goto :goto_0
.end method

.method public init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V
    .locals 10
    .param p1, "para"    # Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 185
    iput-object p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    .line 186
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    const-string/jumbo v7, "para = null"

    invoke-static {v4, v7}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    if-eqz v4, :cond_0

    .line 189
    new-instance v4, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    .line 191
    new-instance v7, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    check-cast v4, Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;

    invoke-direct {v7, v4}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;-><init>(Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;)V

    iput-object v7, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .line 192
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    iget v7, p1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setTotalFrameCount(I)V

    .line 193
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    iget-object v7, p1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->am:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setPlayMode(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;)V

    .line 195
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimEndListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ContinuousShotTool;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-nez v4, :cond_8

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v7, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v4, v7, :cond_7

    .line 202
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v3

    .line 203
    .local v3, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-wide v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    .line 204
    iget v4, p1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setContinuousShotMaxSize(I)V

    .line 210
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    .line 212
    const-string/jumbo v4, "torch"

    iget-object v5, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 215
    const-string v4, "enter tool,set flash=off end"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :cond_1
    iget-object v4, p1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    sget-object v5, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_YUV:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    if-ne v4, v5, :cond_6

    .line 220
    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setContinuousShotColorFormat(Ljava/lang/String;)V

    .line 224
    :goto_2
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;)V

    .line 226
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 227
    .local v1, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 228
    iput-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 230
    const-string v4, "enter continuous shot mode ---- fast"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 264
    .end local v1    # "param":Landroid/hardware/Camera$Parameters;
    .end local v3    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 268
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->registerContinuousShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    .line 270
    return-void

    :cond_4
    move v4, v6

    .line 186
    goto/16 :goto_0

    .line 207
    .restart local v3    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    :cond_5
    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setContinuousShotMaxSize(I)V

    goto :goto_1

    .line 222
    :cond_6
    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setContinuousShotColorFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    .end local v3    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v3

    .line 235
    .local v3, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 236
    .local v0, "paraCache":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "sMode":Ljava/lang/String;
    const-string v4, "current flash mode=%s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v4, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    .line 242
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mOldQuality:I

    .line 243
    const/16 v4, 0x55

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 244
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4, v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 246
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 248
    iput-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 250
    const-string v4, "enter continuous shot mode ---- normal,qualityOld=%d"

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mOldQuality:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 255
    .end local v0    # "paraCache":Landroid/hardware/Camera$Parameters;
    .end local v2    # "sMode":Ljava/lang/String;
    .end local v3    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v3

    .line 256
    .local v3, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;
    new-instance v4, Lcom/lenovo/scg/camera/ContinuousShotTool$OneShotNotifyListener;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ContinuousShotTool$OneShotNotifyListener;-><init>(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 257
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 258
    .restart local v1    # "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 259
    iput-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 261
    const-string v4, "enter one shot mode"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public isAniRunning()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->isAniRunning()Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraError(ILandroid/hardware/Camera;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->OnNotifyCallback(I)Z

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->OnNotifyCallback(I)Z

    goto :goto_0
.end method

.method public oneShotOnPictureTaken([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    const-string/jumbo v1, "oneShotOnPictureTaken type error"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->OnPictureCallback([B)Z

    .line 408
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 289
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mStopNormal:Z

    .line 291
    iput v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCountNow:I

    .line 292
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mLastTime:J

    .line 294
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCaptureStartTime:J

    .line 295
    iput-wide v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPictureTakenTime:J

    .line 297
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->reset()V

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v3, v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-eqz v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 303
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 311
    .end local v0    # "param":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v3, v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v4, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v3, v4, :cond_2

    .line 312
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 316
    .restart local v0    # "param":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 317
    .local v1, "paramNew":Landroid/hardware/Camera$Parameters;
    iput-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 319
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 321
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v3, v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v4, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v3, v4, :cond_3

    .line 322
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 323
    .local v2, "zsd":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    sget-object v3, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 324
    const-string v3, "ContinuousShotTool openZSD end"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 326
    .end local v2    # "zsd":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_3
    return-void

    .line 305
    .end local v0    # "param":Landroid/hardware/Camera$Parameters;
    .end local v1    # "paramNew":Landroid/hardware/Camera$Parameters;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v3, v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v4, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v3, v4, :cond_1

    .line 306
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 307
    .restart local v0    # "param":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public restoreFlash()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continuous tool will restore flash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method public setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimEndListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 280
    :cond_0
    return-void
.end method

.method public startMulitiFrameAnim()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mAnimTool:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnimation()V

    .line 148
    :cond_0
    return-void
.end method

.method public stopTakePicture()V
    .locals 3

    .prologue
    .line 331
    const-string v1, "continuous tool will call stopTakePicture"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v1, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v1, v2, :cond_0

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mStopNormal:Z

    .line 339
    :goto_0
    const-string v1, "breakContinuousShot end"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 340
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 337
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->breakContinuousShot(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public uninit()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 344
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mStopNormal:Z

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "bSuc":Z
    iget-object v3, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    check-cast v3, Lcom/lenovo/scg/camera/PhotoController;

    .line 347
    .local v3, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v3}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 348
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-eqz v4, :cond_2

    .line 349
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 350
    .local v2, "param":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 366
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v5, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v4, v5, :cond_0

    .line 369
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitParameters()Landroid/hardware/Camera$Parameters;

    .line 370
    const-string v4, "exit tool,set flash=%s end"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mFlashStatusSave:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_0
    const/4 v0, 0x1

    .line 387
    .end local v2    # "param":Landroid/hardware/Camera$Parameters;
    :goto_1
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->unRegisterContinuousShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    .line 389
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    if-eqz v4, :cond_1

    .line 390
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mCacheTool:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->clearCache()V

    .line 393
    :cond_1
    return v0

    .line 352
    :cond_2
    const-string v4, "continuous tool will exit! "

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    .line 354
    .restart local v2    # "param":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v5, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v4, v5, :cond_4

    .line 355
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 364
    :cond_3
    :goto_2
    const-string v4, "continuous tool exit done! "

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 358
    .local v1, "pExitParam":Landroid/hardware/Camera$Parameters;
    iget v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mOldQuality:I

    if-lez v4, :cond_3

    if-eqz v1, :cond_3

    .line 359
    iget v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mOldQuality:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 360
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4, v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 375
    .end local v1    # "pExitParam":Landroid/hardware/Camera$Parameters;
    .end local v2    # "param":Landroid/hardware/Camera$Parameters;
    :cond_5
    const-string v4, "continuous tool can not exit,beause snap in progress"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-boolean v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    if-eqz v4, :cond_6

    .line 377
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->reset()V

    goto :goto_1

    .line 379
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mPara:Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    iget-object v4, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    sget-object v5, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    if-ne v4, v5, :cond_7

    .line 380
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->reset()V

    goto :goto_1

    .line 382
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mToolController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/ContinuousShotTool;->mParametersCache:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_1
.end method
