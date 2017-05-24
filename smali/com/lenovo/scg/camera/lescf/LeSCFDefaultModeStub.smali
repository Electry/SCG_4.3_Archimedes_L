.class public Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFDefaultModeStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFDefaultModeStub"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v3, 0x1

    .line 31
    const-string v0, "[lescf_app] LeSCFDefaultModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, exitModeParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mModeStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mModeStatus:I

    if-eq v0, v3, :cond_0

    .line 34
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mbNeedCommitParam:Z

    .line 37
    :cond_0
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "[lescf_app] LeSCFDefaultModeStub"

    return-object v0
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 20
    const-string v0, "[lescf_app] LeSCFDefaultModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, updateParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mbNeedCommitParam:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->mModeStatus:I

    .line 26
    return-object p1
.end method
