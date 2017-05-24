.class public Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.source "LeSCFLowLightModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;,
        Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFLowLightModeStub"

.field private static mLowlitListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;


# instance fields
.field private compress:J

.field private end:J

.field private mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

.field private prepare:J

.field private process:J

.field private shot:J

.field private start:J

.field private temp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mLowlitListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;)V
    .locals 3
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .param p2, "harewareCapbility"    # Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 86
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    .line 87
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->prepare:J

    .line 88
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->shot:J

    .line 89
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->process:J

    .line 90
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->compress:J

    .line 91
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->end:J

    .line 92
    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

    .line 21
    const-string v0, "[lescf_app] LeSCFLowLightModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSCFLowLightModeStub, SupportZSD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lowlit"

    invoke-virtual {p2, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getSupportZSDbyMode(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static setMonitorListener(Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;

    .prologue
    .line 167
    sput-object p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mLowlitListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;

    .line 168
    return-void
.end method


# virtual methods
.method public OnNotifyCallback(I)Z
    .locals 6
    .param p1, "what"    # I

    .prologue
    const/4 v0, 0x1

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->OnNotifyCallback(I)Z

    move-result v0

    :goto_0
    return v0

    .line 104
    :pswitch_0
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_TAKEPICTURE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->prepare:J

    .line 106
    const-string v1, "Lowlit_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->prepare:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_GET_YUV!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->shot:J

    .line 112
    const-string v1, "Lowlit_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shot time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->shot:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_CHANGE_FORMAT!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;->onShotEnd()V

    .line 121
    :cond_0
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_RUN_ALGORITHM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    goto/16 :goto_0

    .line 126
    :pswitch_4
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_ENCODE_JPEG!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->process:J

    .line 128
    const-string v1, "Lowlit_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->process:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    goto/16 :goto_0

    .line 132
    :pswitch_5
    const-string v1, "Lowlit_Performance"

    const-string v2, "Lowlit LESCF_MSG_TIMER_CALLBACK_DATA!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->compress:J

    .line 134
    const-string v1, "Lowlit_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compress time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->compress:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch -0x70ffffe5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected exitModeParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    .line 56
    const-string v0, "[lescf_app] LeSCFLowLightModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, exitModeParam, current mode status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mModeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "ex_feature-enable"

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mbNeedCommitParam:Z

    .line 60
    return-object p1
.end method

.method public getSupportZSD()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "[lescf_app] LeSCFLowLightModeStub"

    return-object v0
.end method

.method protected handleOnPictureCallback([B)Z
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 143
    const-string v0, "Lowlit_Performance"

    const-string v1, "Lowlit end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->end:J

    .line 145
    const-string v0, "Lowlit_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->end:J

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mLowlitListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;

    if-eqz v0, :cond_0

    .line 147
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mLowlitListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->prepare:J

    iget-wide v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->shot:J

    iget-wide v6, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->process:J

    iget-wide v8, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->compress:J

    iget-wide v10, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->end:J

    iget-wide v12, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    sub-long/2addr v10, v12

    invoke-interface/range {v1 .. v11}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;->onLowlitTaken(JJJJJ)V

    .line 149
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->prepare:J

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->shot:J

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->process:J

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->compress:J

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->end:J

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->temp:J

    .line 156
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;->handleOnPictureCallback([B)Z

    move-result v0

    return v0
.end method

.method public onShutterClick()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "Lowlit_Performance"

    const-string v1, "Lowlit start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->start:J

    .line 97
    return-void
.end method

.method public setExParam(Landroid/hardware/Camera$Parameters;III)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "brightness"    # I
    .param p3, "denoise"    # I
    .param p4, "picNum"    # I

    .prologue
    .line 70
    const-string v0, "[lescf_app] LeSCFLowLightModeStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, set develp ex param, brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", denoise:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", picNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "ex_feature-set-lowlight-light-intensity"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 72
    const-string v0, "ex_feature-set-lowlight-noise-intensity"

    invoke-virtual {p1, v0, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 73
    const-string v0, "ex_feature-set-lowlight-input-buf-count"

    invoke-virtual {p1, v0, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setExFeatureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShotEndListener(Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mShotEndListener:Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;

    .line 179
    return-void
.end method

.method protected updateParam(Landroid/hardware/Camera$Parameters;[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Landroid/hardware/Camera$Parameters;
    .locals 6
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "args"    # [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 26
    const-string v1, "[lescf_app] LeSCFLowLightModeStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, updateParam, current mode status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mModeStatus:I

    if-ne v1, v5, :cond_1

    .line 51
    :cond_0
    return-object p1

    .line 31
    :cond_1
    const-string v1, "ex_feature-enable"

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "ex_feature"

    const-string v2, "lowlit"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput v5, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mModeStatus:I

    .line 39
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mbNeedCommitParam:Z

    .line 41
    if-eqz p2, :cond_0

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 46
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setCallbackFormat(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ModeArgs;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->mbNeedCommitParam:Z

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
