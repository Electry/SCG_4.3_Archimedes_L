.class public Lcom/lenovo/scg/camera/way/VsignWay;
.super Lcom/lenovo/scg/camera/way/CaptureWay;
.source "VsignWay.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;-><init>()V

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/VsignWay;->set3sDelayMust(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessVSign:Z

    .line 22
    return-void
.end method

.method public bridge synthetic getShtterTimer()I
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v0

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessVSign:Z

    .line 16
    return-void
.end method

.method public bridge synthetic set3sDelayMust(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->set3sDelayMust(Z)V

    return-void
.end method

.method public bridge synthetic setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V

    return-void
.end method
