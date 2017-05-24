.class public Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;
.super Ljava/lang/Object;
.source "VideoSettingWheelUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;,
        Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0x1388

.field public static final SHOW_EXP_ANIM:I = 0x0

.field public static final SHOW_ISO_ANIM:I = 0x1

.field public static final SHOW_MF_ANIM:I = 0x3

.field public static final SHOW_SHUTTER_ANIM:I = 0x2

.field public static final SHOW_WB_ANIM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoSettingWheelUI"


# instance fields
.field private mActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mBigWheelLayout:Landroid/widget/RelativeLayout;

.field private mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mHandler:Landroid/os/Handler;

.field private mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 36
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    .line 181
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    return-object v0
.end method

.method private getWBRotation()F
    .locals 3

    .prologue
    const/high16 v1, -0x3e100000    # -30.0f

    .line 114
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "mCurrentWB":Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    const-string v2, "fluorescent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const/high16 v1, -0x3e900000    # -15.0f

    goto :goto_0

    .line 120
    :cond_2
    const-string v2, "daylight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_3
    const-string v2, "incandescent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    const/high16 v1, 0x41700000    # 15.0f

    goto :goto_0

    .line 124
    :cond_4
    const-string v2, "cloudy-daylight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const/high16 v1, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method private updateMF(I)V
    .locals 8
    .param p1, "step"    # I

    .prologue
    .line 413
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    if-nez v5, :cond_0

    .line 414
    new-instance v5, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    .line 417
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    if-eqz v5, :cond_1

    .line 418
    add-int/lit8 v1, p1, 0x1e

    .line 420
    .local v1, "mStep":I
    const/16 v0, 0x3c

    .line 422
    .local v0, "barMax_barMin":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    iget v5, v5, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMax:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    iget v6, v6, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    sub-int v2, v5, v6

    .line 424
    .local v2, "mfMax_Min":I
    div-int v5, v0, v2

    int-to-float v3, v5

    .line 425
    .local v3, "ratio":F
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    iget v5, v5, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    int-to-float v6, v1

    div-float/2addr v6, v3

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 426
    .local v4, "value":I
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MF_Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 427
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->setMfParameters(I)V

    .line 430
    .end local v0    # "barMax_barMin":I
    .end local v1    # "mStep":I
    .end local v2    # "mfMax_Min":I
    .end local v3    # "ratio":F
    .end local v4    # "value":I
    :cond_1
    return-void
.end method

.method private updateWhiteBlance(I)V
    .locals 4
    .param p1, "stop"    # I

    .prologue
    .line 376
    const-string v1, "VideoSettingWheelUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWhiteBlance stop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "auto"

    .line 380
    .local v0, "WBValue":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 403
    :goto_0
    const-string v1, "VideoSettingWheelUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWhiteBlance before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 408
    const-string v1, "VideoSettingWheelUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWhiteBlance after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 382
    :sswitch_0
    const-string v0, "auto"

    .line 383
    goto :goto_0

    .line 386
    :sswitch_1
    const-string v0, "fluorescent"

    .line 387
    goto :goto_0

    .line 390
    :sswitch_2
    const-string v0, "daylight"

    .line 391
    goto :goto_0

    .line 395
    :sswitch_3
    const-string v0, "incandescent"

    .line 396
    goto :goto_0

    .line 399
    :sswitch_4
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_0
        -0xf -> :sswitch_1
        0x0 -> :sswitch_2
        0xf -> :sswitch_3
        0x1e -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public getRootRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v1, 0x7f04019b

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initBigWheelSettingView()V
    .locals 4

    .prologue
    const v3, 0x7f02026c

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1009d2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1009d4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1009d5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1009d7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method public onBigWheelBarChanged(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 350
    const-string v1, "VideoSettingWheelUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBigWheelBarChangedvalue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 354
    float-to-int v0, p2

    .line 356
    .local v0, "stop":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 369
    :pswitch_0
    const-string v1, "VideoSettingWheelUI"

    const-string/jumbo v2, "view.getId()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 358
    :pswitch_1
    const-string v1, "VideoSettingWheelUI"

    const-string v2, "R.id.cameraSettingBigWheelWB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 360
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->updateWhiteBlance(I)V

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 365
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->updateMF(I)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x7f1009d2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBigWheelBarChanging(Landroid/view/View;F)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v8, -0x3e100000    # -30.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v6, -0x3e500000    # -22.0f

    const/high16 v5, -0x3f000000    # -8.0f

    .line 434
    const-string v2, "VideoSettingWheelUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBigWheelBarChanging value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    float-to-int v1, p2

    .line 437
    .local v1, "stop":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 523
    :goto_0
    :pswitch_0
    return-void

    .line 458
    :pswitch_1
    const/4 v0, -0x1

    .line 459
    .local v0, "flagResID":I
    cmpl-float v2, p2, v8

    if-ltz v2, :cond_0

    cmpg-float v2, p2, v6

    if-gez v2, :cond_0

    .line 460
    const v0, 0x7f02026c

    .line 470
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 461
    :cond_0
    cmpl-float v2, p2, v6

    if-ltz v2, :cond_1

    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 462
    const v0, 0x7f0202a8

    goto :goto_1

    .line 463
    :cond_1
    cmpl-float v2, p2, v5

    if-ltz v2, :cond_2

    cmpg-float v2, p2, v7

    if-gez v2, :cond_2

    .line 464
    const v0, 0x7f0202a7

    goto :goto_1

    .line 465
    :cond_2
    cmpl-float v2, p2, v7

    if-ltz v2, :cond_3

    cmpg-float v2, p2, v9

    if-gez v2, :cond_3

    .line 466
    const v0, 0x7f0202a5

    goto :goto_1

    .line 468
    :cond_3
    const v0, 0x7f0202a6

    goto :goto_1

    .line 490
    .end local v0    # "flagResID":I
    :pswitch_2
    const/4 v0, -0x1

    .line 491
    .restart local v0    # "flagResID":I
    cmpl-float v2, p2, v8

    if-ltz v2, :cond_5

    cmpg-float v2, p2, v6

    if-gez v2, :cond_5

    .line 492
    const v0, 0x7f02026c

    .line 502
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 493
    :cond_5
    cmpl-float v2, p2, v6

    if-ltz v2, :cond_6

    cmpg-float v2, p2, v5

    if-ltz v2, :cond_4

    .line 495
    :cond_6
    cmpl-float v2, p2, v5

    if-ltz v2, :cond_7

    cmpg-float v2, p2, v7

    if-ltz v2, :cond_4

    .line 497
    :cond_7
    cmpl-float v2, p2, v7

    if-ltz v2, :cond_4

    cmpg-float v2, p2, v9

    if-gez v2, :cond_4

    goto :goto_2

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x7f1009d2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBigWheelTouchDown(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x7f1009d2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBigWheelTouchUp(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 533
    return-void
.end method

.method public rotationView()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->getWBRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 111
    return-void
.end method
