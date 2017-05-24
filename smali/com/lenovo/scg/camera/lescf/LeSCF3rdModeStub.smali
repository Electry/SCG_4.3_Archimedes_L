.class public Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCF3rdModeStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCF3rdModeStub"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v2, 0x1

    .line 28
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mModeStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mModeStatus:I

    if-eq v0, v2, :cond_0

    .line 29
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mbNeedCommitParam:Z

    .line 32
    :cond_0
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mModeSupportZSD:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "[lescf_app] LeSCF3rdModeStub"

    return-object v0
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v2, 0x1

    .line 19
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mbNeedCommitParam:Z

    .line 22
    iput v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;->mModeStatus:I

    .line 23
    return-object p1
.end method
