.class public Lcom/lenovo/scg/camera/mode/PortraitMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "PortraitMode.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FACE_DETECTION_NSCALE:I = 0x8

.field private static final FACE_MAX_NUMBER:I = 0x5

.field private static final METERING_TYPE:Ljava/lang/String; = "spot-metering"

.field private static final OPEN_GENDER_DETECT:Z = false

.field private static final OPEN_METERING:Z = false

.field private static final PORTRAIT_FLASH_MODE:Ljava/lang/String; = "off"

.field private static final TAG:Ljava/lang/String; = "PortraitMode"


# instance fields
.field private mContinuousTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

.field private mFaceBeauty:Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

.field private mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

.field private mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsOneShot:Z

.field private mMeteringType:Ljava/lang/String;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

.field private mSaveOrignData:Z

.field private mSync:[B

.field private mTime0:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    .line 53
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 55
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 57
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSync:[B

    .line 66
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z

    .line 370
    new-instance v0, Lcom/lenovo/scg/camera/mode/PortraitMode$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/PortraitMode$2;-><init>(Lcom/lenovo/scg/camera/mode/PortraitMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    .line 76
    const-string v0, "PortraitMode"

    const-string v1, "PortraitMode construct."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/PortraitMode;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSync:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/mode/PortraitMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PortraitMode;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceBeauty:Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

    return-object v0
.end method

.method private handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask",
            "<*>;",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "task":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<*>;"
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    if-eqz p2, :cond_0

    .line 224
    invoke-interface {p2}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleStart()V

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->setHandleCallback(Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PictureTakenAbstractHandleTask is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleLiteBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    new-instance v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/mode/PortraitMode$1;-><init>(Lcom/lenovo/scg/camera/mode/PortraitMode;[B)V

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/camera/mode/PortraitMode;->handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 368
    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 497
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 84
    const-string v2, "PortraintMode enter"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "renxiang"

    const-string v3, "----------------enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    if-nez v2, :cond_3

    .line 89
    const-string/jumbo v2, "renxiang"

    const-string v3, "----------------nulllllllllllllll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v2, Lcom/lenovo/scg/common/utils/FaceInfo;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/lenovo/scg/common/utils/FaceInfo;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-direct {v2}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->initFaceDetect(I)I

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    .line 102
    new-instance v2, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

    invoke-direct {v2, p1}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceBeauty:Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFlashStatusSave:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "PortraitMode"

    const-string/jumbo v3, "set flash"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v0

    .line 114
    .local v0, "isZSD":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportOneShot(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    .line 115
    const-string v2, "PortraitMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsOneShot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isZSD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    if-eqz v2, :cond_2

    .line 117
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mContinuousTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 118
    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 119
    .local v1, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 120
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mContinuousTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 134
    .end local v1    # "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    :cond_2
    return-void

    .line 92
    .end local v0    # "isZSD":Z
    :cond_3
    const-string/jumbo v2, "renxiang"

    const-string v3, "----------------111111111111111111111111111"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected exit()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mSync:[B

    monitor-enter v1

    .line 141
    :try_start_0
    const-string v0, "PortraintMode exit"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "renxiang"

    const-string v2, "----------------exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninitFaceDetect()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 152
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mContinuousTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFlashStatusSave:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "PortraitMode"

    const-string/jumbo v1, "restore flash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PortraitMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 175
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 176
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public onBeforeTakePicture()V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PortraitMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 194
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mTime0:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBeforeTakePicture error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 407
    const-string v0, "PortraitMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time0-------------takePicture with time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mTime0:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "PortraintMode onPictureTaken"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PortraitMode;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/mode/PortraitMode;->handleLiteBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 2

    .prologue
    .line 181
    const-string v0, "PortraitMode"

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 502
    return-void
.end method
