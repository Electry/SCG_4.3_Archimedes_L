.class public Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFCustomBurstModeStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFCustomBurstModeStub"


# instance fields
.field private mBurstLengthMax:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 1
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 18
    const-string v0, "hdr"

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeSupportZSD:Z

    .line 19
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getBurstLengthMax()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    .line 20
    return-void
.end method

.method private setBurstLength(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v0, 0x0

    .line 184
    const/4 v1, 0x2

    iget v2, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mName:I

    if-eq v1, v2, :cond_0

    .line 198
    :goto_0
    return v0

    .line 188
    :cond_0
    iget v1, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 189
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    iput v1, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    .line 192
    :cond_1
    iget v1, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    if-ltz v1, :cond_2

    iget v1, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    if-le v1, v2, :cond_3

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBurstLength error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_3
    const-string v0, "ex_feature-burst_length"

    iget v1, p2, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;->mValue:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBurstSelect(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "burstSelect"    # Ljava/lang/String;

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 77
    const-string v0, "ex_feature-burst_select"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mbNeedCommitParam:Z

    .line 80
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 62
    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 63
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mbNeedCommitParam:Z

    .line 66
    :cond_0
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeSupportZSD:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "[lescf_app] LeSCFCustomBurstModeStub"

    return-object v0
.end method

.method protected handleNotify(I)Z
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 86
    const/4 v0, -0x1

    .line 87
    .local v0, "nTmp":I
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotBegin(I)I

    move-result v0

    .line 88
    if-le v0, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

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

    .line 129
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getShotEnd(I)I

    move-result v0

    .line 94
    if-le v0, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

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

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getBurstRotation(I)I

    move-result v0

    .line 100
    if-le v0, v2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: getBurstRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailWidth(I)I

    move-result v0

    .line 106
    if-le v0, v2, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailHeight(I)I

    move-result v0

    .line 112
    if-le v0, v2, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    :cond_4
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailYuvWidth(I)I

    move-result v0

    .line 118
    if-le v0, v2, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailYuvWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    :cond_5
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailYuvHeight(I)I

    move-result v0

    .line 124
    if-le v0, v2, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailYuvHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public setBurstLength(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "nBurstLength"    # I

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 169
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 170
    iget p2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    .line 173
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    if-le p2, v0, :cond_3

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBurstLength error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mBurstLengthMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local p1    # "param":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object p1

    .line 178
    .restart local p1    # "param":Landroid/hardware/Camera$Parameters;
    :cond_3
    const-string v0, "ex_feature-burst_length"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 180
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    goto :goto_0
.end method

.method public setThumnalSize(Landroid/hardware/Camera$Parameters;IIII)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "wRgb"    # I
    .param p3, "hRgb"    # I
    .param p4, "wYuv"    # I
    .param p5, "hYuv"    # I

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "bUpdate":Z
    if-lez p2, :cond_1

    .line 138
    const-string v1, "ex_feature-thumbnail_width"

    invoke-virtual {p1, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 139
    const/4 v0, 0x1

    .line 141
    :cond_1
    if-lez p3, :cond_2

    .line 142
    const-string v1, "ex_feature-thumbnail_height"

    invoke-virtual {p1, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 143
    const/4 v0, 0x1

    .line 146
    :cond_2
    if-lez p4, :cond_3

    .line 147
    const-string v1, "ex_feature-thumbnail_yuv_width"

    invoke-virtual {p1, v1, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 148
    const/4 v0, 0x1

    .line 151
    :cond_3
    if-lez p5, :cond_4

    .line 152
    const-string v1, "ex_feature-thumbnail_yuv_height"

    invoke-virtual {p1, v1, p5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 153
    const/4 v0, 0x1

    .line 156
    :cond_4
    if-nez v0, :cond_5

    .line 161
    .end local p1    # "param":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object p1

    .line 160
    .restart local p1    # "param":Landroid/hardware/Camera$Parameters;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 161
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    goto :goto_0
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 24
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeStatus:I

    if-ne v1, v4, :cond_1

    .line 57
    :cond_0
    return-object p1

    .line 28
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeStatus:I

    if-eq v1, v4, :cond_2

    .line 29
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "ex_feature"

    const-string v2, "customed_burst"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mModeStatus:I

    .line 32
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mbNeedCommitParam:Z

    .line 35
    :cond_2
    if-eqz p2, :cond_0

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 40
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mbNeedCommitParam:Z

    .line 39
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_4
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->setBurstLength(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFCustomBurstModeStub;->mbNeedCommitParam:Z

    goto :goto_1
.end method
