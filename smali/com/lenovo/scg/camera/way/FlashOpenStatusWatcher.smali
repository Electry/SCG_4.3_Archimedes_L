.class public Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;
.super Ljava/lang/Object;
.source "FlashOpenStatusWatcher.java"


# static fields
.field private static final MSG_GET_STATUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FlashOpenStatusWatcher"

.field private static mWatcher:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;


# instance fields
.field private isFlasLight:Z

.field private isLogicDisable:Z

.field private mContext:Landroid/content/Context;

.field private mDevicesFlashState:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

.field private mUIRootView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mWatcher:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "auto"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isLogicDisable:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlasLight:Z

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mUIRootView:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher$1;-><init>(Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstatnce()Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mWatcher:Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    return-object v0
.end method

.method private getLayoutPara()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 137
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2e

    div-int/lit16 v1, v2, 0x438

    .line 138
    .local v1, "w":I
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x58

    div-int/lit16 v0, v2, 0x438

    .line 139
    .local v0, "h":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v3, v3, 0x4d

    div-int/lit16 v3, v3, 0x438

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v3, v3, 0x31c

    div-int/lit16 v3, v3, 0x438

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mLayoutPara:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2
.end method

.method private updateUI(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    const/16 v0, 0x8

    .line 100
    const-string v1, "FlashOpenStatusWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUI() --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDevicesFlashState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "FlashOpenStatusWatcher"

    const-string/jumbo v2, "updateUI() not auto && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlasLight:Z

    .line 107
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlasLight:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isLogicDisable:Z

    if-nez v1, :cond_3

    .line 108
    :cond_2
    const-string v1, "FlashOpenStatusWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUI(): isFlasLight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlasLight:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", && isLogicDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isLogicDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", && return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    .line 118
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02011f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mUIRootView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f10015a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mUIRootView:Landroid/widget/RelativeLayout;

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mUIRootView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_5

    .line 125
    const-string v1, "FlashOpenStatusWatcher"

    const-string/jumbo v2, "updateUI() mUIRootView == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->getLayoutPara()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_6
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isFlasLight:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 131
    .local v0, "visibility":I
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "FlashOpenStatusWatcher"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "FlashOpenStatusWatcher"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public isFlashOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    const-string/jumbo v1, "on"

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraISP;->getFlashOpenStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDevicesFlash(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "FlashOpenStatusWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDevicesFlashOn --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mDevicesFlashState:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setOpenState(Z)V
    .locals 3
    .param p1, "open"    # Z

    .prologue
    .line 78
    const-string v0, "FlashOpenStatusWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpenState --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public setUiVisable(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 147
    const-string v0, "FlashOpenStatusWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUiVisable---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->isLogicDisable:Z

    .line 150
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "FlashOpenStatusWatcher"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "FlashOpenStatusWatcher"

    const-string/jumbo v1, "start() --- has msg get && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
