.class public Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFNightPortraitModeStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFNightPortraitModeStub"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 1
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 15
    const-string v0, "lowlit"

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mModeSupportZSD:Z

    .line 16
    return-void
.end method


# virtual methods
.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mModeStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 46
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mbNeedCommitParam:Z

    .line 49
    :cond_0
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mModeSupportZSD:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "[lescf_app] LeSCFNightPortraitModeStub"

    return-object v0
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 20
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mModeStatus:I

    if-ne v1, v4, :cond_1

    .line 40
    :cond_0
    return-object p1

    .line 24
    :cond_1
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "ex_feature"

    const-string/jumbo v2, "night_portrait"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mModeStatus:I

    .line 27
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mbNeedCommitParam:Z

    .line 29
    if-eqz p2, :cond_0

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 34
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFNightPortraitModeStub;->mbNeedCommitParam:Z

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
