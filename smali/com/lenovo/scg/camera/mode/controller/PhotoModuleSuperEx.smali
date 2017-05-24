.class public Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
.super Lcom/lenovo/scg/camera/PhotoModule;
.source "PhotoModuleSuperEx.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
.implements Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/QrCodeModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/VivModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/RewindModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/Panorama360ModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/PIPModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/SpeechModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/LongExposureController;
.implements Lcom/lenovo/scg/camera/mode/controller/ArtHDRModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/GuidModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/HDRModeController;
.implements Lcom/lenovo/scg/camera/cameramode/CameraModeController;
.implements Lcom/lenovo/scg/camera/setting/CameraSettingController;
.implements Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
.implements Lcom/lenovo/scg/camera/shortcut/ShortcutController;
.implements Lcom/lenovo/scg/camera/mode/controller/ZSDController;
.implements Lcom/lenovo/scg/camera/mode/controller/ContinuousShotToolController;
.implements Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;
.implements Lcom/lenovo/scg/camera/mode/controller/LandscapeModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/ImageCaptureModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;
.implements Lcom/lenovo/scg/camera/mode/controller/RealNightModeController;
.implements Lcom/lenovo/scg/camera/mode/controller/DynamicNightModeController;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;,
        Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;
    }
.end annotation


# static fields
.field private static final CHANGE_FUNCTION_DONE:I = 0x5

.field private static final CHANG_FUNCTION_AFTER_ANIM:I = 0x3

.field private static final RESET_CHANGE_FUNCTION_FLAG:I = 0x4

.field private static final START_CAMERA_MODE_MASK_ANIM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoModuleSuperEx"

.field private static final TIME_SWITCH_CAMERA:I = 0x3e8

.field private static final UPDATE_PARAM_ALL_SHORT:I = 0x1


# instance fields
.field private afterDestorySettingHandler:Landroid/os/Handler;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

.field mRadioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mSmartAnim:Lcom/lenovo/scg/common/animation/SmartAnimation;

.field nChexkBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private statusBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;-><init>()V

    .line 902
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$4;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;

    .line 1803
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$5;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mRadioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1840
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->nChexkBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->resetChangeFunctionFlag()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/function/FunctionUIManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraId:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/function/FunctionUIManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startModeMaskAnim()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeFunctionAfterAnim()V

    return-void
.end method

.method private changeFunctionAfterAnim()V
    .locals 3

    .prologue
    .line 774
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->changeFunction()V

    .line 777
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->destroyCameraSetting()V

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10028e

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 784
    .local v0, "mSettingBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 785
    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 789
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->destroy()V

    .line 791
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .line 795
    :cond_1
    return-void

    .line 787
    :cond_2
    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private destroyCameraSetting()V
    .locals 4

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 826
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 830
    const-string v2, "iso"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 834
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 835
    .local v0, "mDestroySettingThrea":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_2

    .line 836
    new-instance v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;

    .end local v0    # "mDestroySettingThrea":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 837
    .restart local v0    # "mDestroySettingThrea":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->start()V

    goto :goto_0

    .line 839
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->start()V

    goto :goto_0
.end method

.method private finishGaussExt()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method private isAutoExposureLockSupported(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Z
    .locals 7
    .param p1, "camera"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 595
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 597
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    .line 599
    .local v1, "isSupported":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isAutoExposureLockSupported"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 603
    .local v2, "methodIsAutoExposureLockSupported":Ljava/lang/reflect/Method;
    :goto_0
    const-string v4, "PhotoModuleSuperEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAutoExposureLockSupported func "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz v2, :cond_0

    .line 606
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 607
    const-string v4, "PhotoModuleSuperEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAutoExposureLockSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 616
    :cond_0
    :goto_1
    return v1

    .line 600
    .end local v2    # "methodIsAutoExposureLockSupported":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "methodIsAutoExposureLockSupported":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 610
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 612
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private isAutoWhiteBalanceLockSupported(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Z
    .locals 7
    .param p1, "camera"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 622
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    .line 624
    .local v1, "isSupported":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isAutoWhiteBalanceLockSupported"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 628
    .local v2, "methodIsAutoWhiteBalanceLockSupported":Ljava/lang/reflect/Method;
    :goto_0
    const-string v4, "PhotoModuleSuperEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAutoWhiteBalanceLockSupported func "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v2, :cond_0

    .line 631
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 632
    const-string v4, "PhotoModuleSuperEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAutoWhiteBalanceLockSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 641
    :cond_0
    :goto_1
    return v1

    .line 625
    .end local v2    # "methodIsAutoWhiteBalanceLockSupported":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "methodIsAutoWhiteBalanceLockSupported":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 635
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 637
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private resetChangeFunctionFlag()V
    .locals 4

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 800
    return-void
.end method

.method private startChangeFunctionAnim()V
    .locals 5

    .prologue
    .line 728
    new-instance v0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->initThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->hasThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->setIsShowThumbnail(Z)V

    .line 731
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startAnim()V

    .line 732
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mChangeFunctionAnim:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    new-instance v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->setAnimListener(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;)V

    .line 743
    return-void
.end method

.method private startModeMaskAnim()V
    .locals 2

    .prologue
    .line 758
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 759
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 760
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->hasCameraModeMaskFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 771
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$3;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->hideCameraModeMaskFrame(Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;)V

    goto :goto_0
.end method

.method private startPreviewAnd2dGaussExt(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "gaussExtRect"    # Landroid/graphics/Rect;

    .prologue
    .line 308
    new-instance v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 309
    .local v0, "capture":Lcom/lenovo/scg/camera/mode/ScreenCapture;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->getCurrentScreen()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 311
    .local v2, "screenShot":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    .line 312
    .local v1, "functionChanged":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->startGaussBlur(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 314
    return-void
.end method

.method private startPreviewGaussExt(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "gaussExtRect"    # Landroid/graphics/Rect;

    .prologue
    .line 326
    return-void
.end method


# virtual methods
.method public addView2CameraCotrolLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraControlLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1160
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public applyPreferencesToParameters()V
    .locals 0

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onCameraSharedPreferenceChanged()V

    .line 1073
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->cancelAutoFocus()V

    .line 650
    return-void
.end method

.method public varargs changPicturePreviewSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;)Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;
    .locals 17
    .param p1, "mCameraID"    # I
    .param p2, "mPictureSuiteSiteType"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;
    .param p3, "mPreviewSizeType"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;
    .param p4, "mNewRatioType"    # [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .prologue
    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v13

    const-string v14, "camera_setting_picture_size_key"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2093
    .local v3, "mCurrentPictureSize":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2094
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v14, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2095
    .local v10, "mTempSize":Landroid/hardware/Camera$Size;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v10, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2100
    .end local v10    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v9

    .line 2103
    .local v9, "mSizeRatioType":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move/from16 v0, p1

    invoke-static {v0, v9, v13}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2104
    .local v6, "mOldPreview":Landroid/hardware/Camera$Size;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v13

    const-string v14, "camera_setting_preview_size_key"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2108
    .local v4, "mCurrentPreviewSize":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    invoke-direct {v5, v3, v4}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    .local v5, "mInfo":Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->setOnPreviewRestartedListener(Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;)V

    .line 2113
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v13, v0

    if-lez v13, :cond_1

    .line 2114
    const/4 v13, 0x0

    aget-object v9, p4, v13

    .line 2118
    :cond_1
    const/4 v7, 0x0

    .line 2119
    .local v7, "mPictureSize":Landroid/hardware/Camera$Size;
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_5

    .line 2122
    const-string v13, "16x9"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "4x3"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2123
    :cond_2
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move/from16 v0, p1

    invoke-static {v0, v9, v13}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 2132
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2137
    .local v11, "newPictureSizeString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2138
    .local v8, "mPreviewSize":Landroid/hardware/Camera$Size;
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move-object/from16 v0, p3

    if-ne v0, v13, :cond_7

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v13

    const-string v14, "camera_setting_preview_size_key"

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2140
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2156
    :cond_3
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2165
    .local v12, "newPreviewSizeString":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "camera_setting_picture_preview_size_key_for_mode_set"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "#"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    :goto_2
    const-string v13, "00000+++00000changPicturePreviewSize"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "old PreviewSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->getCurrentPreviewSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " old PictureSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->getCurrentPictureSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v13, "00000+++00000changPicturePreviewSize"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "new PreviewSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " new PictureSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->isHaveResatrted:Z

    invoke-virtual {v5, v13}, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->setNeedRestartPreview(Z)V

    .line 2190
    const-string v13, "00000+++00000changPicturePreviewSize"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isHaveResatrted:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "========================================"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    return-object v5

    .line 2125
    .end local v8    # "mPreviewSize":Landroid/hardware/Camera$Size;
    .end local v11    # "newPictureSizeString":Ljava/lang/String;
    .end local v12    # "newPreviewSizeString":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v7

    goto/16 :goto_0

    .line 2129
    :cond_5
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    goto/16 :goto_0

    .line 2142
    .restart local v8    # "mPreviewSize":Landroid/hardware/Camera$Size;
    .restart local v11    # "newPictureSizeString":Ljava/lang/String;
    :cond_6
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move/from16 v0, p1

    invoke-static {v0, v9, v13}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v8

    goto/16 :goto_1

    .line 2145
    :cond_7
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move-object/from16 v0, p3

    if-ne v0, v13, :cond_8

    .line 2146
    sget-object v13, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v13, v1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2147
    if-nez v8, :cond_3

    .line 2148
    const-string v13, "352x288"

    invoke-static {v13}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v8

    goto/16 :goto_1

    .line 2151
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v9, v1}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v8

    goto/16 :goto_1

    .line 2166
    .restart local v12    # "newPreviewSizeString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2168
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "wangdy---putStringSet"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public changeFunction()V
    .locals 1

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->isInGaussBlur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startPreviewGaussExt(Landroid/graphics/Rect;)V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->showCameraModeMaskFrame()V

    .line 703
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startChangeFunctionAnim()V

    .line 722
    return-void
.end method

.method public checkStorage()V
    .locals 1

    .prologue
    .line 1316
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onStoragePreferenceChanged()V

    .line 1317
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1318
    return-void
.end method

.method public cleanVideoScreen()V
    .locals 0

    .prologue
    .line 2238
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->cleanVideoScreen()V

    .line 2239
    return-void
.end method

.method public clearAllPopupWindow()V
    .locals 0

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->hideSettingUI()Z

    .line 1126
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->dismisPopupWindow()V

    .line 1127
    return-void
.end method

.method public clearScreenExcept([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 1240
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExceptByHandler([I)V

    .line 1241
    return-void
.end method

.method public clearScreenExceptWithoutAnim([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExceptWithoutAnimByHandler([I)V

    .line 1247
    return-void
.end method

.method public clearUIScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExcept([I)V

    .line 146
    return-void
.end method

.method public closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    .prologue
    const/4 v5, 0x1

    .line 1609
    const-string/jumbo v1, "will close zsd, type=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    invoke-virtual {v1, v2, v3, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->changeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1612
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    return v5
.end method

.method public dismisPopupWindow()V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public displayCurrentModeViews()V
    .locals 1

    .prologue
    .line 2049
    const-string v0, "enter displayCurrentModeViews"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onModeFrameBackpressed()V

    .line 2052
    return-void
.end method

.method public displayScreenExcept([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 1256
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExceptByHandler([I)V

    .line 1257
    return-void
.end method

.method public displayUIScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 139
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 2079
    const-string v1, "enableShutterSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableShutterSound  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    .line 2081
    .local v0, "mCameraProxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    if-eqz v0, :cond_0

    .line 2082
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    .line 2084
    :cond_0
    return-void
.end method

.method public enterModeClick(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->destroyCameraModeMaskFrame()V

    .line 949
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isSmartSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    sget-object p1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 954
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_1

    .line 955
    const-string v0, "click_smart_mode"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->enterTraceEvent(Ljava/lang/String;)V

    .line 960
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 965
    return-void
.end method

.method public finishContinuousShot(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2024
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 2025
    .local v0, "count":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->finishContinuousShot(I)V

    .line 2026
    return-void
.end method

.method public get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method public getCameraAppRootFrameLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCameraConfig()Lcom/lenovo/scg/camera/CameraConfig;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    return-object v0
.end method

.method public getCameraControlLayout()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f10015a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    return-object v0
.end method

.method public getCameraDisplayOrientation()I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraDisplayOrientation:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraId:I

    return v0
.end method

.method public getCameraProSettingListPreferenceHelper()Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mProSettingListPreferenceHelper:Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    return-object v0
.end method

.method public getCameraRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCameraRotationForVideoMode()I
    .locals 2

    .prologue
    .line 1221
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunction()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-nez v0, :cond_0

    .line 976
    const/4 v0, -0x1

    .line 978
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v0, :cond_0

    .line 1638
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 1640
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentZoomValue()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mZoomValue:I

    return v0
.end method

.method public getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 1

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getFlashStatusByModeBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getFlashStatusByModeBar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1095
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->ismIsImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method public getJpegRotate()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mJpegRotation:I

    return v0
.end method

.method public getLeSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmOrientation()I

    move-result v0

    return v0
.end method

.method public getParametersInCache()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, "proxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    const/4 v0, 0x3

    .line 191
    .local v0, "count":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    .line 192
    add-int/lit8 v0, v0, -0x1

    .line 193
    if-nez v3, :cond_1

    .line 195
    const-wide/16 v4, 0x5

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-gtz v0, :cond_0

    .line 202
    :cond_2
    const-string v4, "PhotoModuleSuperEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParametersInCache proxy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz v3, :cond_3

    .line 205
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 209
    :goto_1
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .locals 1

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    return-object v0
.end method

.method public getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    .locals 1

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;
    .locals 1

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    .locals 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    .line 2001
    :goto_0
    return-object v0

    .line 2000
    :cond_0
    const/4 v0, 0x0

    const-string v1, "getSCGCameraParameters"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    .line 2001
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    return-object v0
.end method

.method public getStatusBarRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1494
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1495
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->statusBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1496
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->statusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1499
    :cond_0
    return-object v0
.end method

.method public getZSDStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1624
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1625
    const/4 v1, 0x0

    .line 1627
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "zsl"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    return-object v0
.end method

.method public getmContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;
    .locals 1

    .prologue
    .line 1177
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method public getmPreviewFrameLayout()Lcom/lenovo/scg/camera/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getmRecordingTimeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmReviewDoneButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    return-object v0
.end method

.method public getmReviewImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmReviewPlayButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getmReviewRetakeButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    return-object v0
.end method

.method public getmStorageSpace()J
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getmSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public hideGaussBlur2DBitmap()V
    .locals 2

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setCameraGaussBlurBitmap(Landroid/graphics/Bitmap;)V

    .line 2215
    return-void
.end method

.method public hideLoadingTips()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->hideShortLoadingAnimTips()V

    .line 357
    :cond_0
    return-void
.end method

.method public hideUISetting()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->hideSettingUI()Z

    move-result v0

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initSmartAnimation()V
    .locals 5

    .prologue
    .line 748
    new-instance v0, Lcom/lenovo/scg/common/animation/SmartAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/animation/SmartAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mSmartAnim:Lcom/lenovo/scg/common/animation/SmartAnimation;

    .line 749
    return-void
.end method

.method public isBackCamera()Z
    .locals 1

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilmMode()Z
    .locals 4

    .prologue
    .line 1670
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1671
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1672
    check-cast v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 1673
    .local v2, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getFilmMode()Z

    move-result v1

    .line 1676
    .end local v2    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstCamera()Z
    .locals 3

    .prologue
    .line 1682
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1683
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1684
    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 1685
    .local v1, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v2

    .line 1687
    .end local v1    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2041
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method public isInProFuncton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2220
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCapture()Z
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mQuickCapture:Z

    return v0
.end method

.method public isVideoIntent()Z
    .locals 1

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    return v0
.end method

.method public isVideoPaused()Z
    .locals 1

    .prologue
    .line 1110
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoPaused()Z

    move-result v0

    return v0
.end method

.method public ismPaused()Z
    .locals 1

    .prologue
    .line 1189
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->ismPaused()Z

    move-result v0

    return v0
.end method

.method public loadCameraClickSound()V
    .locals 2

    .prologue
    .line 1422
    const-string v0, "PhotoModuleSuperEx"

    const-string v1, " loadCameraClickSound "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 1424
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1425
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 1426
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 1427
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 1429
    :cond_0
    return-void
.end method

.method public lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 502
    return-void
.end method

.method public modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V
    .locals 3
    .param p1, "para"    # Lcom/lenovo/scg/camera/MediaSavePara;

    .prologue
    .line 522
    const-string/jumbo v0, "panhui10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modeMediaSave, para = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 527
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 1342
    return-void
.end method

.method public onAutoSettingShow(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    .line 1022
    if-eqz p1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->pause()V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_smart_auto_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "sVal":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1033
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_2

    .line 1034
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 1046
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->resume()V

    goto :goto_1

    .line 1039
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_4

    .line 1040
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto :goto_1

    .line 1042
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->resume()V

    goto :goto_1
.end method

.method public onCameraAboutClicked()V
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onCameraAboutClicked()V

    .line 1081
    :cond_0
    return-void
.end method

.method public onCameraFling()V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method public onCameraSettingEffectClicked()V
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onCameraEffectClicked()V

    .line 1089
    :cond_0
    return-void
.end method

.method public onDeveloperPreferenceClicked()V
    .locals 32

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 1694
    new-instance v29, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    .line 1697
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->showAlertDialog()V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmOrientation()I

    move-result v30

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setOrientation(IZ)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->nChexkBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setCheckBoxOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mRadioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setRadioGroupCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10040d

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v19

    .line 1707
    .local v19, "mMonitorBox":Landroid/widget/CheckBox;
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_monitor_key"

    invoke-interface/range {v29 .. v30}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_monitor_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1713
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100413

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v25

    .line 1714
    .local v25, "mZSDBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_zsd_key"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10041b

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v3

    .line 1718
    .local v3, "cameraDevicesCBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_camera_devices_operate_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10041e

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v16

    .line 1723
    .local v16, "mFullSizeCBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_full_pic_video_size_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100420

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v22

    .line 1728
    .local v22, "mPreviewSize":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_full_preview_size_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100414

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v4

    .line 1732
    .local v4, "focusResultBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_focus_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100444

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v11

    .line 1736
    .local v11, "mArtHdrBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_art_hdr_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100445

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v23

    .line 1739
    .local v23, "mSuperNightBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_super_night_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100448

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v13

    .line 1742
    .local v13, "mBeautyBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_front_beauty_debug_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10045b

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v12

    .line 1745
    .local v12, "mAutoFocusModeListBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_auto_focusmode_list_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100416

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v15

    .line 1748
    .local v15, "mCloseAgenderDetectBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_close_agender_detect_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100418

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v10

    .line 1751
    .local v10, "mAeAreaDisplayBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_display_ae_area_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100431

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v14

    .line 1754
    .local v14, "mCaptureWayInfoBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_capture_way_info_show"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100433

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v27

    .line 1757
    .local v27, "realNightBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_real_night_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100423

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v5

    .line 1761
    .local v5, "hdrDumpBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_hdr_dump_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100426

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v6

    .line 1765
    .local v6, "hdrZslBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_hdr_zsl_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100429

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v2

    .line 1769
    .local v2, "LowlitZslBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_lowlit_zsl_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100436

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v21

    .line 1772
    .local v21, "mPanoExBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_panorama_ex_lock_key"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100439

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v24

    .line 1775
    .local v24, "mVideoFillBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_video_recording_mode"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10043c

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v20

    .line 1778
    .local v20, "mPano4KBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_panorama_4K_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10043f

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getCheckBoxByID(I)Landroid/widget/CheckBox;

    move-result-object v28

    .line 1781
    .local v28, "rewindDump":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_rewind_dump_key"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "camera_mode_back_logic_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1784
    .local v26, "modeBackLogic":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10044e

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getRadioButtonByID(I)Landroid/widget/RadioButton;

    move-result-object v17

    .line 1785
    .local v17, "mModeBackLogicOne":Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f10044f

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getRadioButtonByID(I)Landroid/widget/RadioButton;

    move-result-object v18

    .line 1786
    .local v18, "mModeBackLogicTwo":Landroid/widget/RadioButton;
    if-nez v26, :cond_4

    .line 1787
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1793
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v29

    const-string v30, "developer_setting_look_back_key"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1794
    .local v7, "lookBackMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100457

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getRadioButtonByID(I)Landroid/widget/RadioButton;

    move-result-object v8

    .line 1795
    .local v8, "lookBackMethodOne":Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    move-object/from16 v29, v0

    const v30, 0x7f100458

    invoke-virtual/range {v29 .. v30}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->getRadioButtonByID(I)Landroid/widget/RadioButton;

    move-result-object v9

    .line 1796
    .local v9, "lookBackMethodTwo":Landroid/widget/RadioButton;
    if-nez v7, :cond_5

    .line 1797
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1801
    :cond_2
    :goto_2
    return-void

    .line 1710
    .end local v2    # "LowlitZslBox":Landroid/widget/CheckBox;
    .end local v3    # "cameraDevicesCBox":Landroid/widget/CheckBox;
    .end local v4    # "focusResultBox":Landroid/widget/CheckBox;
    .end local v5    # "hdrDumpBox":Landroid/widget/CheckBox;
    .end local v6    # "hdrZslBox":Landroid/widget/CheckBox;
    .end local v7    # "lookBackMethod":I
    .end local v8    # "lookBackMethodOne":Landroid/widget/RadioButton;
    .end local v9    # "lookBackMethodTwo":Landroid/widget/RadioButton;
    .end local v10    # "mAeAreaDisplayBox":Landroid/widget/CheckBox;
    .end local v11    # "mArtHdrBox":Landroid/widget/CheckBox;
    .end local v12    # "mAutoFocusModeListBox":Landroid/widget/CheckBox;
    .end local v13    # "mBeautyBox":Landroid/widget/CheckBox;
    .end local v14    # "mCaptureWayInfoBox":Landroid/widget/CheckBox;
    .end local v15    # "mCloseAgenderDetectBox":Landroid/widget/CheckBox;
    .end local v16    # "mFullSizeCBox":Landroid/widget/CheckBox;
    .end local v17    # "mModeBackLogicOne":Landroid/widget/RadioButton;
    .end local v18    # "mModeBackLogicTwo":Landroid/widget/RadioButton;
    .end local v20    # "mPano4KBox":Landroid/widget/CheckBox;
    .end local v21    # "mPanoExBox":Landroid/widget/CheckBox;
    .end local v22    # "mPreviewSize":Landroid/widget/CheckBox;
    .end local v23    # "mSuperNightBox":Landroid/widget/CheckBox;
    .end local v24    # "mVideoFillBox":Landroid/widget/CheckBox;
    .end local v25    # "mZSDBox":Landroid/widget/CheckBox;
    .end local v26    # "modeBackLogic":I
    .end local v27    # "realNightBox":Landroid/widget/CheckBox;
    .end local v28    # "rewindDump":Landroid/widget/CheckBox;
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isSupportMonitorWindow()Z

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1788
    .restart local v2    # "LowlitZslBox":Landroid/widget/CheckBox;
    .restart local v3    # "cameraDevicesCBox":Landroid/widget/CheckBox;
    .restart local v4    # "focusResultBox":Landroid/widget/CheckBox;
    .restart local v5    # "hdrDumpBox":Landroid/widget/CheckBox;
    .restart local v6    # "hdrZslBox":Landroid/widget/CheckBox;
    .restart local v10    # "mAeAreaDisplayBox":Landroid/widget/CheckBox;
    .restart local v11    # "mArtHdrBox":Landroid/widget/CheckBox;
    .restart local v12    # "mAutoFocusModeListBox":Landroid/widget/CheckBox;
    .restart local v13    # "mBeautyBox":Landroid/widget/CheckBox;
    .restart local v14    # "mCaptureWayInfoBox":Landroid/widget/CheckBox;
    .restart local v15    # "mCloseAgenderDetectBox":Landroid/widget/CheckBox;
    .restart local v16    # "mFullSizeCBox":Landroid/widget/CheckBox;
    .restart local v17    # "mModeBackLogicOne":Landroid/widget/RadioButton;
    .restart local v18    # "mModeBackLogicTwo":Landroid/widget/RadioButton;
    .restart local v20    # "mPano4KBox":Landroid/widget/CheckBox;
    .restart local v21    # "mPanoExBox":Landroid/widget/CheckBox;
    .restart local v22    # "mPreviewSize":Landroid/widget/CheckBox;
    .restart local v23    # "mSuperNightBox":Landroid/widget/CheckBox;
    .restart local v24    # "mVideoFillBox":Landroid/widget/CheckBox;
    .restart local v25    # "mZSDBox":Landroid/widget/CheckBox;
    .restart local v26    # "modeBackLogic":I
    .restart local v27    # "realNightBox":Landroid/widget/CheckBox;
    .restart local v28    # "rewindDump":Landroid/widget/CheckBox;
    :cond_4
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1789
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 1798
    .restart local v7    # "lookBackMethod":I
    .restart local v8    # "lookBackMethodOne":Landroid/widget/RadioButton;
    .restart local v9    # "lookBackMethodTwo":Landroid/widget/RadioButton;
    :cond_5
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_2

    .line 1799
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public onModeFrameBackpressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1512
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFocusManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 1513
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 1514
    .local v0, "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    if-nez v0, :cond_0

    .line 1515
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 1529
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->resume()V

    .line 1519
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_2

    .line 1520
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto :goto_0

    .line 1523
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->loadModeStatusBar(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 1525
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->showModeOrReturnButton()V

    goto :goto_0
.end method

.method public onProSettingShow(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 1051
    if-nez p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 1059
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->showProSmartIfNeed()V

    goto :goto_0
.end method

.method public onResumeAfterSuper()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onResumeAfterSuper()V

    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-ne v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 1549
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setmIsZoomStarted(Z)V

    .line 1551
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setSwipingEnabled(Z)V

    .line 1554
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setmIsZoomStarted(Z)V

    .line 1540
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setSwipingEnabled(Z)V

    .line 1544
    :cond_0
    return-void
.end method

.method public openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1596
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->ismPaused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    const-string/jumbo v2, "openZSD will return, mPaused"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1603
    :goto_0
    return v1

    .line 1600
    :cond_0
    const-string/jumbo v3, "will open zsd, type=%s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1601
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    invoke-virtual {v1, v3, v4, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->changeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .local v0, "p":Landroid/hardware/Camera$Parameters;
    move v1, v2

    .line 1603
    goto :goto_0
.end method

.method public playCameraClickSound()V
    .locals 7

    .prologue
    .line 1433
    const-string v3, "PhotoModuleSuperEx"

    const-string v4, " playCameraClickSound "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_shutter_voice_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v6, 0x7f0f0018

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1437
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v3, :cond_2

    .line 1442
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->loadCameraClickSound()V

    .line 1446
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->play(I)V

    .line 1447
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v3, v4, :cond_0

    .line 1448
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 1449
    .local v1, "sm":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/SmartMode;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 1450
    .local v0, "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "play sound end,mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideoStartingSound()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 1457
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->loadCameraClickSound()V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1462
    return-void
.end method

.method public playVideoStoppingSound()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->loadCameraClickSound()V

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1472
    return-void
.end method

.method public putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1366
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1368
    const-string/jumbo v2, "putParameterToSharedPreference() -- 0 "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 1374
    .local v0, "customParmeters":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    const-string v2, "camera_setting_square_pic_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1375
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1380
    :cond_2
    if-eqz v0, :cond_0

    .line 1382
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValue(Ljava/lang/String;)V

    .line 1384
    const-string/jumbo v2, "putParameterToSharedPreference() -- 1 "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    :catch_0
    move-exception v1

    .line 1387
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhotoModuleSuperEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setValue   e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public queueEventToGLRootView(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public releaseCameraClickSound()V
    .locals 2

    .prologue
    .line 1476
    const-string v0, "PhotoModuleSuperEx"

    const-string v1, " releaseCameraClickSound "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1481
    :cond_0
    return-void
.end method

.method public removeCameraOverlayGLView()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->removeCameraOverlayGLView()V

    .line 491
    return-void
.end method

.method public removeSquareMaskView()V
    .locals 1

    .prologue
    .line 2014
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeSquareMaskView()V

    .line 2015
    return-void
.end method

.method public removeViewFromCameraControlLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraControlLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1169
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public restorePicturePreviewSize(Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;)V
    .locals 2
    .param p1, "mInfo"    # Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;

    .prologue
    .line 2198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isHaveResatrted:Z

    .line 2200
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_picture_preview_size_key_for_mode_set"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2209
    return-void
.end method

.method public restoreShutterButton()V
    .locals 6

    .prologue
    .line 264
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f1002a1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 266
    .local v1, "rlButtons":Landroid/view/ViewGroup;
    const v4, 0x7f10015f

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ShutterButton;

    .line 267
    .local v2, "shutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    const/4 v0, 0x0

    .line 268
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 273
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    :goto_0
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f1002a5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, "vButtons":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    :cond_0
    return-void

    .line 270
    .end local v3    # "vButtons":Landroid/view/View;
    :pswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public resumeVideoRecord()V
    .locals 0

    .prologue
    .line 2073
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resumeVideoRecord()V

    .line 2074
    return-void
.end method

.method public saveThumbnailToFile(Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 0
    .param p1, "thumbnail"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 2031
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setThumbnail(Lcom/lenovo/scg/camera/Thumbnail;)V

    .line 2032
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->saveThumbnail2File()V

    .line 2033
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLastThumbnail()V

    .line 2034
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 8
    .param p1, "lock"    # Z

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isAutoExposureLockSupported(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 543
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setAutoExposureLock"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 548
    .local v1, "methodSetAutoExposureLock":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_0

    .line 550
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v3, "PhotoModuleSuperEx"

    const-string/jumbo v4, "setParameters methodSetAutoExposureLock setAutoExposureLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 553
    const-string v3, "PhotoModuleSuperEx"

    const-string/jumbo v4, "setAutoExposureLock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 544
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "methodSetAutoExposureLock":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "methodSetAutoExposureLock":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 8
    .param p1, "lock"    # Z

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isAutoWhiteBalanceLockSupported(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 573
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setAutoWhiteBalanceLock"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 578
    .local v1, "methodSetAutoWhiteBalanceLock":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_0

    .line 580
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v3, "PhotoModuleSuperEx"

    const-string/jumbo v4, "setParameters methodSetAutoWhiteBalanceLock setAutoWhiteBalanceLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 583
    const-string v3, "PhotoModuleSuperEx"

    const-string/jumbo v4, "setAutoExposureLock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 574
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "methodSetAutoWhiteBalanceLock":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "methodSetAutoWhiteBalanceLock":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 588
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCameraDefaultParamerters()V
    .locals 7

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    .line 166
    .local v0, "cp":Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    if-nez v0, :cond_1

    .line 183
    .end local v0    # "cp":Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "cp":Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getCameraSaturationInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;

    move-result-object v1

    .line 168
    .local v1, "csi":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->isSupportSaturation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getDefSaturation()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setSaturation(I)V

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefISOValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setISO(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0    # "cp":Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    .end local v1    # "csi":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setCameraDefaultParamerters error: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraActivity;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 486
    return-void
.end method

.method public setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    .locals 5
    .param p1, "updateSet"    # I
    .param p2, "triggerSource"    # Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .prologue
    .line 807
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "setCameraParameters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setFaceIndicatorVisiable(Z)V
    .locals 1
    .param p1, "visiable"    # Z

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->setFaceIndicatorVisable(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public setGLRootToSurfaceScreenNail()V
    .locals 2

    .prologue
    .line 2232
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setGLRoot(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    .line 2233
    return-void
.end method

.method public setIsVideoPaused(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 1105
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setIsVideoPaused(Z)V

    .line 1106
    return-void
.end method

.method public setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 458
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setWindowStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 459
    return-void

    .line 413
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->finishGaussExt()V

    .line 414
    const-string v0, "STATUS_NORMAL"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->openShortcutSetting()V

    .line 418
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelUiVisibility(I)V

    goto :goto_1

    .line 431
    :pswitch_1
    const-string v0, "STATUS_POPUP"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->closeShortcutSetting()V

    .line 434
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 435
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelUiVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onFullScreenChange()V

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 443
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    goto :goto_0

    .line 449
    :pswitch_2
    const-string v0, "STATUS_BACKGROUND_BLUR"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->closeShortcutSetting()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .prologue
    .line 1664
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 1665
    return-void
.end method

.method public setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    .line 152
    .local v0, "proxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    if-eqz v0, :cond_0

    .line 153
    const-string v1, "PhotoModuleSuperEx"

    const-string/jumbo v2, "setParameters setCameraParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 222
    return-void
.end method

.method public setResultEx(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1324
    return-void
.end method

.method public setScaleSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setScaleSupported(Z)V

    .line 655
    return-void
.end method

.method public setStatusBar(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "bar"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->statusBar:Landroid/widget/LinearLayout;

    .line 1490
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1348
    return-void
.end method

.method public setThumbnailBtnClickable(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 2058
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setThumbnailBtnClickable(Z)V

    .line 2059
    return-void
.end method

.method public setThumbnailBtnVisible(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 2063
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setThumbnailBtnVisible(Z)V

    .line 2064
    return-void
.end method

.method public setmRecordingTimeView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mRecordingTimeView"    # Landroid/widget/TextView;

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mRecordingTimeView:Landroid/widget/TextView;

    .line 1216
    return-void
.end method

.method public showAllScreen()V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method

.method public showModeFlash(Z)V
    .locals 1
    .param p1, "bShow"    # Z

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->showModeFlash(Z)V

    .line 1115
    return-void
.end method

.method public showModeStatusBar(Z)V
    .locals 1
    .param p1, "bShow"    # Z

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->showModeStatusBar(Z)V

    .line 1120
    return-void
.end method

.method public showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    move-result-object v0

    return-object v0
.end method

.method public showVideoRecordResult()V
    .locals 0

    .prologue
    .line 2068
    invoke-super {p0}, Lcom/lenovo/scg/camera/PhotoModule;->showVideoRecordResult()V

    .line 2069
    return-void
.end method

.method public startCameraPreview()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->doStartPreview()V

    .line 404
    return-void
.end method

.method public startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "isShowTips"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->stopShortLoadingAnim()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    .line 347
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->setController(Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->startShortLoadingAnim(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 350
    return-void
.end method

.method public startSmartAnimation()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mSmartAnim:Lcom/lenovo/scg/common/animation/SmartAnimation;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mSmartAnim:Lcom/lenovo/scg/common/animation/SmartAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->startAnim()V

    .line 755
    :cond_0
    return-void
.end method

.method public stopCameraPreview()V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->doStopPreview()V

    .line 400
    return-void
.end method

.method public stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;-><init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->stopShortLoadingAnim()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    goto :goto_0
.end method

.method public strobeHideShutterButton()V
    .locals 2

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    .line 1412
    .local v0, "mShutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1413
    return-void
.end method

.method public strobeShowShutterButton()V
    .locals 3

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    .line 1404
    .local v0, "mShutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    const-string v1, "PhotoModuleSuperEx"

    const-string v2, "Video intent mShutterButton.setVisibility visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1406
    return-void
.end method

.method public switchToBackCamera()V
    .locals 2

    .prologue
    .line 1560
    const-string v0, "liuming5"

    const-string/jumbo v1, "switchToBackCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v0, "CameraActivity.switchToBackCamera"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1566
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->disableSceneChange()V

    .line 1568
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startSwitchCamera()V

    .line 1571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onCameraSwitchButtonClicked(I)V

    goto :goto_0
.end method

.method public switchToFrontCamera()V
    .locals 3

    .prologue
    .line 1576
    const-string v0, "liuming5"

    const-string/jumbo v1, "switchToFrontCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v0, "CameraActivity.switchToFrontCamera"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->disableSceneChange()V

    .line 1584
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startSwitchCamera()V

    .line 1586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->onCameraSwitchButtonClicked(I)V

    .line 1588
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    goto :goto_0
.end method

.method public takeMorePicture()V
    .locals 0

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->takeMore()V

    .line 1659
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    const/4 v5, -0x1

    .line 659
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    .line 660
    .local v0, "proxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    .line 663
    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    goto :goto_0
.end method

.method public unlockScreenRotation()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockScreenRotation()V

    .line 507
    return-void
.end method

.method public updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "TAG"

    const-string/jumbo v1, "should not updateCameraParameter out of VideoMode during video recording!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_0
    return-void

    .line 994
    :cond_0
    const-string v0, "TAG"

    const-string/jumbo v1, "updateCameraParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1004
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->applyPreferencesToParameters()V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public updateNightFlash(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "oldFlashStatus"    # Ljava/lang/String;
    .param p2, "bFlash"    # Z

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/PhotoUI;->updateNightFlash(Ljava/lang/String;Z)V

    .line 686
    return-void
.end method

.method public updateShutterButton(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 11
    .param p1, "m"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const v10, 0x7f1002a1

    const/4 v9, -0x2

    const v8, 0x7f10015f

    .line 227
    sget-object v6, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6, v10}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 232
    .local v3, "rlButtons":Landroid/view/ViewGroup;
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ShutterButton;

    .line 233
    .local v4, "shutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020102

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Lcom/lenovo/scg/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v7, 0x7f1002a5

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 237
    .local v5, "vButtons":Landroid/view/View;
    if-nez v5, :cond_0

    .line 238
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 239
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040063

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 240
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v2, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x6

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 243
    const/4 v6, 0x5

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 250
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "rlButtons":Landroid/view/ViewGroup;
    .end local v4    # "shutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    .end local v5    # "vButtons":Landroid/view/View;
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6, v10}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 252
    .restart local v3    # "rlButtons":Landroid/view/ViewGroup;
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ShutterButton;

    .line 253
    .restart local v4    # "shutterButton":Lcom/lenovo/scg/camera/ShutterButton;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Lcom/lenovo/scg/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateThumbnail()V
    .locals 0

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLastThumbnailUncached()V

    .line 532
    return-void
.end method
