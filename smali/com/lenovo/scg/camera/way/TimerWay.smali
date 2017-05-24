.class public Lcom/lenovo/scg/camera/way/TimerWay;
.super Lcom/lenovo/scg/camera/way/CaptureWay;
.source "TimerWay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;
    }
.end annotation


# instance fields
.field private final MSG_UPDATE_TIMER_VALUE:I

.field private final SECOND_1:I

.field private final TAG:Ljava/lang/String;

.field private currentTime:I

.field private mHandler:Landroid/os/Handler;

.field private mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

.field private timerValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;-><init>()V

    .line 20
    const-string v0, "TimerWay"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->TAG:Ljava/lang/String;

    .line 23
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->SECOND_1:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    .line 27
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->MSG_UPDATE_TIMER_VALUE:I

    .line 39
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerWay$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/TimerWay$1;-><init>(Lcom/lenovo/scg/camera/way/TimerWay;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/TimerWay;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerWay;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/TimerWay;->remindTimeValue()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/TimerWay;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerWay;

    .prologue
    .line 18
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/way/TimerWay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerWay;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/way/TimerWay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerWay;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    return p1
.end method

.method private remindTimeValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    const-string v0, "TimerWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remindTimeValue: currentValue == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    if-gtz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerWay;->clickShutterButton()V

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/camera/way/TimerUI;->showTimerRemind(Landroid/content/Context;I)V

    .line 124
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerWay;->setCurrentTime(I)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCurrentTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I

    .line 151
    return-void
.end method

.method private setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .prologue
    .line 95
    const-string v0, "TimerWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatus from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ----> to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .line 97
    return-void
.end method


# virtual methods
.method protected clickShutterButton()V
    .locals 3

    .prologue
    .line 132
    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setCurrentTime(I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    instance-of v1, v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture: mModePara == NULL ||  mModePara not instanceof ModePara  then return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->CAPTURING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getCaptureListener()Lcom/lenovo/scg/camera/mode/CaptureListener;

    move-result-object v0

    .line 140
    .local v0, "listener":Lcom/lenovo/scg/camera/mode/CaptureListener;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureListener;->capture(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    sget-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 182
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerWay;->setCurrentTime(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public bridge synthetic getShtterTimer()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v0

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isTimering()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    const-string v0, "TimerWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause: mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    sget-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 84
    iget v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerWay;->setCurrentTime(I)V

    .line 86
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 57
    const-string v2, "TimerWay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick : mStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v3, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v2, v3, :cond_0

    .line 59
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v3, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v2, v3, :cond_1

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 65
    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setCurrentTime(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mStatus:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v2, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->CAPTURING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 69
    goto :goto_0

    :cond_2
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 156
    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->setStatus(Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;)V

    .line 158
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/camera/way/TimerWay$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/way/TimerWay$2;-><init>(Lcom/lenovo/scg/camera/way/TimerWay;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelChangeListener(Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;)V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    instance-of v1, v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay;->mWayPara:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/way/TimerUI;->setPrefrences(Landroid/content/SharedPreferences;)V

    .line 173
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->updateLevelPanel()V

    .line 174
    return-void
.end method

.method public bridge synthetic set3sDelayMust(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->set3sDelayMust(Z)V

    return-void
.end method

.method public bridge synthetic setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V

    return-void
.end method
