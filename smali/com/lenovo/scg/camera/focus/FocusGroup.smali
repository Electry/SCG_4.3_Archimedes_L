.class public Lcom/lenovo/scg/camera/focus/FocusGroup;
.super Ljava/lang/Object;
.source "FocusGroup.java"


# static fields
.field protected static final MSG_AUTOFOCUS_TIMEOUT_PROTECT:I = 0x3

.field protected static final MSG_CHECK_POSTION:I = 0x1

.field protected static final MSG_CHECK_POSTION_DELAY:I = 0x1f4

.field protected static final MSG_ENABLE_SWIPING:I = 0x4

.field protected static final MSG_ENABLE_SWIPING_DELAY:I = 0x12c

.field private static final MSG_REMOVE_CF_INDICATOR:I = 0x2

.field protected static final RESET_TOUCH_FOCUS:I = 0x0

.field protected static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field protected static final STATE_CONTINOUS_FOCUSING:I = 0x5

.field protected static final STATE_CONTINOUS_FOCUSING_SNAP_ON_FINISH:I = 0x6

.field protected static final STATE_FAIL:I = 0x4

.field protected static final STATE_FOCUSING:I = 0x1

.field protected static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field protected static final STATE_IDLE:I = 0x0

.field protected static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusGroupBase"

.field protected static isAeAfLockEnable:Z

.field protected static isAutoExposureLock:Z

.field protected static isCaptureing:Z

.field protected static isNeedSetParametersAfterCapture:Z

.field private static isUpdateParametersAfterFocus:Z

.field private static mEnableCFResult:Z

.field private static mInitialized:Z

.field private static mIsSupportCFResult:Z

.field private static mMeteringAreaLogicAllow:Z

.field protected static mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

.field private static mPreviewMode2FocusMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isPreviewModeChanged:Z

.field protected mAeAfLockListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

.field private mDeviceMeteringAreaSupported:Z

.field private mDisplayOrientation:I

.field protected mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mFocusAreaSupported:Z

.field protected mFocusMode:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mLastMovingTime:J

.field protected mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

.field private mLoastMoving:Z

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field protected mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMirror:Z

.field protected mOverrideFocusMode:Ljava/lang/String;

.field protected mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewHeight:I

.field private mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

.field private mPreviewWidth:I

.field private mShutterMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

.field protected mState:I

.field private mTouchMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mIsSupportCFResult:Z

    .line 110
    sput-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mEnableCFResult:Z

    .line 114
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    .line 117
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isNeedSetParametersAfterCapture:Z

    .line 119
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 120
    sput-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAeAfLockEnable:Z

    .line 123
    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isUpdateParametersAfterFocus:Z

    .line 126
    invoke-static {}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->getInstance()Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    .line 128
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroup$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroup$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode2FocusMode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    .line 79
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 80
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mShutterMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .line 81
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mTouchMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isPreviewModeChanged:Z

    .line 83
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .line 84
    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroup$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/FocusGroup$2;-><init>(Lcom/lenovo/scg/camera/focus/FocusGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroup$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/FocusGroup$3;-><init>(Lcom/lenovo/scg/camera/focus/FocusGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mAeAfLockListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLoastMoving:Z

    .line 1178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLastMovingTime:J

    .line 424
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mAeAfLockListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 425
    return-void
.end method

.method private calculateTapArea(IIFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1361
    iget v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1362
    .local v0, "areaSize":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/lenovo/scg/camera/CameraUtil;->clamp(III)I

    move-result v1

    .line 1363
    .local v1, "left":I
    sub-int v4, p2, v0

    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/lenovo/scg/camera/CameraUtil;->clamp(III)I

    move-result v3

    .line 1365
    .local v3, "top":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1366
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1367
    invoke-static {v2, p4}, Lcom/lenovo/scg/camera/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1368
    return-void
.end method

.method private disableSceneChange()V
    .locals 3

    .prologue
    .line 1030
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 1031
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 1032
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->disableSceneChange()V

    .line 1034
    .end local v0    # "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_0
    return-void
.end method

.method public static isCaptureing()Z
    .locals 3

    .prologue
    .line 428
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptureing() -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    return v0
.end method

.method private isIn1B1MaskView(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 714
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f10028b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 715
    .local v1, "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    if-nez v1, :cond_0

    .line 716
    const-string v2, "FocusGroupBase"

    const-string v3, "isIn1B1MaskView() : maskView == null && return false;"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    .line 719
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInMaskArea(II)Z

    move-result v0

    .line 720
    .local v0, "in":Z
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIn1B1MaskView() : in = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCaptureing(Z)V
    .locals 0
    .param p0, "isCaptureing"    # Z

    .prologue
    .line 982
    sput-boolean p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    .line 983
    return-void
.end method

.method public static setIsNeedSetParametesAfterCapture(Z)V
    .locals 0
    .param p0, "capture"    # Z

    .prologue
    .line 433
    sput-boolean p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isNeedSetParametersAfterCapture:Z

    .line 434
    return-void
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 1310
    iget v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 1311
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1312
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMirror:Z

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mDisplayOrientation:I

    iget v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 1316
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1317
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    .line 1319
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private setMeteringAreaLogicAllow(Z)V
    .locals 3
    .param p1, "support"    # Z

    .prologue
    .line 1127
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteringAreaLogicAllow: support = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    sput-boolean p1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringAreaLogicAllow:Z

    .line 1129
    return-void
.end method


# virtual methods
.method public autoFocus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 770
    const-string v0, "FocusGroupBase"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->autoFocus()V

    .line 773
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->pauseFaceDetection()V

    .line 777
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 779
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 789
    return v5
.end method

.method public cancelAutoFocus()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    const-string v0, "FocusGroupBase"

    const-string v1, "cancelAutoFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->resetTouchFocus()V

    .line 800
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 802
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 803
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 804
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    const-string v0, "FocusGroupBase"

    const-string v1, "cancelAutoFocus() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v2
.end method

.method public capture()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 950
    const-string v0, "FocusGroupBase"

    const-string v1, "capture()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const-string v0, "FocusGroupBase"

    const-string v1, "capture() done ### set isCaptureing AS true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    .line 954
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 955
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    :cond_0
    return v2
.end method

.method public destory()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1400
    const-string v0, "FocusGroupBase"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    sput-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    .line 1402
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1403
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v0, v5, :cond_2

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1405
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1406
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v0, v5, :cond_1

    .line 1407
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    .line 1409
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1410
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 1412
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v0, v4, :cond_5

    .line 1413
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1414
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1415
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v0, v4, :cond_4

    .line 1416
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    .line 1418
    :cond_4
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1419
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 1421
    :cond_5
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 1422
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->unlockAeAf()V

    .line 1423
    return-void
.end method

.method public doSnap()V
    .locals 8

    .prologue
    .line 1037
    const-string v5, "FocusGroupBase"

    const-string v6, "doSnap()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    sget-boolean v5, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    if-nez v5, :cond_1

    .line 1039
    const-string v5, " !mInitialized ,doSnap will return "

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    const/4 v0, 0x0

    .line 1046
    .local v0, "doAutoFocus":Z
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    .line 1047
    .local v1, "mManager":Lcom/lenovo/scg/camera/mode/ModeManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v5, v6, :cond_2

    .line 1048
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 1049
    .local v2, "mcMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    const-string v5, "FocusGroupBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSnap(): mcMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/SmartMode;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/SmartMode;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v5, v6, :cond_5

    .line 1051
    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/PhotoUI;

    check-cast v5, Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/FaceView;->getCenterX()I

    move-result v3

    .line 1052
    .local v3, "x":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/PhotoUI;

    check-cast v5, Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/FaceView;->getCenterY()I

    move-result v4

    .line 1053
    .local v4, "y":I
    const-string v5, "FocusGroupBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSnap() is MODE.PORTRAIT && x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v0, 0x1

    .line 1055
    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onSingleTapUp(II)Z

    .line 1067
    .end local v2    # "mcMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->getInstatnce()Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlashOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1068
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->disableSceneChange()V

    .line 1069
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->autoFocus()Z

    .line 1077
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1078
    :cond_4
    const-string v5, "FocusGroupBase"

    const-string v6, "doSnap!! no need AutoFocus Call, capture!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v5, "doSnap will call capture 1 "

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    goto/16 :goto_0

    .line 1056
    .restart local v2    # "mcMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/SmartMode;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    if-nez v5, :cond_2

    .line 1057
    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->autoFocus()Z

    goto :goto_1

    .line 1081
    .end local v2    # "mcMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_6
    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 1097
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1098
    const-string v5, "FocusGroupBase"

    const-string v6, "doSnap!! mState=STATE_FOCUSING -> STATE_FOCUSING_SNAP_ON_FINISH"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v5, " mState == STATE_FOCUSING,doSnap will return "

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_7
    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 1103
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1104
    const-string v5, "FocusGroupBase"

    const-string v6, "doSnap: mState = STATE_CONTINOUS_FOCUSING -> STATE_CONTINOUS_FOCUSING_SNAP_ON_FINISH"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v5, " mState == STATE_CONTINOUS_FOCUSING, doSnap will return "

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1106
    :cond_8
    iget v5, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-nez v5, :cond_0

    .line 1111
    const-string v5, "FocusGroupBase"

    const-string v6, "doSnap!! mState = STATE_IDLE, mCanNotCapture = "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v5, "doSnap will call capture 2"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    goto/16 :goto_0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 3
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
    .line 495
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusAreas() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusGroupPara()Lcom/lenovo/scg/camera/focus/FoucsGroupPara;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 582
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusMode: return mOverrideFocusMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 617
    :goto_0
    return-object v1

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 587
    const-string v1, "FocusGroupBase"

    const-string v2, "getFocusMode: mParameters == null && return  auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v1, "auto"

    goto :goto_0

    .line 592
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 593
    const-string v1, "FocusGroupBase"

    const-string v2, "getFocusMode: is not mFocusDefault ---> return : auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v1, "auto"

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    .line 603
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 605
    .local v0, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 608
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    const-string v1, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusMode: not support [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v1, "auto"

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    .line 616
    :cond_2
    :goto_2
    const-string v1, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusMode, mFocusMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 595
    .end local v0    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    const-string v1, "FocusGroupBase"

    const-string v2, "getFocusMode:mHandler.hasMessages(MSG_CHECK_POSTION) ---> return : auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v1, "auto"

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 599
    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode2FocusMode:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    .line 600
    const-string v1, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusMode: mPreviewMode2FocusMode.get( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 612
    .restart local v0    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    return v0
.end method

.method public getIsCFResultUsable()Z
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 3

    .prologue
    .line 500
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeteringAreas() : mMeteringAreaLogicAllow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringAreaLogicAllow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 511
    :goto_0
    return-object v0

    .line 508
    :cond_0
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringAreaLogicAllow:Z

    if-nez v0, :cond_1

    .line 509
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public getPreviewMode()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    return-object v0
.end method

.method public getShutterMode()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mShutterMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    return-object v0
.end method

.method public getTouchMode()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mTouchMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    return-object v0
.end method

.method public handOverParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 574
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 575
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    .line 576
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mDeviceMeteringAreaSupported:Z

    goto :goto_0
.end method

.method protected initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 1331
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 1336
    return-void
.end method

.method protected initializeMeteringAreas(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1340
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 1342
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    new-instance v4, Landroid/hardware/Camera$Area;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_0
    const v1, 0x40933333    # 4.6f

    .line 1351
    .local v1, "setRate":F
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->isAeAreaDebugtDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1352
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getAreaSize()I

    move-result v2

    .line 1353
    .local v2, "size":I
    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1354
    .local v0, "rate":F
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v1, v0, v3

    .line 1356
    .end local v0    # "rate":F
    .end local v2    # "size":I
    :cond_1
    const-string v3, "FocusGroupBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeMeteringAreas(): setRate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Area;

    iget-object v3, v3, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 1358
    return-void
.end method

.method public isAutoExposureLock()Z
    .locals 1

    .prologue
    .line 515
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewModeChanged()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isPreviewModeChanged:Z

    return v0
.end method

.method public isTouchFocusing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 531
    iget v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMeteringLogicEnable()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 536
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 538
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isShowContinueFocusResult()Z

    move-result v3

    sput-boolean v3, Lcom/lenovo/scg/camera/focus/FocusGroup;->mIsSupportCFResult:Z

    .line 541
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    if-nez v3, :cond_0

    .line 542
    const-string v3, "FocusGroupBase"

    const-string v4, "loadIsSupportMeteringArea : frontCamera & not FS setMeteringAreaLogicAllow(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMeteringAreaLogicAllow(Z)V

    .line 566
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    if-nez v3, :cond_1

    .line 553
    const-string v3, "FocusGroupBase"

    const-string v4, "loadIsSupportMeteringArea : functionType is AUTO:  setMeteringAreaLogicAllow(false)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMeteringAreaLogicAllow(Z)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "defDiance":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_diance_liandong"

    invoke-virtual {v3, v4, v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "value":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 563
    .local v1, "meteringAreaCanSupported":Z
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMeteringAreaLogicAllow(Z)V

    .line 564
    const-string v3, "FocusGroupBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIsSupportMeteringArea: setMeteringAreaLogicAllow( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAutoFocus(Z)Z
    .locals 7
    .param p1, "focused"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 813
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocus: focused = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocus: mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->clear()V

    .line 818
    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->isUpdateParametersAfterFocus:Z

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocus: isUpdateParametersAfterFocus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sput-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isUpdateParametersAfterFocus:Z

    .line 821
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 825
    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    if-eqz v2, :cond_2

    .line 826
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onAutoFocus(): isAutoExposureLock && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz p1, :cond_1

    .line 828
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 897
    :goto_0
    return v0

    .line 830
    :cond_1
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    goto :goto_0

    .line 835
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 839
    if-eqz p1, :cond_4

    .line 840
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 845
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 847
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    :cond_3
    :goto_2
    move v0, v1

    .line 897
    goto :goto_0

    .line 842
    :cond_4
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    goto :goto_1

    .line 848
    :cond_5
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 850
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 852
    if-eqz p1, :cond_6

    .line 853
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 858
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 860
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    goto :goto_2

    .line 855
    :cond_6
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    goto :goto_3

    .line 861
    :cond_7
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v2, v0, :cond_9

    .line 866
    if-eqz p1, :cond_8

    .line 867
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 869
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->startPosChangeDet()Z

    .line 876
    :goto_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    goto :goto_2

    .line 871
    :cond_8
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 873
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 878
    :cond_9
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    .line 881
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 884
    if-eqz p1, :cond_a

    .line 885
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 890
    :goto_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    goto :goto_2

    .line 887
    :cond_a
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    goto :goto_5

    .line 891
    :cond_b
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-nez v0, :cond_3

    .line 894
    const-string v0, "FocusGroupBase"

    const-string/jumbo v2, "onAutoFocus, mState = STATE_IDLE, mIsCFSuccess = "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onAutoFocusMoving(Z)V
    .locals 10
    .param p1, "moving"    # Z

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 1182
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocusMoving, moving="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--------------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    if-nez v2, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->hasFaces()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0

    .line 1197
    :cond_1
    if-eqz p1, :cond_7

    .line 1200
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocusMoving: CFResultUsable: mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v2, v9, :cond_2

    .line 1203
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocusMoving: mState == STATE_CONTINOUS_FOCUSING_SNAP_ON_FINISH capture() && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    goto :goto_0

    .line 1206
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v2, v7, :cond_3

    .line 1207
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocusMoving: mState == STATE_CONTINOUS_FOCUSING && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1211
    .local v0, "time":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLastMovingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x44c

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 1212
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocusMoving: time smiler && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLastMovingTime:J

    .line 1243
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1244
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocusMoving: hasMessages(MSG_AUTOFOCUS_TIMEOUT_PROTECT) && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1247
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1248
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onAutoFocusMoving: hasMessages(MSG_REMOVE_CF_INDICATOR) && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1252
    :cond_6
    iput v7, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    .line 1257
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->pauseFaceDetection()V

    .line 1258
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 1260
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1278
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->startAutoFocus()V

    .line 1306
    .end local v0    # "time":J
    :goto_1
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLoastMoving:Z

    goto/16 :goto_0

    .line 1283
    :cond_7
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mLoastMoving:Z

    if-eqz v2, :cond_8

    .line 1284
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1285
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v2, v9, :cond_9

    .line 1287
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1288
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1290
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 1292
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->capture()Z

    .line 1302
    :cond_8
    :goto_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->endAutoFocus()V

    .line 1303
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->onAutoFoucesDone()V

    goto :goto_1

    .line 1293
    :cond_9
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-ne v2, v7, :cond_8

    .line 1295
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1296
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1297
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_2
.end method

.method public onFullScreenChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1377
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFullScreenChange() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1380
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->cancelAutoFocus()Z

    .line 1396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 1397
    return-void

    .line 1381
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1383
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1384
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1385
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0

    .line 1386
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1387
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->cancelAutoFocus()Z

    .line 1388
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1391
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 1392
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1393
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 1394
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 752
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->uninit()V

    .line 755
    sget-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    if-eqz v1, :cond_1

    .line 756
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 757
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->NO_LOCK:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 758
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 759
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 760
    check-cast v0, Lcom/lenovo/scg/camera/ActivityBase;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 763
    :cond_0
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 764
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 765
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 767
    :cond_1
    return-void
.end method

.method public onPictrueTakenDone()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 962
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPictureTakenDone(): mFocusArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onPictureTakenDone(): ### set isCaptureing AS false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sput-boolean v3, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing:Z

    .line 966
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isNeedSetParametersAfterCapture:Z

    if-eqz v0, :cond_0

    .line 967
    sput-boolean v3, Lcom/lenovo/scg/camera/focus/FocusGroup;->isNeedSetParametersAfterCapture:Z

    .line 968
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->startPosChangeDet()Z

    .line 977
    :goto_0
    return v3

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->cancelAutoFocus()Z

    goto :goto_0
.end method

.method protected onPosChanged()V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 943
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    .line 743
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "onPreviewStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 748
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->resetTouchFocus()V

    .line 749
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 628
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSingleTapUp: x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v2, "FocusGroupBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSingleTapUp, mInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-boolean v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    if-nez v2, :cond_0

    .line 632
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : !mInitialized  && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return v0

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isIn1B1MaskView(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : isIn1B1MaskView  && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 642
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : mState == STATE_CONTINOUS_FOCUSING_SNAP_ON_FINISH && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v2, v3, :cond_4

    .line 648
    :cond_3
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : AEAFLOCKSTATE.AEAF_LOCKED && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->unlockAeAf()V

    goto :goto_0

    .line 654
    :cond_4
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-eq v2, v0, :cond_5

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 655
    :cond_5
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : mState == STATE_FOCUSING || mState == STATE_FOCUSING_SNAP_ON_FINISH && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_6
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 667
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onSingleTapUp() : STATE_CONTINOUS_FOCUSING  && mListener.cancelAutoFocus();"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 669
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 673
    :cond_7
    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    if-nez v2, :cond_9

    .line 674
    :cond_8
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp() : preview size is 0 && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_9
    const-string v0, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSingleTapUp, mFocusAreaSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    if-eqz v0, :cond_a

    .line 681
    const-string v0, "FocusGroupBase"

    const-string/jumbo v2, "onSingleTapUp: initializeFocusAreas"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeFocusAreas(II)V

    .line 686
    :cond_a
    const-string v0, "FocusGroupBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSingleTapUp, mDeviceMeteringAreaSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mDeviceMeteringAreaSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMeteringAreaLogicAllow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringAreaLogicAllow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mDeviceMeteringAreaSupported:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringAreaLogicAllow:Z

    if-eqz v0, :cond_b

    .line 688
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->show(II)V

    .line 689
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusGroup;->initializeMeteringAreas(II)V

    .line 693
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 700
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusAreaSupported:Z

    if-eqz v0, :cond_c

    .line 702
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->autoFocus()Z

    :goto_1
    move v0, v1

    .line 710
    goto/16 :goto_0

    .line 704
    :cond_c
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 1170
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "removeMessages: RESET_TOUCH_FOCUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1172
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "resetTouchFocus(),"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    if-nez v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "resetTouchFocus, mUI.clearFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "resetTouchFocus(): set mFocusArea AS null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 738
    :cond_1
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAfLockEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 420
    sput-boolean p1, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAeAfLockEnable:Z

    .line 421
    return-void
.end method

.method public setCFResultEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1165
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCFResultEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    sput-boolean p1, Lcom/lenovo/scg/camera/focus/FocusGroup;->mEnableCFResult:Z

    .line 1167
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mDisplayOrientation:I

    .line 487
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMatrix()V

    .line 488
    return-void
.end method

.method public setFocusGroupPara(Lcom/lenovo/scg/camera/focus/FoucsGroupPara;)V
    .locals 0
    .param p1, "para"    # Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    .line 474
    return-void
.end method

.method public setIsPreviewModeChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->isPreviewModeChanged:Z

    .line 454
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    .line 947
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMirror:Z

    .line 482
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMatrix()V

    .line 483
    return-void
.end method

.method public setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V
    .locals 3
    .param p1, "preViewMode"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .prologue
    .line 441
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewMode --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    if-eq v0, p1, :cond_0

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsPreviewModeChanged(Z)V

    .line 444
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    .line 446
    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 1132
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 1134
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewWidth:I

    .line 1135
    iput p2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPreviewHeight:I

    .line 1136
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setMatrix()V

    .line 1138
    :cond_1
    return-void
.end method

.method public setShutterMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;)V
    .locals 0
    .param p1, "mShutterMode"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mShutterMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    .line 462
    return-void
.end method

.method protected setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1322
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iput p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    .line 1325
    return-void
.end method

.method public setTouchMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;)V
    .locals 0
    .param p1, "mTouchMode"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mTouchMode:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .line 470
    return-void
.end method

.method protected startPosChangeDet()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 907
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onTouchFocusCompletes()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->isInited()Z

    move-result v2

    if-nez v2, :cond_0

    .line 909
    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->init(Landroid/content/Context;)V

    .line 912
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 913
    const-string v2, "FocusGroupBase"

    const-string/jumbo v3, "onTouchFocusCompletes(): mPosChangeDet is supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 915
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "startPosChangeDet() : position change detection start yet && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    :goto_0
    return v0

    .line 919
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPosChangeDet:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mark()V

    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 921
    goto :goto_0

    .line 923
    :cond_3
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "onTouchFocusCompletes(): mPosChangeDet is supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public unlockAeAf()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1426
    const-string v1, "FocusGroupBase"

    const-string/jumbo v2, "unlockAeAf()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v1, v2, :cond_2

    .line 1431
    :cond_0
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mOverrideFocusMode:Ljava/lang/String;

    .line 1432
    sput-boolean v4, Lcom/lenovo/scg/camera/focus/FocusGroup;->isAutoExposureLock:Z

    .line 1433
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->NO_LOCK:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V

    .line 1434
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1435
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v1, :cond_1

    .line 1436
    check-cast v0, Lcom/lenovo/scg/camera/ActivityBase;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1438
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 1439
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 1440
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1441
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    .line 1442
    iput-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 1443
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mListener:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;->setFocusParametersOnly()V

    .line 1444
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setState(I)V

    .line 1447
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 1450
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setPinchEnable(Z)V

    .line 1452
    :cond_2
    return-void
.end method

.method public updateFocusUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 986
    sget-boolean v0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mInitialized:Z

    if-nez v0, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "updateFocusUI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-nez v0, :cond_3

    .line 991
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusUI STATE_IDLE : mFocusArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusUI STATE_IDLE : mMeteringArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 994
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "updateFocusUI(): clearFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0

    .line 1000
    :cond_2
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "updateFocusUI(): onMeteringStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mMeteringArea:Ljava/util/List;

    .line 1002
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onMeteringStarted()V

    goto :goto_0

    .line 1004
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1005
    :cond_4
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusUI, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUI.onFocusStarted(true)!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->startFocusAnimation()V

    .line 1008
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusStarted(Z)V

    goto/16 :goto_0

    .line 1009
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 1010
    :cond_6
    const-string v0, "FocusGroupBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusUI, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUI.onFocusStarted(false)!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->startFocusAnimation()V

    .line 1012
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusStarted(Z)V

    goto/16 :goto_0

    .line 1019
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1020
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "updateFocusUI(): onFocusSucceeded()2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto/16 :goto_0

    .line 1022
    :cond_8
    iget v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1023
    const-string v0, "FocusGroupBase"

    const-string/jumbo v1, "updateFocusUI(): onFocusFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->onFocusFailed(Z)V

    goto/16 :goto_0
.end method
