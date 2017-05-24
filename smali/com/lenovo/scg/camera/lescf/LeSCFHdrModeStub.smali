.class public Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFHdrModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;,
        Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFHdrModeStub"

.field private static mHdrListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;


# instance fields
.field private compress:J

.field private end:J

.field private mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

.field private prepare:J

.field private process:J

.field private shot:J

.field private start:J

.field private temp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mHdrListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 3
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 187
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    .line 188
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->prepare:J

    .line 189
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->shot:J

    .line 190
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->process:J

    .line 191
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->compress:J

    .line 192
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->end:J

    .line 193
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

    .line 16
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSCFHdrModeStub, SupportZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hdr"

    invoke-virtual {p2, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public static setMonitorListener(Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;

    .prologue
    .line 269
    sput-object p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mHdrListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;

    .line 270
    return-void
.end method


# virtual methods
.method public OnNotifyCallback(I)Z
    .locals 6
    .param p1, "what"    # I

    .prologue
    const/4 v0, 0x1

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 240
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->OnNotifyCallback(I)Z

    move-result v0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_TAKEPICTURE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->prepare:J

    .line 207
    const-string v1, "HDR_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->prepare:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_GET_YUV!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->shot:J

    .line 213
    const-string v1, "HDR_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shot time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->shot:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :pswitch_2
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_CHANGE_FORMAT!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;->onShotEnd()V

    .line 223
    :cond_0
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_RUN_ALGORITHM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    goto/16 :goto_0

    .line 228
    :pswitch_4
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_ENCODE_JPEG!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->process:J

    .line 230
    const-string v1, "HDR_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->process:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    goto/16 :goto_0

    .line 234
    :pswitch_5
    const-string v1, "HDR_Performance"

    const-string v2, "HDR LESCF_MSG_TIMER_CALLBACK_DATA!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->compress:J

    .line 236
    const-string v1, "HDR_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compress time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->compress:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch -0x70ffffe5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public changeExHdrDump(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "on"    # Z

    .prologue
    .line 145
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change develp ex param, hdr dump:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 151
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    const-string v0, "ex_feature-set-hdr-dump"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 159
    return-void

    .line 155
    :cond_1
    const-string v0, "ex_feature-set-hdr-dump"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeExParam(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "tone"    # I
    .param p3, "brightness"    # I

    .prologue
    .line 174
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, set develp ex param, tone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setHdrToneBrightness(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    .line 177
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 48
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, exitModeParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mbNeedCommitParam:Z

    .line 52
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    return-object v0
.end method

.method protected handleOnPictureCallback([B)Z
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 245
    const-string v0, "HDR_Performance"

    const-string v1, "HDR end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->end:J

    .line 247
    const-string v0, "HDR_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->end:J

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mHdrListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;

    if-eqz v0, :cond_0

    .line 249
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mHdrListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->prepare:J

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->shot:J

    iget-wide v6, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->process:J

    iget-wide v8, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->compress:J

    iget-wide v10, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->end:J

    iget-wide v12, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    sub-long/2addr v10, v12

    invoke-interface/range {v1 .. v11}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;->onHdrTaken(JJJJJ)V

    .line 251
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->prepare:J

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->shot:J

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->process:J

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->compress:J

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->end:J

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->temp:J

    .line 258
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->handleOnPictureCallback([B)Z

    move-result v0

    return v0
.end method

.method public onShutterClick()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "HDR_Performance"

    const-string v1, "HDR start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->start:J

    .line 198
    return-void
.end method

.method public setHdrAlgorithm(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "algorithm"    # I

    .prologue
    .line 107
    const-string v0, "ex_feature-algorithm"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 108
    return-object p1
.end method

.method public setHdrDump(Landroid/hardware/Camera$Parameters;Z)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "on"    # Z

    .prologue
    .line 122
    const-string v0, "[lescf_app] LeSCFHdrModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set develp ex param, hdr dump:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz p2, :cond_0

    .line 125
    const-string v0, "ex_feature-set-hdr-dump"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-object p1

    .line 128
    :cond_0
    const-string v0, "ex_feature-set-hdr-dump"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHdrEVLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "ev"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    .line 72
    .local v0, "hardwareType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 73
    const-string v1, "ex_feature-hdr_ev_level"

    invoke-virtual {p1, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-object p1

    .line 74
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public setHdrToneBrightness(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "tone"    # I
    .param p3, "brightness"    # I

    .prologue
    .line 91
    const-string v0, "ex_feature-set-hdr-tone"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 92
    const-string v0, "ex_feature-set-hdr-brightness"

    invoke-virtual {p1, v0, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 93
    return-object p1
.end method

.method public setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;

    .line 281
    return-void
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 6
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 21
    const-string v1, "[lescf_app] LeSCFHdrModeStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, updateParam, current mode status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mModeStatus:I

    if-ne v1, v5, :cond_1

    .line 43
    :cond_0
    return-object p1

    .line 26
    :cond_1
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "ex_feature"

    const-string v2, "hdr"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput v5, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mModeStatus:I

    .line 30
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mbNeedCommitParam:Z

    .line 32
    if-eqz p2, :cond_0

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 37
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->mbNeedCommitParam:Z

    .line 36
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
