.class public Lcom/lenovo/scg/camera/mode/HDRMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "HDRMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;
    }
.end annotation


# static fields
.field private static final HDR_FLASH_MODE:Ljava/lang/String; = "off"

.field private static final TAG:Ljava/lang/String; = "HDRMode"

.field private static final mHdrAlgorithm:I = 0x1

.field private static final mNormalHdrBrightnessLevel:I


# instance fields
.field private mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

.field private mArtHdrParams:[[I

.field private mHdrEVLevel:Ljava/lang/String;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

.field private mNormalHdrToneLevel:I

.field private mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

.field private mRotation:I

.field private mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    .line 51
    const-string v0, "10,60"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mHdrEVLevel:Ljava/lang/String;

    .line 54
    const/16 v0, 0x19

    iput v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mNormalHdrToneLevel:I

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    .line 388
    new-instance v0, Lcom/lenovo/scg/camera/mode/HDRMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/HDRMode$1;-><init>(Lcom/lenovo/scg/camera/mode/HDRMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    .line 78
    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x41
        0x0
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x23
        0xf
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x41
        0x0
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x37
        0x0
        0x4
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/HDRMode;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/HDRMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/HDRMode;III)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/HDRMode;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/mode/HDRMode;->setArtHDRParam(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/HDRMode;)Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/HDRMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    return-object v0
.end method

.method private exitMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    if-nez v2, :cond_0

    .line 339
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v2, "HDRMode"

    const-string v3, "HDR exitMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v2, v3, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->hideArtHdrModeUI()V

    .line 322
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->hideArtHdrBoard()V

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v1

    .line 326
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;)V

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 331
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 333
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->reset()V

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->exit()V

    .line 338
    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    goto :goto_0
.end method

.method private getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    const v5, 0x7f0902a7

    const v3, 0x7f0902a8

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_0

    .line 473
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 474
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 475
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 487
    :goto_0
    return-object v0

    .line 480
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 484
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private hideArtHdrBoard()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->removeModeRootView(Landroid/view/View;)V

    .line 386
    :cond_0
    return-void
.end method

.method private hideArtHdrModeUI()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->removeModeRootView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setArtHDRParam(III)V
    .locals 3
    .param p1, "tone"    # I
    .param p2, "brightness"    # I
    .param p3, "saturation"    # I

    .prologue
    .line 415
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v1

    .line 416
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    if-nez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setSaturation(I)V

    .line 420
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitParameters()Landroid/hardware/Camera$Parameters;

    .line 422
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 423
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0, p1, p2}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->changeExParam(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method private setNormalHDRParamsToLescf()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 286
    const-string v3, "HDRMode"

    const-string/jumbo v4, "setNormalHDRParamsToLescf"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "developer_setting_hdr_dump_key"

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 289
    .local v0, "hdrDump":Z
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v2

    .line 290
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 292
    .local v1, "param":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mHdrEVLevel:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrEVLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 293
    iget v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mNormalHdrToneLevel:I

    invoke-virtual {v2, v1, v3, v5}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrToneBrightness(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrAlgorithm(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;

    .line 295
    invoke-virtual {v2, v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrDump(Landroid/hardware/Camera$Parameters;Z)Landroid/hardware/Camera$Parameters;

    .line 297
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 299
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 300
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 302
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    if-eqz v3, :cond_0

    .line 303
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->changeHdrDump(Landroid/hardware/Camera$Parameters;Z)V

    .line 305
    :cond_0
    return-void
.end method

.method private showArtHdrBoard()V
    .locals 7

    .prologue
    .line 362
    const-string v2, "HDRMode"

    const-string v3, "kbg374, showArtHdrBoard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v2, Lcom/lenovo/scg/common/ui/ScrollLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mRotation:I

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/mode/HDRMode;->getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mRotation:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/common/ui/ScrollLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "bitmapResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v2, 0x7f0200b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const v2, 0x7f0200b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const v2, 0x7f0200b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const v2, 0x7f0200ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v1, "stringResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v2, 0x7f0f00be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const v2, 0x7f0f00bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const v2, 0x7f0f00c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const v2, 0x7f0f00c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 379
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->setOnViewClickListener(Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;)V

    .line 380
    return-void
.end method

.method private showArtHdrModeUI()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 343
    sget-boolean v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .line 347
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->addModeRootView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->setController(Lcom/lenovo/scg/camera/mode/HDRMode;)V

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v3, v3, v5

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->initSeekBar(III)V

    goto :goto_0
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 164
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public changeHdrDump(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "on"    # Z

    .prologue
    .line 273
    const-string v1, "HDRMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeHdrDump:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " zsl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    if-eqz v0, :cond_3

    .line 278
    const-string/jumbo v1, "zsl-hdr-dump"

    if-eqz p2, :cond_2

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 283
    :goto_2
    return-void

    .line 273
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 278
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->changeExHdrDump(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_2
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 407
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 191
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    if-nez v4, :cond_1

    .line 192
    const-string v4, "HDRMode"

    const-string v5, "kbg374, mController == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v4, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    .line 197
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mFlashStatusSave:Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "developer_setting_hdr_dump_key"

    invoke-virtual {v4, v5, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 201
    .local v1, "hdrDump":Z
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v3

    .line 203
    .local v3, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v4, v5, :cond_4

    .line 204
    const-string v4, "HDRMode"

    const-string v5, "enter art hdr mode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v4, 0x3

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 207
    .local v0, "exclude":[I
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4, v0}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->clearUIScreen([I)V

    .line 209
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 212
    .local v2, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->getSupportZSD()Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    .line 213
    const-string v4, "HDRMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsSupportZSD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v5, v5, v7

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setSaturation(I)V

    .line 218
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitSmartModeParameters()V

    .line 220
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mHdrEVLevel:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrEVLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 221
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrParams:[[I

    aget-object v5, v5, v7

    aget v5, v5, v8

    invoke-virtual {v3, v2, v4, v5}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrToneBrightness(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    .line 222
    invoke-virtual {v3, v2, v8}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrAlgorithm(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;

    .line 223
    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrDump(Landroid/hardware/Camera$Parameters;Z)Landroid/hardware/Camera$Parameters;

    .line 225
    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 227
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 228
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 230
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    if-eqz v4, :cond_2

    .line 231
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/lenovo/scg/camera/mode/HDRMode;->changeHdrDump(Landroid/hardware/Camera$Parameters;Z)V

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->showArtHdrModeUI()V

    .line 235
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->showArtHdrBoard()V

    .line 236
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getOrientation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/mode/HDRMode;->setOrientation(I)V

    .line 259
    .end local v0    # "exclude":[I
    .end local v2    # "param":Landroid/hardware/Camera$Parameters;
    :cond_3
    :goto_1
    new-instance v4, Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;-><init>(Lcom/lenovo/scg/camera/mode/HDRMode;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v4, v5, :cond_5

    .line 238
    const-string v4, "HDRMode"

    const-string v5, "enter normal hdr mode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->getSupportZSD()Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    .line 241
    const-string v4, "HDRMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsSupportZSD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->setNormalHDRParamsToLescf()V

    goto :goto_1

    .line 247
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v4, v5, :cond_3

    .line 248
    const-string v4, "HDRMode"

    const-string v5, "enter smart hdr mode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->getSupportZSD()Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    .line 251
    const-string v4, "HDRMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsSupportZSD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    const-string v4, "HDRMode"

    const-string/jumbo v5, "set flash"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 311
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 312
    const-string v0, "exit hdr mode"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->exitMode()V

    .line 314
    return-void
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "HDRMode"

    const-string v1, "getLeSCFBaseModeStub:mModeController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v0

    goto :goto_0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v0

    .line 267
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mIsSupportZSD:Z

    .line 269
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->isSmart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->exit()V

    .line 437
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 439
    :cond_0
    return v0
.end method

.method public onBeforeTakePicture()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->onBeforeTakePicture()V

    .line 88
    const-string v1, "HDRMode"

    const-string/jumbo v2, "onBeforeTakePicture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->onShutterClick()V

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->isSmart()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->setNormalHDRParamsToLescf()V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDRMode.onBeforeTakePicture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "HDRMode"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "exit art hdr mode"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->exitMode()V

    .line 111
    return-void
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "HDRMode"

    const-string v1, "kbg374, onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 446
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "HDRMode"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/HDRMode;->enter(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 130
    const-string v0, "HDRMode"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->setVisibility(I)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string v1, "HDRMode"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/HDRMode;->isSmart()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mArtHdrLayout:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->setVisibility(I)V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_3
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 158
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/HDRModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/HDRModeController;->clearUIScreen([I)V

    goto :goto_0

    .line 157
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public setDevelopParam(III)V
    .locals 0
    .param p1, "tone"    # I
    .param p2, "brightness"    # I
    .param p3, "saturation"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/mode/HDRMode;->setArtHDRParam(III)V

    .line 431
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->setOrientation(I)V

    .line 464
    iput p1, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mRotation:I

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/HDRMode;->getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateOrientation(ILandroid/view/ViewGroup$LayoutParams;)V

    .line 468
    :cond_0
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 411
    return-void
.end method
