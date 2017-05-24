.class public Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFContinuousShotModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;
    }
.end annotation


# static fields
.field public static final CONTINUOUS_SHOT_COLOR_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field public static final CONTINUOUS_SHOT_COLOR_FORMAT_YUV:Ljava/lang/String; = "YUV"

.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFContinuousShottModeStub"


# instance fields
.field private bRestartPreviewOnTakenPic:Z

.field private mContinuousShotCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;

.field private mContinuousShotColorFormat:Ljava/lang/String;

.field private mContinuousShotMaxSize:I

.field private mContinuousShotTimeInterval:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 3
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 20
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotMaxSize:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotTimeInterval:J

    .line 26
    const-string v0, "jpeg"

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotColorFormat:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->bRestartPreviewOnTakenPic:Z

    .line 31
    const-string v0, "continous"

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeSupportZSD:Z

    .line 32
    const-string v0, "[lescf_app] LeSCFContinuousShottModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, LeSCFContinuousShotModeStub, mModeSupportZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeSupportZSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private setMaxFps(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "nMaxFps"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public breakContinuousShot(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 137
    const-string v0, "[lescf_app] LeSCFContinuousShottModeStub"

    const-string v1, "kbg374, breakContinuousShot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "ex_feature-continuous_shot_break"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 140
    return-void
.end method

.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 78
    const-string v0, "[lescf_app] LeSCFContinuousShottModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, exitModeParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mbNeedCommitParam:Z

    .line 84
    :cond_0
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeSupportZSD:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "[lescf_app] LeSCFContinuousShottModeStub"

    return-object v0
.end method

.method protected handleNotify(I)Z
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 102
    const v3, -0x70ffffee

    if-ne p1, v3, :cond_0

    .line 103
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->bRestartPreviewOnTakenPic:Z

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LeFeature msg: LESCF_MSG_NOTIFY_CALLBACK_NO_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return v1

    .line 107
    :cond_0
    const v3, -0x70ffffef    # -6.3109E-30f

    if-ne p1, v3, :cond_1

    .line 108
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->bRestartPreviewOnTakenPic:Z

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LeFeature msg: LESCF_MSG_NOTIFY_CALLBACK_HAS_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotBegin(I)I

    move-result v0

    .line 114
    .local v0, "nTmp":I
    if-le v0, v4, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: getShotBegin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotEnd(I)I

    move-result v0

    .line 120
    if-le v0, v4, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: getShotEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 125
    goto :goto_0
.end method

.method protected handleOnPictureCallback([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 199
    const-string v0, "[lescf_app] LeSCFContinuousShottModeStub"

    const-string v1, "kbg374, handleOnPictureCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->bRestartPreviewOnTakenPic:Z

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;->OnContinuousShotPictureTaken([BZ)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContinuousShotColorFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "colorFormat"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotColorFormat:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setContinuousShotMaxSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotMaxSize:I

    .line 176
    return-void
.end method

.method public setContinuousShotTimerInterval(J)V
    .locals 1
    .param p1, "timer"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotTimeInterval:J

    .line 152
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;)V
    .locals 0
    .param p1, "p"    # Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub$ContinuousShotCallbackListener;

    .line 195
    return-void
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 6
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x6

    .line 37
    const-string v1, "[lescf_app] LeSCFContinuousShottModeStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, updateParam, current mode status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    if-ne v1, v4, :cond_1

    .line 73
    :cond_0
    return-object p1

    .line 43
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    if-eq v1, v4, :cond_3

    .line 44
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "ex_feature"

    const-string v2, "continuous"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "ex_feature-continuous_shot_max"

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotMaxSize:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 47
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mContinuousShotColorFormat:Ljava/lang/String;

    const-string v2, "YUV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const-string v1, "ex_feature-set-cur-format"

    const-string v2, "YUV"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    iput v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mModeStatus:I

    .line 52
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mbNeedCommitParam:Z

    .line 55
    :cond_3
    if-eqz p2, :cond_0

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 60
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->mbNeedCommitParam:Z

    .line 59
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_4
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
