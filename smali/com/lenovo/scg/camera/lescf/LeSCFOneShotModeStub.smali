.class public Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFOneShotModeStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFOneShotModeStub"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 15
    return-void
.end method

.method private getAsyncBufFormat(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 54
    const-string v0, "[lescf_app] LeSCFOneShotModeStub"

    const-string v1, "kbg374, get Support format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "ex_feature-get-cur-yuv-format"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 45
    const-string v0, "[lescf_app] LeSCFOneShotModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, exitModeParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "ex_feature-set-cur-format"

    const-string v1, "JpegStream"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mbNeedCommitParam:Z

    .line 50
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "[lescf_app] LeSCFOneShotModeStub"

    return-object v0
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 6
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 19
    const-string v1, "[lescf_app] LeSCFOneShotModeStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, updateParam, current mode status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mModeStatus:I

    if-ne v1, v5, :cond_1

    .line 40
    :cond_0
    return-object p1

    .line 23
    :cond_1
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "ex_feature"

    const-string/jumbo v2, "once"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "ex_feature-set-cur-format"

    const-string v2, "YUV"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->getAsyncBufFormat(Landroid/hardware/Camera$Parameters;)V

    .line 27
    iput v5, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mModeStatus:I

    .line 28
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mbNeedCommitParam:Z

    .line 30
    if-eqz p2, :cond_0

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 35
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->mbNeedCommitParam:Z

    .line 34
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
