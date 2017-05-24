.class public Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;
.super Ljava/lang/Object;
.source "CameraLeSCFProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] CameraLeSCFProxy"


# instance fields
.field private mLeSCF3RDModeStub:Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

.field private mLeSCFContinuousShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

.field private mLeSCFDefaultModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

.field private mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

.field private mLeSCFHdrModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

.field private mLeSCFLowLightModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

.field private mLeSCFOneShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

.field private mLeSCFPanoramaModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .line 28
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFDefaultModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    .line 29
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCF3RDModeStub:Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    .line 30
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHdrModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    .line 31
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFLowLightModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFPanoramaModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    .line 33
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFContinuousShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    .line 34
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFOneShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    .line 35
    return-void
.end method

.method private getSCFHardwareStub()Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    return-object v0
.end method


# virtual methods
.method public get3rdModeStub()Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCF3RDModeStub:Lcom/lenovo/scg/camera/lescf/LeSCF3rdModeStub;

    return-object v0
.end method

.method public getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFDefaultModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    return-object v0
.end method

.method public getSCFContinuousShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFContinuousShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    return-object v0
.end method

.method public getSCFHdrModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHdrModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    return-object v0
.end method

.method public getSCFLowLightModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFLowLightModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    return-object v0
.end method

.method public getSCFOneShotModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFOneShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    return-object v0
.end method

.method public getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFPanoramaModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    return-object v0
.end method

.method public updateCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHardwareCapabilityStub:Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFDefaultModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFHdrModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFPanoramaModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFLowLightModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFContinuousShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFContinuousShotModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->mLeSCFOneShotModeStub:Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFOneShotModeStub;->setCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 45
    return-void
.end method
