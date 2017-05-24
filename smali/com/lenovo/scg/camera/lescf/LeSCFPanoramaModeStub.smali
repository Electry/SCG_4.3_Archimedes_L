.class public Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFPanoramaModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;,
        Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFPanoramaModeStub"


# instance fields
.field private bRestartPreviewOnTakenPic:Z

.field private mPanoramaCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;

.field private mPanoramaErrorCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 3
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->bRestartPreviewOnTakenPic:Z

    .line 16
    const-string/jumbo v0, "panorama"

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeSupportZSD:Z

    .line 17
    const-string v0, "[lescf_app] LeSCFPanoramaModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModeSupportZSD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeSupportZSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public breakContinuousShot(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 126
    const-string v0, "ex_feature-panorama_break"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 128
    return-void
.end method

.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 65
    const-string v0, "[lescf_app] LeSCFPanoramaModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitModeParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "ex_feature"

    const-string/jumbo v1, "normal"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mbNeedCommitParam:Z

    .line 69
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeSupportZSD:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "[lescf_app] LeSCFPanoramaModeStub"

    return-object v0
.end method

.method protected handleNotify(I)Z
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 87
    const v3, -0x70ffffee

    if-ne p1, v3, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->bRestartPreviewOnTakenPic:Z

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LeFeature msg: LESCF_MSG_NOTIFY_CALLBACK_NO_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v1

    .line 92
    :cond_0
    const v3, -0x70ffffef    # -6.3109E-30f

    if-ne p1, v3, :cond_1

    .line 93
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->bRestartPreviewOnTakenPic:Z

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LeFeature msg: LESCF_MSG_NOTIFY_CALLBACK_HAS_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotBegin(I)I

    move-result v0

    .line 99
    .local v0, "nTmp":I
    if-le v0, v4, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

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

    .line 104
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotEnd(I)I

    move-result v0

    .line 105
    if-le v0, v4, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

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

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaErrorCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;

    if-eqz v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaErrorCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;->OnPanoramaErrorNotify(I)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method protected handleOnPictureCallback([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->bRestartPreviewOnTakenPic:Z

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;->OnPanoramaPictureTaken([BZ)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirection(I)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 138
    .local v0, "param":Landroid/hardware/Camera$Parameters;
    const-string v1, "ex_feature-panorama_direction"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    return-object v1
.end method

.method public setErrorListener(Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;)V
    .locals 0
    .param p1, "p"    # Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaErrorCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;

    .line 163
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;)V
    .locals 0
    .param p1, "p"    # Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mPanoramaCallbackListener:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;

    .line 152
    return-void
.end method

.method public startContinousShot(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 132
    const-string v0, "ex_feature-panorama_break"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 134
    return-void
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 23
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateParam"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeStatus:I

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setExFeatureOnAndUpdateParam(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 27
    :cond_0
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "ex_feature"

    const-string/jumbo v2, "panorama"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x7

    iput v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mModeStatus:I

    .line 31
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mbNeedCommitParam:Z

    .line 33
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v2, 0xf00

    if-ne v1, v2, :cond_2

    .line 34
    const-string v1, "ex_feature-panorama_scalerate"

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 37
    :goto_0
    const-string v1, "ex_feature-panorama_framefactor"

    invoke-virtual {p1, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 38
    const-string v1, "ex_feature-panorama_direction"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 40
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mbNeedCommitParam:Z

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParam end, mbNeedCommitParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mbNeedCommitParam:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-nez p2, :cond_3

    .line 60
    :cond_1
    return-object p1

    .line 36
    :cond_2
    const-string v1, "ex_feature-panorama_scalerate"

    invoke-virtual {p1, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 48
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->mbNeedCommitParam:Z

    .line 47
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
