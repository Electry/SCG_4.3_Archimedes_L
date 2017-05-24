.class public Lcom/lenovo/scg/camera/way/SmileAS;
.super Lcom/lenovo/scg/camera/way/CaptureWay;
.source "SmileAS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmile:Z

    .line 18
    return-void
.end method

.method public bridge synthetic getShtterTimer()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v0

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmile:Z

    .line 12
    return-void
.end method

.method public bridge synthetic set3sDelayMust(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->set3sDelayMust(Z)V

    return-void
.end method

.method public bridge synthetic setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V

    return-void
.end method
