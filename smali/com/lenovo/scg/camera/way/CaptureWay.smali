.class abstract Lcom/lenovo/scg/camera/way/CaptureWay;
.super Ljava/lang/Object;
.source "CaptureWay.java"


# static fields
.field private static final MSG_UPDATE_TIMER:I = 0x1

.field private static final TIME_1_S:I = 0x3e8

.field public static isShutterFromWay:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private is3sDelayMust:Z

.field private mCurrentTimer:I

.field protected mHandler:Landroid/os/Handler;

.field private mShtterTimer:I

.field private mToast:Landroid/widget/Toast;

.field protected mWayPara:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/way/CaptureWay;->isShutterFromWay:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "CaptureWay"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->TAG:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    .line 32
    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 37
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->is3sDelayMust:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mToast:Landroid/widget/Toast;

    .line 46
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWay$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/CaptureWay$1;-><init>(Lcom/lenovo/scg/camera/way/CaptureWay;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected clickShutterButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 147
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    if-eqz v1, :cond_0

    .line 148
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    if-gtz v1, :cond_2

    .line 149
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    instance-of v1, v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    if-nez v1, :cond_4

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture: mWayPara == NULL ||  mWayPara not instanceof WayPara  then return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    goto :goto_0

    .line 156
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/way/CaptureWay;->showTimerRemind(I)V

    .line 157
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 170
    :cond_4
    sput-boolean v4, Lcom/lenovo/scg/camera/way/CaptureWay;->isShutterFromWay:Z

    .line 171
    const-string v1, "CaptureWay"

    const-string v2, "### set isShutterFromWay = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getCaptureListener()Lcom/lenovo/scg/camera/mode/CaptureListener;

    move-result-object v0

    .line 175
    .local v0, "listener":Lcom/lenovo/scg/camera/mode/CaptureListener;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureListener;->capture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract close()V
.end method

.method public getShtterTimer()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "clasz":Ljava/lang/String;
    const-string v2, ".way."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "claszSplit":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 213
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 215
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "CaptureWay"

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 120
    return-void
.end method

.method public abstract onResume()V
.end method

.method public abstract onShutterButtonClick()Z
.end method

.method public abstract open()V
.end method

.method public set3sDelayMust(Z)V
    .locals 1
    .param p1, "is"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->is3sDelayMust:Z

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 91
    return-void
.end method

.method protected setShtterTimer(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->is3sDelayMust:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    .line 74
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    goto :goto_0
.end method

.method public setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method protected showTimerRemind(I)V
    .locals 3
    .param p1, "t"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    instance-of v1, v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getWayName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "showTimerRemind: mWayPara == NULL ||  mWayPara not instanceof WayPara  then return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mShtterTimer:I

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mCurrentTimer:I

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWay;->mWayPara:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "c":Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->showTimerRemind(Landroid/content/Context;I)V

    goto :goto_0
.end method
