.class public Lcom/lenovo/scg/camera/CameraConfig;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# static fields
.field public static final APP_SYSTEM_MATCHED:I = 0x2

.field public static final LOW_APP_VERSION:I = 0x0

.field public static final LOW_SYSTEM_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraConfig"

.field private static sInstance:Lcom/lenovo/scg/camera/CameraConfig;


# instance fields
.field private isAntiShakeSupported:Z

.field private isBurstModeSupported:Z

.field private isCMCC:Z

.field private isContinuousShootingSupported:Z

.field private isDoubleISPSupported:Z

.field private isDoubleStorageSupported:Z

.field private isHDRSupported:Z

.field private isLowlightSupported:Z

.field private isMicrospurSupported:Z

.field private isNightPortraitSupported:Z

.field private isPanoramaSupported:Z

.field private isPicturePuzzleSupported:Z

.field private isProVersion:Z

.field private isQRCodeSupported:Z

.field private isROW:Z

.field private isRemoveSupported:Z

.field private isRewindSupported:Z

.field private isSelfCaptureSupported:Z

.field private isSmileCaptureSupported:Z

.field private isSnapWhenFocusing:Z

.field private isSupermodeSupported:Z

.field private isTimerSupported:Z

.field private isUserGuideSupported:Z

.field private isUsercenterSupported:Z

.field private isVoiceShutterSupported:Z

.field private isWideSupported:Z

.field private isZSDEnabled:Z

.field private mCameraScreenBrightnessSupported:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mIsShowWaterLocation:Z

.field private mMicroSaturationMode:Z

.field private mVolumeKeyPreference:I

.field private maxLeSCFVersion:I

.field private minLeSCFVersion:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isZSDEnabled:Z

    .line 20
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSnapWhenFocusing:Z

    .line 22
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleISPSupported:Z

    .line 70
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mCameraScreenBrightnessSupported:Z

    .line 72
    iput v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mVolumeKeyPreference:I

    .line 76
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mMicroSaturationMode:Z

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->minLeSCFVersion:I

    .line 80
    const/16 v0, 0xc

    iput v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->maxLeSCFVersion:I

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isCMCC:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/CameraConfig;->initConfig(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static getCameraScreenBrightness()I
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const-class v1, Lcom/lenovo/scg/camera/CameraConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraConfig;->sInstance:Lcom/lenovo/scg/camera/CameraConfig;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/lenovo/scg/camera/CameraConfig;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/CameraConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/camera/CameraConfig;->sInstance:Lcom/lenovo/scg/camera/CameraConfig;

    .line 96
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraConfig;->sInstance:Lcom/lenovo/scg/camera/CameraConfig;
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

.method private initConfig(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->minLeSCFVersion:I

    .line 102
    const v2, 0x7f0e0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->maxLeSCFVersion:I

    .line 103
    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isPanoramaSupported:Z

    .line 104
    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSmileCaptureSupported:Z

    .line 105
    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSupermodeSupported:Z

    .line 106
    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isUsercenterSupported:Z

    .line 107
    const v2, 0x7f0b0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isUserGuideSupported:Z

    .line 108
    const v2, 0x7f0b0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isRewindSupported:Z

    .line 109
    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraConfig;->isRemoveSupported:Z

    .line 110
    invoke-static {p1}, Lcom/lenovo/scg/camera/Storage;->initStorageDirectory(Landroid/content/Context;)I

    move-result v2

    if-le v2, v1, :cond_0

    const v2, 0x7f0b001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleStorageSupported:Z

    .line 111
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported:Z

    .line 112
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isPicturePuzzleSupported:Z

    .line 113
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isHDRSupported:Z

    .line 114
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isLowlightSupported:Z

    .line 115
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isNightPortraitSupported:Z

    .line 116
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isBurstModeSupported:Z

    .line 117
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSelfCaptureSupported:Z

    .line 118
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isMicrospurSupported:Z

    .line 119
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isContinuousShootingSupported:Z

    .line 121
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isTimerSupported:Z

    .line 122
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isAntiShakeSupported:Z

    .line 123
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isVoiceShutterSupported:Z

    .line 125
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isROW:Z

    .line 126
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion:Z

    .line 128
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isWideSupported:Z

    .line 129
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isCMCC:Z

    .line 131
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mIsShowWaterLocation:Z

    .line 133
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mCameraScreenBrightnessSupported:Z

    .line 134
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mVolumeKeyPreference:I

    .line 135
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mDefaultFocusMode:Ljava/lang/String;

    .line 136
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/CameraConfig;->mMicroSaturationMode:Z

    .line 137
    const-string v1, "CameraConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraScreenBrightnessSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/CameraConfig;->mCameraScreenBrightnessSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "CameraConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVolumeKeyPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/CameraConfig;->mVolumeKeyPreference:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "CameraConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultFocusMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraConfig;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static isCameraIdSupported(I)Z
    .locals 5
    .param p0, "cameraId"    # I

    .prologue
    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, "supported":Z
    :try_start_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 385
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 386
    const/4 v2, 0x1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isRowVersion()Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefaultFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mDefaultFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVolumeKeyPreference()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mVolumeKeyPreference:I

    return v0
.end method

.method public isAntiShakeSupported()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isAntiShakeSupported:Z

    return v0
.end method

.method public isBurstModeSupported()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isBurstModeSupported:Z

    return v0
.end method

.method public isCMCC()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isCMCC:Z

    return v0
.end method

.method public isCameraScreenBrightnessSupported()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mCameraScreenBrightnessSupported:Z

    return v0
.end method

.method public isContinuousShootingSupported()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isContinuousShootingSupported:Z

    return v0
.end method

.method public isDoubleISPSupported()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleISPSupported:Z

    return v0
.end method

.method public isDoubleStorageSupported()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleStorageSupported:Z

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isHDRSupported:Z

    return v0
.end method

.method public isLowlightSupported()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isLowlightSupported:Z

    return v0
.end method

.method public isMatchLeSCF(Ljava/lang/String;)I
    .locals 8
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    const-string v5, "CameraConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMatchLeSCF version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    const-string v3, "CameraConfig"

    const-string/jumbo v4, "version is empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return v2

    .line 367
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "vercodes":[Ljava/lang/String;
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int v0, v5, v6

    .line 370
    .local v0, "vercode":I
    iget v5, p0, Lcom/lenovo/scg/camera/CameraConfig;->maxLeSCFVersion:I

    if-le v0, v5, :cond_2

    move v2, v3

    .line 372
    goto :goto_0

    .line 373
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/camera/CameraConfig;->minLeSCFVersion:I

    if-ge v0, v3, :cond_0

    move v2, v4

    .line 375
    goto :goto_0
.end method

.method public isMicroSaturationMode()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mMicroSaturationMode:Z

    return v0
.end method

.method public isMicrospurSupported()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isMicrospurSupported:Z

    return v0
.end method

.method public isNightPortraitSupported()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isNightPortraitSupported:Z

    return v0
.end method

.method public isPanoramaSupported()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isPanoramaSupported:Z

    return v0
.end method

.method public isPicturePuzzleSupported()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isPicturePuzzleSupported:Z

    return v0
.end method

.method public isProVersion()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion:Z

    return v0
.end method

.method public isQRCodeSupported()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported:Z

    return v0
.end method

.method public isROW()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isROW:Z

    return v0
.end method

.method public isRemoveSupported()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isRemoveSupported:Z

    return v0
.end method

.method public isRewindSupported()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isRewindSupported:Z

    return v0
.end method

.method public isSelfCaptureSupported()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSelfCaptureSupported:Z

    return v0
.end method

.method public isShowWaterLocation()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->mIsShowWaterLocation:Z

    return v0
.end method

.method public isSmileCaptureSupported()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSmileCaptureSupported:Z

    return v0
.end method

.method public isSnapWhenFocusing()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSnapWhenFocusing:Z

    return v0
.end method

.method public isSupermodeSupported()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSupermodeSupported:Z

    return v0
.end method

.method public isTimerSupported()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isTimerSupported:Z

    return v0
.end method

.method public isUserGuideSupported()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isUserGuideSupported:Z

    return v0
.end method

.method public isUsercenterSupported()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isUsercenterSupported:Z

    return v0
.end method

.method public isVoiceShutterSupported()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isVoiceShutterSupported:Z

    return v0
.end method

.method public isWideSupported()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isWideSupported:Z

    return v0
.end method

.method public isZSDEnabled()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraConfig;->isZSDEnabled:Z

    return v0
.end method

.method public readHardwareAbility(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 329
    const-string v6, "CameraConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readHardwareAbility:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    const-string v6, "anql"

    const-string v7, "hardwareability must not be empty!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "params":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v4, v0, v1

    .line 336
    .local v4, "param":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 335
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_2
    aget-object v6, v2, v9

    const-string v7, "bZSD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/CameraConfig;->isZSDEnabled:Z

    goto :goto_2

    .line 342
    :cond_3
    aget-object v6, v2, v9

    const-string v7, "b2PIP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 343
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleISPSupported:Z

    goto :goto_2

    .line 344
    :cond_4
    aget-object v6, v2, v9

    const-string v7, "bSnapWhenFocusing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 345
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSnapWhenFocusing:Z

    goto :goto_2

    .line 347
    :cond_5
    const-string v6, "CameraConfig"

    const-string/jumbo v7, "unknown parameters!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    .end local v2    # "items":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :cond_6
    const-string v6, "CameraConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isZSDEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lenovo/scg/camera/CameraConfig;->isZSDEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v6, "CameraConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDoubleISPSupported:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lenovo/scg/camera/CameraConfig;->isDoubleISPSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v6, "CameraConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSnapWhenFocusing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lenovo/scg/camera/CameraConfig;->isSnapWhenFocusing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setZSDEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/CameraConfig;->isZSDEnabled:Z

    .line 315
    return-void
.end method
