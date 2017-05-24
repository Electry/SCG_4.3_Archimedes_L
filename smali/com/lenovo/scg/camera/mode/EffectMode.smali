.class public Lcom/lenovo/scg/camera/mode/EffectMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "EffectMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;,
        Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;
    }
.end annotation


# static fields
.field public static final DECODE_JPEGDATA_FINISHED:I = 0x66

.field public static final EFFECT_EXIF_ORIENTATION:Ljava/lang/String; = "EFFECT_EXIF_ORIENTATION"

.field public static final EFFECT_JPEG_DATA:Ljava/lang/String; = "EFFECT_JPEG_DATA"

.field public static final EFFECT_RGBA_DATA:Ljava/lang/String; = "EFFECT_RGBA_DATA"

.field public static final EFFECT_YUV_DATA:Ljava/lang/String; = "EFFECT_YUV_DATA"

.field public static final SAVE_EFFECT_FINISHED:I = 0x64

.field public static final SCALE_YUVDATA_FINISHED:I = 0x65

.field private static TAG:Ljava/lang/String;

.field public static mPreviewRatio:Ljava/lang/String;


# instance fields
.field private mCustomPictureRatio:Ljava/lang/String;

.field private mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

.field private mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

.field private mEffectPicMax:I

.field private mEffectProcessHandler:Landroid/os/Handler;

.field private mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

.field private mEffectType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field private mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

.field private mExifOrientation:I

.field private mIsOneShot:Z

.field private mLocation:Landroid/location/Location;

.field private mOrientation:I

.field private mParameterInCache:Landroid/hardware/Camera$Parameters;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPicSizeHeight:I

.field private mPicSizeWidth:I

.field private mPreOrientation:I

.field private mRatio:F

.field private mSavedPreviewSize:Landroid/hardware/Camera$Size;

.field private mWindowMoveX:F

.field private mWindowVisible:I

.field private mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "EffectMode"

    sput-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    .line 54
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    .line 66
    const/16 v0, 0x1000

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    .line 68
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    .line 70
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    .line 427
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameterInCache:Landroid/hardware/Camera$Parameters;

    .line 666
    return-void
.end method

.method private static WriteByteArrayToFile([BLjava/lang/String;)Z
    .locals 3
    .param p0, "dataArray"    # [B
    .param p1, "strPathName"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "bRet":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v0

    .line 117
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/EffectMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/EffectMode;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/EffectMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/EffectMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/EffectMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/EffectMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mExifOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/EffectMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/EffectMode;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    return v0
.end method

.method private destoryWindow()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    new-instance v1, Lcom/lenovo/scg/camera/mode/EffectMode$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/EffectMode$1;-><init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->queueEventToGLRootView(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method

.method private lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    new-instance v1, Lcom/lenovo/scg/camera/mode/EffectMode$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/mode/EffectMode$2;-><init>(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->queueEventToGLRootView(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method private unlockScreenRotation()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    new-instance v1, Lcom/lenovo/scg/camera/mode/EffectMode$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/EffectMode$3;-><init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->queueEventToGLRootView(Ljava/lang/Runnable;)V

    .line 597
    return-void
.end method


# virtual methods
.method public JpegToYUV(II[BI)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "jpegData"    # [B
    .param p4, "exifOrientation"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 154
    const-string v2, "EFFECT_JPEG_DATA"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    const-string v2, "EFFECT_EXIF_ORIENTATION"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 159
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 162
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 163
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 603
    return-void
.end method

.method public colorConvertScale(II[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yuvData"    # [B

    .prologue
    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 140
    const-string v2, "EFFECT_YUV_DATA"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 143
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 144
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 147
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 148
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 430
    sget-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string v7, "enter EffectMode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v6, "EffectMode"

    invoke-static {v10, v6}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 432
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "effectType":I
    const/4 v6, 0x3

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 435
    .local v1, "exclude":[I
    new-instance v6, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;-><init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    .line 436
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v6, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    .line 437
    const/4 v6, 0x0

    iput v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowMoveX:F

    .line 438
    iput v10, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mExifOrientation:I

    .line 440
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v6, :cond_2

    .line 442
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v3

    .line 443
    .local v3, "isZSD":Z
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportOneShot(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    .line 445
    sget-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsOneShot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isZSD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    if-eqz v6, :cond_3

    .line 448
    new-instance v6, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-direct {v6, v7}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 449
    new-instance v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 450
    .local v4, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 451
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 452
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsSupportZSD:Z

    .line 460
    .end local v4    # "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mFlashStatusSave:Ljava/lang/String;

    .line 461
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->clearUIScreen([I)V

    .line 463
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setGLRootToSurfaceScreenNail()V

    .line 465
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v6

    sget-object v7, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 467
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-nez v6, :cond_0

    .line 468
    new-instance v6, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    .line 469
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    sget-object v7, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 472
    :cond_0
    sget-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter EffectMode effectType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 474
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getOrientation()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    .line 475
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget v7, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectWindowPreOrienation(I)V

    .line 476
    iget v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    iput v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreOrientation:I

    .line 478
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 480
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_setting_picture_size_key"

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0002

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    .line 483
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    .line 484
    sget-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EffectMode before preview size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 488
    const-string v6, "16x9"

    sput-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    .line 493
    :cond_1
    :goto_1
    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 494
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getEffectWindow()Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 496
    new-instance v2, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;-><init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V

    .line 497
    .local v2, "handler":Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;
    iput v10, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    .line 498
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6, v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 501
    .end local v2    # "handler":Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;
    .end local v3    # "isZSD":Z
    :cond_2
    return-void

    .line 455
    .restart local v3    # "isZSD":Z
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 456
    .local v5, "param":Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameterInCache:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 489
    .end local v5    # "param":Landroid/hardware/Camera$Parameters;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is4v3(Landroid/hardware/Camera$Size;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    const-string v6, "4x3"

    sput-object v6, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    goto :goto_1

    .line 434
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 506
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string v1, "exit EffectMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->hideEffectWindow()V

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 513
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->destoryWindow()V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->removeCameraOverlayGLView()V

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    .line 520
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    .line 523
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 528
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    if-nez v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameterInCache:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 534
    :cond_3
    return-void
.end method

.method public getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-eq v0, v1, :cond_0

    .line 691
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->RGBA:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 695
    :goto_0
    return-object v0

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    if-nez v0, :cond_1

    .line 693
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    goto :goto_0

    .line 695
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    goto :goto_0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 5

    .prologue
    .line 540
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    .line 541
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v1

    .line 542
    .local v1, "isZSD":Z
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportOneShot(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v0

    .line 544
    .local v0, "isOneShot":Z
    if-eqz v0, :cond_0

    .line 545
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-nez v3, :cond_1

    .line 546
    new-instance v3, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 547
    new-instance v2, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 548
    .local v2, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 549
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 550
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsSupportZSD:Z

    .line 551
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 557
    .end local v2    # "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v3

    return-object v3

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsSupportZSD:Z

    goto :goto_0
.end method

.method public initEffectPic(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 129
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 130
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 131
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 132
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    sget-object v1, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string v2, "initEffectPic"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public isBackToModePreview()Z
    .locals 1

    .prologue
    .line 721
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isBackToModePreview()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->exit()V

    .line 615
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
    .line 702
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->start()V

    .line 705
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessThread:Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectProcessHandler:Landroid/os/Handler;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 709
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause in EffectMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->hideEffectWindow()V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 288
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->destoryWindow()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 294
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->removeCameraOverlayGLView()V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->displayUIScreen([I)V

    .line 300
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 305
    :cond_2
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 18
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 171
    .local v10, "mSize":Landroid/hardware/Camera$Size;
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPictureTaken.getPictureSize().width= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEffectModeController.getPictureSize().height ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "jpegLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v9, v10, Landroid/hardware/Camera$Size;->height:I

    .line 174
    .local v9, "height":I
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    .line 175
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/camera/mode/EffectMode;->initEffectPic(II)V

    .line 180
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 181
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 185
    const-string v2, "16x9"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const v2, 0x3fe38e39

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    .line 200
    :goto_0
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCustomPictureRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v3, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-ne v2, v3, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 204
    const/4 v2, 0x0

    .line 277
    :goto_1
    return v2

    .line 187
    :cond_0
    const-string v2, "4x3"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const v2, 0x3faaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    goto :goto_0

    .line 190
    :cond_1
    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 191
    .local v16, "tmpRatio":F
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v3, 0x4331c71d

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 192
    const v2, 0x3fe38e39

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    goto/16 :goto_0

    .line 193
    :cond_2
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v3, 0x43055556

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 194
    const v2, 0x3faaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    goto/16 :goto_0

    .line 196
    :cond_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    goto/16 :goto_0

    .line 207
    .end local v16    # "tmpRatio":F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    if-eqz v2, :cond_8

    .line 209
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    if-ge v2, v3, :cond_6

    .line 210
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 211
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectHandle:Lcom/lenovo/scg/camera/mode/EffectMode$EffectHandler;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V

    .line 276
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/EffectMode;->mLocation:Landroid/location/Location;

    .line 277
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 214
    :cond_6
    move/from16 v0, v17

    if-le v0, v9, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 218
    .local v12, "t1":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/lenovo/scg/camera/mode/EffectMode;->colorConvertScale(II[B)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 220
    .local v14, "t2":J
    const-string/jumbo v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v14, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 222
    .end local v12    # "t1":J
    .end local v14    # "t2":J
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 223
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/lenovo/scg/camera/mode/EffectMode;->colorConvertScale(II[B)V

    goto :goto_2

    .line 229
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_b

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/camera/Exif;->getOrientation([B)I

    move-result v11

    .line 232
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mExifOrientation:I

    .line 233
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exif.getOrientation(jpegData) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    if-ge v2, v3, :cond_9

    .line 236
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 237
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v11}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    .line 240
    const/16 v2, 0x5a

    if-ne v11, v2, :cond_5

    goto/16 :goto_2

    .line 246
    :cond_9
    move/from16 v0, v17

    if-le v0, v9, :cond_a

    .line 247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v11}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    goto/16 :goto_2

    .line 252
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v11}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    goto/16 :goto_2

    .line 260
    .end local v11    # "orientation":I
    :cond_b
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    if-ge v2, v3, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    goto/16 :goto_2

    .line 262
    :cond_c
    move/from16 v0, v17

    if-le v0, v9, :cond_d

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    goto/16 :goto_2

    .line 267
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectPicMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    .line 269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPicSizeHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lenovo/scg/camera/mode/EffectMode;->JpegToYUV(II[BI)V

    goto/16 :goto_2
.end method

.method public onPictureTakenTimeOut()V
    .locals 2

    .prologue
    .line 714
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 716
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 310
    const/4 v4, 0x3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 311
    .local v1, "exclude":[I
    const/4 v0, 0x0

    .line 312
    .local v0, "effectType":I
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onResume in EffectMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-nez v4, :cond_0

    .line 315
    new-instance v4, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    .line 316
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectShowOrHide(I)V

    .line 317
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResume EffectMode effectType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->ordinal()I

    move-result v0

    .line 321
    :cond_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 322
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowMoveX:F

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectWindowMoveX(F)V

    .line 323
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResume mEffectUI mEffectUI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mWindowVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getEffectShowOrHideState()Z

    move-result v4

    if-nez v4, :cond_1

    .line 326
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setEffecListtHide in EffectMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffecListtHide()V

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v4, :cond_4

    .line 331
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v4, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->clearUIScreen([I)V

    .line 332
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 333
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 335
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v2

    .line 336
    .local v2, "isZSD":Z
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportOneShot(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    .line 337
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsOneShot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isZSD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsOneShot:Z

    if-eqz v4, :cond_2

    .line 339
    new-instance v4, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 340
    new-instance v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v3}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 341
    .local v3, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 342
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 343
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mIsSupportZSD:Z

    .line 347
    .end local v3    # "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_picture_size_key"

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0002

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    .line 351
    sget-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EffectMode before preview size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 355
    const-string v4, "16x9"

    sput-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    .line 360
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getEffectWindow()Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 364
    .end local v2    # "isZSD":Z
    :cond_4
    return-void

    .line 356
    .restart local v2    # "isZSD":Z
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is4v3(Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 357
    const-string v4, "4x3"

    sput-object v4, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    goto :goto_0

    .line 310
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mOrientation:I

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause in EffectMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->hideEffectWindow()V

    .line 377
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getEffectWindowMoveX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowMoveX:F

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V

    .line 383
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 388
    const/4 v2, 0x3

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 389
    .local v1, "exclude":[I
    const/4 v0, 0x0

    .line 390
    .local v0, "effectType":I
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resume in EffectMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->clearUIScreen([I)V

    .line 393
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 394
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 396
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->showEffectWindow()V

    .line 398
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mWindowVisible:I

    .line 399
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume EffectMode effectType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->ordinal()I

    move-result v0

    .line 401
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->getEffectShowOrHideState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setEffecListtHide in EffectMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->setEffecListtHide()V

    .line 410
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_picture_size_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mCustomPictureRatio:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    .line 414
    sget-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EffectMode before preview size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    const-string v2, "16x9"

    sput-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    .line 425
    :cond_2
    :goto_0
    return-void

    .line 419
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/EffectMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is4v3(Landroid/hardware/Camera$Size;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    const-string v2, "4x3"

    sput-object v2, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    goto :goto_0

    .line 388
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 609
    return-void
.end method
