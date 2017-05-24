.class public Lcom/lenovo/scg/camera/mode/NightMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "NightMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;
    }
.end annotation


# static fields
.field public static DEVELOP_SUPPORT_TILIANG:Z = false

.field private static final LOWLIT_FLASH_MODE:Ljava/lang/String; = "off"

.field private static final PREVIEW_BRIGHTNESS_DEFAULT_VALUE:I = 0x32

.field private static final PREVIEW_DE_NOISE_DEFAULT_VALUE:I = 0x2


# instance fields
.field private ISOParams:[Ljava/lang/String;

.field private ShutterParams:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private lowlitParams:[[I

.field mFirstEnterAuto:Z

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

.field private mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

.field private mNightPreviewParmaHandler:Landroid/os/Handler;

.field private mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

.field private mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

.field private mRotation:I

.field private mSavedContrast:Ljava/lang/String;

.field private mSavedExposure:I

.field private mSavedFM:Ljava/lang/String;

.field private mSavedISO:Ljava/lang/String;

.field private mSavedSaturation:Ljava/lang/String;

.field private mSavedSharp:Ljava/lang/String;

.field private mSceneIndex:I

.field private mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

.field private mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 42
    const-string v0, "SuperNightMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->TAG:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    .line 52
    iput v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSceneIndex:I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ISO800"

    aput-object v1, v0, v3

    const-string v1, "ISO1600"

    aput-object v1, v0, v5

    const-string v1, "ISO400"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0.1"

    aput-object v1, v0, v3

    const-string v1, "0.05"

    aput-object v1, v0, v5

    const-string v1, "0.033333335"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "0.083333335"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0.1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ShutterParams:[Ljava/lang/String;

    .line 114
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFirstEnterAuto:Z

    .line 450
    new-instance v0, Lcom/lenovo/scg/camera/mode/NightMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/NightMode$1;-><init>(Lcom/lenovo/scg/camera/mode/NightMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    .line 112
    return-void

    .line 83
    :array_0
    .array-data 4
        0x46
        0xc
        0x5
        0x5
        0x2
        0x0
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x3c
        0xc
        0x5
        0x5
        0x8
        0x0
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x3c
        0xc
        0x5
        0x5
        0x5
        0x0
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x3c
        0xc
        0x5
        0x5
        0x8
        0x0
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x46
        0xc
        0x5
        0x5
        0x2
        0x0
        0x5
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/NightMode;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/NightMode;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/NightMode;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ShutterParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/NightMode;)Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/NightMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->openFM()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/NightMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->restoreFM()V

    return-void
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/mode/NightMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSceneIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/NightMode;)Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    return-object v0
.end method

.method private getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    const v5, 0x7f0902a7

    const v3, 0x7f0902a8

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_0

    .line 602
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 603
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 604
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 616
    :goto_0
    return-object v0

    .line 609
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 613
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 614
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private hideSuperNightModeBoard()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "SuperNightMode"

    const-string v1, "kbg374, hideSuperNightModeBoard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/NightMode;->removeModeRootView(Landroid/view/View;)V

    .line 448
    :cond_0
    return-void
.end method

.method private hideSuperNightModeUI()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v0, "SuperNightMode"

    const-string v1, "kbg374, hideSuperNightModeUI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/NightMode;->removeModeRootView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private openFM()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_diance_liandong"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    return-void
.end method

.method private restoreFM()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_diance_liandong"

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedFM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method private restoreParams()V
    .locals 3

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->restoreFM()V

    .line 495
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 499
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedISO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedSharp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedSaturation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v1, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedContrast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedExposure:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 504
    const-string v1, "force-aec-enable"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "aec-force-exp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 508
    return-void
.end method

.method private saveParams()V
    .locals 4

    .prologue
    .line 479
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFlashStatusSave:Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "defDiance":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_diance_liandong"

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedFM:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 485
    .local v1, "param":Landroid/hardware/Camera$Parameters;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedISO:Ljava/lang/String;

    .line 486
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedSharp:Ljava/lang/String;

    .line 487
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedSaturation:Ljava/lang/String;

    .line 488
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedContrast:Ljava/lang/String;

    .line 489
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSavedExposure:I

    .line 490
    return-void
.end method

.method private setNormalLowlitParamsToLescf()V
    .locals 13

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v12, 0x4

    const/4 v9, 0x0

    .line 273
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "setNormalLowlitParamsToLescf"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 275
    .local v10, "param":Landroid/hardware/Camera$Parameters;
    if-nez v10, :cond_0

    .line 276
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "param == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v11

    .line 282
    .local v11, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    invoke-virtual {v11, v10}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 283
    invoke-virtual {v11, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 284
    invoke-virtual {v11, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 286
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    aget v1, v0, v9

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    aget v2, v0, v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    aget v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    aget v4, v0, v4

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    aget v5, v0, v12

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    const/4 v6, 0x5

    aget v6, v0, v6

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v9

    const/4 v7, 0x6

    aget v7, v0, v7

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;

    aget-object v8, v0, v9

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ShutterParams:[Ljava/lang/String;

    aget-object v9, v0, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/scg/camera/mode/NightMode;->setTakePicParam(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    aget v1, v0, v9

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    aget v2, v0, v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    aget v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    aget v4, v0, v4

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    aget v5, v0, v12

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    const/4 v6, 0x5

    aget v6, v0, v6

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v0, v0, v12

    const/4 v7, 0x6

    aget v7, v0, v7

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;

    aget-object v8, v0, v12

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ShutterParams:[Ljava/lang/String;

    aget-object v9, v0, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/scg/camera/mode/NightMode;->setTakePicParam(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showSuperNightModeBoard()V
    .locals 7

    .prologue
    .line 423
    const-string v2, "SuperNightMode"

    const-string v3, "kbg374, showSuperNightModeBoard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v2, Lcom/lenovo/scg/common/ui/ScrollLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mRotation:I

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/mode/NightMode;->getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mRotation:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/common/ui/ScrollLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "bitmapResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v2, 0x7f020204

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const v2, 0x7f020205

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const v2, 0x7f020206

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const v2, 0x7f020207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v1, "stringResourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v2, 0x7f0f00c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const v2, 0x7f0f00c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const v2, 0x7f0f00c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    const v2, 0x7f0f00c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 440
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->setOnViewClickListener(Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;)V

    .line 441
    return-void
.end method

.method private showSuperNightModeUI()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v10, 0x0

    .line 398
    sget-boolean v0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "SuperNightMode"

    const-string v1, "kbg374, showSuperNightModeUI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .line 403
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {p0, v0, v11}, Lcom/lenovo/scg/camera/mode/NightMode;->addModeRootView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setMode(Lcom/lenovo/scg/camera/mode/NightMode;)V

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setController(Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;)V

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->initSeekBar()V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v1, v1, v10

    aget v1, v1, v10

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v2, v2, v10

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v3, v3, v10

    aget v3, v3, v9

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v4, v4, v10

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v5, v5, v10

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v6, v6, v10

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/NightMode;->lowlitParams:[[I

    aget-object v7, v7, v10

    const/4 v8, 0x6

    aget v7, v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/NightMode;->ISOParams:[Ljava/lang/String;

    aget-object v8, v8, v10

    const/16 v10, 0x32

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setSeekBar(IIIIIIILjava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 361
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 370
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 347
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 197
    const-string v3, "SuperNightMode"

    const-string v4, "enter()!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    if-nez v3, :cond_0

    .line 200
    const-string v3, "SuperNightMode"

    const-string v4, "enter, mController == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    .line 204
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 205
    .local v1, "param":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 206
    const-string v3, "SuperNightMode"

    const-string/jumbo v4, "param == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    if-eqz v3, :cond_2

    .line 211
    new-instance v3, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 212
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->start()V

    .line 213
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->initNightPreviewEng()V

    .line 216
    const/4 v3, 0x2

    const/16 v4, 0x32

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/camera/mode/NightMode;->setPreviewParam(II)V

    .line 218
    new-instance v3, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;-><init>(Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    .line 219
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v3

    if-nez v3, :cond_3

    .line 222
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 223
    .local v0, "exclude":[I
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3, v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->clearUIScreen([I)V

    .line 226
    .end local v0    # "exclude":[I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v2

    .line 227
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    new-instance v3, Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;-><init>(Lcom/lenovo/scg/camera/mode/NightMode;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;)V

    .line 229
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mIsSupportZSD:Z

    .line 230
    const-string v3, "SuperNightMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsSupportZSD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mIsSupportZSD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->saveParams()V

    .line 234
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 236
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    const-string v3, "SuperNightMode"

    const-string/jumbo v4, "set flash"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 240
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFirstEnterAuto:Z

    .line 246
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v3

    if-nez v3, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->setNormalLowlitParamsToLescf()V

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v3

    if-nez v3, :cond_6

    .line 251
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->showSuperNightModeUI()V

    .line 252
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->showSuperNightModeBoard()V

    .line 253
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/mode/NightMode;->setOrientation(I)V

    .line 255
    :cond_6
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isQualcommCPU()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 256
    const-string v3, "SuperNightMode"

    const-string/jumbo v4, "zsl-enhancement true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string/jumbo v4, "zsl-enhancement"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_7
    const-string v3, "enter NightMode"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_8
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitSmartModeParameters()V

    goto :goto_1

    .line 222
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    if-nez v2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 300
    const-string v2, "SuperNightMode"

    const-string v3, "exit()!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v2, v3, :cond_2

    sget-boolean v2, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 305
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->reset()V

    .line 306
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->releaseNightPreviewEng()V

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->hideSuperNightModeUI()V

    .line 312
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->hideSuperNightModeBoard()V

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v2, v3, :cond_4

    sget-boolean v2, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    if-eqz v2, :cond_4

    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 319
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    .line 322
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 324
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v1

    .line 325
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;)V

    .line 327
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->restoreParams()V

    .line 329
    const-string v2, "exit NightMode"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isQualcommCPU()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    const-string v2, "SuperNightMode"

    const-string/jumbo v3, "zsl-enhancement false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string/jumbo v3, "zsl-enhancement"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 335
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 336
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->reset()V

    goto/16 :goto_0

    .line 340
    :cond_6
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->exit()V

    .line 342
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    goto/16 :goto_0
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v0

    .line 267
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mIsSupportZSD:Z

    .line 269
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public initNightPreviewEng()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 380
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 381
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 382
    .local v1, "s":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 383
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method public isNeedOrientation()Z
    .locals 3

    .prologue
    .line 569
    const-string v0, "SuperNightMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedOrientation, mIsSupportZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mIsSupportZSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mIsSupportZSD:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportSCFCaptureHasOrientation()Z

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needFlash()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 515
    iget v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSceneIndex:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSceneIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->exit()V

    .line 356
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeforeTakePicture()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->onBeforeTakePicture()V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->onShutterClick()V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "onPause()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->exit()V

    goto :goto_0
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "SuperNightMode"

    const-string v1, "kbg374, onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 565
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "onResume()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/NightMode;->enter(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onShutterButtonClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFirstEnterAuto:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->setNormalLowlitParamsToLescf()V

    .line 120
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mFirstEnterAuto:Z

    .line 122
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return v4

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 158
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "pause()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setVisibility(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    goto :goto_0
.end method

.method public releaseNightPreviewEng()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 389
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    const-string v1, "SuperNightMode"

    const-string/jumbo v2, "resume()!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/NightMode;->isSmart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSuperNightLayout:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->setVisibility(I)V

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewCallback:Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 191
    :cond_3
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 192
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->clearUIScreen([I)V

    goto :goto_0

    .line 191
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->setOrientation(I)V

    .line 593
    iput p1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mRotation:I

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mSl:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/NightMode;->getScrollLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->updateOrientation(ILandroid/view/ViewGroup$LayoutParams;)V

    .line 597
    :cond_0
    return-void
.end method

.method public setPreviewParam(II)V
    .locals 2
    .param p1, "previewDeNoise"    # I
    .param p2, "previewBrightness"    # I

    .prologue
    .line 521
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 522
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 523
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 524
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 525
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 526
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mNightPreviewParmaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTakePicParam(IIIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "sharpness"    # I
    .param p3, "saturation"    # I
    .param p4, "contrast"    # I
    .param p5, "denoise"    # I
    .param p6, "exposure"    # I
    .param p7, "picNum"    # I
    .param p8, "isoValue"    # Ljava/lang/String;
    .param p9, "shutter"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v1

    .line 533
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    if-nez v1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 539
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    invoke-virtual {v0, v2, p8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 541
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_SATURATIONKEY:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 542
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_CONTRAST:Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 543
    invoke-virtual {v0, p6}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 544
    const-string v2, "auto"

    invoke-virtual {p9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    const-string v2, "force-aec-enable"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "aec-force-exp"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/NightMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 554
    invoke-virtual {v1, v0, p1, p5, p7}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setExParam(Landroid/hardware/Camera$Parameters;III)Landroid/hardware/Camera$Parameters;

    goto :goto_0

    .line 548
    :cond_1
    const-string v2, "force-aec-enable"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v2, "aec-force-exp"

    invoke-virtual {v0, v2, p9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 351
    return-void
.end method
