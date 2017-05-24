.class public Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
.super Ljava/lang/Object;
.source "ProSettingWheelUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;,
        Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;,
        Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$ProAnimationListener;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0x1388

.field public static final SHOW_EXP_ANIM:I = 0x0

.field public static final SHOW_ISO_ANIM:I = 0x1

.field public static final SHOW_MF_ANIM:I = 0x3

.field public static final SHOW_SHUTTER_ANIM:I = 0x2

.field public static final SHOW_WB_ANIM:I = 0x4


# instance fields
.field private bigWheelRootLayout:Landroid/widget/RelativeLayout;

.field lastValue:F

.field private mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBigWheelLayout:Landroid/widget/RelativeLayout;

.field private mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

.field private mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

.field startTime:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 39
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 41
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 45
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 49
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 51
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 53
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 55
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 57
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 62
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    .line 813
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->startTime:J

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->lastValue:F

    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method private getExposureRotation()F
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 281
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 282
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 311
    :goto_0
    :pswitch_0
    return v6

    .line 287
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 289
    .local v0, "mCurrentExposure":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    .line 290
    .local v4, "minEx":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    .line 291
    .local v3, "maxEx":I
    sub-int v7, v3, v4

    div-int/lit8 v2, v7, 0x4

    .line 293
    .local v2, "mSeekBarStep":I
    sub-int v7, v0, v4

    div-int v5, v7, v2

    .line 294
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_1
    const/high16 v6, -0x3e100000    # -30.0f

    goto :goto_0

    .line 299
    :pswitch_2
    const/high16 v6, -0x3e900000    # -15.0f

    goto :goto_0

    .line 305
    :pswitch_3
    const/high16 v6, 0x41700000    # 15.0f

    goto :goto_0

    .line 308
    :pswitch_4
    const/high16 v6, 0x41f00000    # 30.0f

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getISORotation()F
    .locals 5

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v2, -0x3e100000    # -30.0f

    .line 232
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 233
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 238
    :cond_1
    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_ISO:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "mCurrentISO":Ljava/lang/String;
    const-string v4, "auto"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    const-string v4, "ISO100"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    const/high16 v2, -0x3e700000    # -18.0f

    goto :goto_0

    .line 243
    :cond_2
    const-string v4, "ISO200"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    const/high16 v2, -0x3f400000    # -6.0f

    goto :goto_0

    .line 245
    :cond_3
    const-string v4, "ISO400"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_0

    .line 247
    :cond_4
    const-string v4, "ISO800"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 248
    const/high16 v2, 0x41900000    # 18.0f

    goto :goto_0

    .line 249
    :cond_5
    const-string v4, "ISO1600"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 250
    goto :goto_0

    .line 251
    :cond_6
    const-string v4, "ISO3200"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 252
    goto :goto_0
.end method

.method private getMFRotation()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v4, -0x3e100000    # -30.0f

    .line 91
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 92
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    move v3, v4

    .line 118
    :goto_0
    return v3

    .line 95
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMFRotation_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 97
    goto :goto_0

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    if-nez v5, :cond_2

    .line 102
    new-instance v5, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    .line 107
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->getMfValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    .local v2, "mf":I
    mul-int/lit8 v5, v2, 0x3c

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget v6, v6, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMax:I

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget v7, v7, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1e

    int-to-float v3, v5

    .line 111
    .local v3, "rotate":F
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMFRotation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  [mf] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2    # "mf":I
    .end local v3    # "rotate":F
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v3, v4

    .line 115
    goto :goto_0
.end method

.method private getShutterRatation()F
    .locals 7

    .prologue
    const/high16 v3, -0x3e100000    # -30.0f

    .line 122
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 123
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    const-string v4, "aec-force-exp"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "value":Ljava/lang/String;
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShutterRatation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 130
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 133
    .local v0, "currentValue":F
    const v4, 0x3d088889

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    .line 137
    const v4, 0x3d23d70a    # 0.04f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    .line 138
    const/high16 v3, -0x3e300000    # -26.0f

    goto :goto_0

    .line 141
    :cond_2
    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_3

    .line 142
    const/high16 v3, -0x3e500000    # -22.0f

    goto :goto_0

    .line 145
    :cond_3
    const v4, 0x3d888889

    cmpl-float v4, v0, v4

    if-nez v4, :cond_4

    .line 146
    const/high16 v3, -0x3e700000    # -18.0f

    goto :goto_0

    .line 149
    :cond_4
    const v4, 0x3d9d89d9

    cmpl-float v4, v0, v4

    if-nez v4, :cond_5

    .line 150
    const/high16 v3, -0x3ea00000    # -14.0f

    goto :goto_0

    .line 153
    :cond_5
    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_6

    .line 154
    const/high16 v3, -0x3ee00000    # -10.0f

    goto :goto_0

    .line 157
    :cond_6
    const/high16 v4, 0x3e000000    # 0.125f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_7

    .line 158
    const/high16 v3, -0x3f400000    # -6.0f

    goto :goto_0

    .line 161
    :cond_7
    const v4, 0x3e2aaaab

    cmpl-float v4, v0, v4

    if-nez v4, :cond_8

    .line 162
    const/high16 v3, -0x40000000    # -2.0f

    goto :goto_0

    .line 165
    :cond_8
    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_9

    .line 166
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    .line 169
    :cond_9
    const/high16 v4, 0x3e800000    # 0.25f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_a

    .line 170
    const/high16 v3, 0x40c00000    # 6.0f

    goto/16 :goto_0

    .line 173
    :cond_a
    const v4, 0x3e99999a    # 0.3f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_b

    .line 174
    const/high16 v3, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 177
    :cond_b
    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_c

    .line 178
    const/high16 v3, 0x41600000    # 14.0f

    goto/16 :goto_0

    .line 181
    :cond_c
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_d

    .line 182
    const/high16 v3, 0x41900000    # 18.0f

    goto/16 :goto_0

    .line 185
    :cond_d
    const v4, 0x3f19999a    # 0.6f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_e

    .line 186
    const/high16 v3, 0x41b00000    # 22.0f

    goto/16 :goto_0

    .line 189
    :cond_e
    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_f

    .line 190
    const/high16 v3, 0x41d00000    # 26.0f

    goto/16 :goto_0

    .line 194
    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    .line 195
    const/high16 v3, 0x41f00000    # 30.0f

    goto/16 :goto_0
.end method

.method private getShutterValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 506
    sparse-switch p1, :sswitch_data_0

    .line 575
    const-string v0, "0.033333335"

    :goto_0
    return-object v0

    .line 509
    :sswitch_0
    const-string v0, "0.033333335"

    goto :goto_0

    .line 515
    :sswitch_1
    const-string v0, "0.033333335"

    goto :goto_0

    .line 519
    :sswitch_2
    const-string v0, "0.05"

    goto :goto_0

    .line 523
    :sswitch_3
    const-string v0, "0.06666667"

    goto :goto_0

    .line 527
    :sswitch_4
    const-string v0, "0.07692308"

    goto :goto_0

    .line 531
    :sswitch_5
    const-string v0, "0.1"

    goto :goto_0

    .line 535
    :sswitch_6
    const-string v0, "0.125"

    goto :goto_0

    .line 539
    :sswitch_7
    const-string v0, "0.16666667"

    goto :goto_0

    .line 543
    :sswitch_8
    const-string v0, "0.2"

    goto :goto_0

    .line 547
    :sswitch_9
    const-string v0, "0.25"

    goto :goto_0

    .line 551
    :sswitch_a
    const-string v0, "0.3"

    goto :goto_0

    .line 555
    :sswitch_b
    const-string v0, "0.4"

    goto :goto_0

    .line 559
    :sswitch_c
    const-string v0, "0.5"

    goto :goto_0

    .line 563
    :sswitch_d
    const-string v0, "0.6"

    goto :goto_0

    .line 567
    :sswitch_e
    const-string v0, "0.8"

    goto :goto_0

    .line 571
    :sswitch_f
    const-string v0, "1.0"

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_0
        -0x1a -> :sswitch_1
        -0x16 -> :sswitch_2
        -0x12 -> :sswitch_3
        -0xe -> :sswitch_4
        -0xa -> :sswitch_5
        -0x6 -> :sswitch_6
        -0x2 -> :sswitch_7
        0x2 -> :sswitch_8
        0x6 -> :sswitch_9
        0xa -> :sswitch_a
        0xe -> :sswitch_b
        0x12 -> :sswitch_c
        0x16 -> :sswitch_d
        0x1a -> :sswitch_e
        0x1e -> :sswitch_f
    .end sparse-switch
.end method

.method private getWBRotation()F
    .locals 4

    .prologue
    const/high16 v2, -0x3e100000    # -30.0f

    .line 260
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 261
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "mCurrentWB":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string v3, "fluorescent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    const/high16 v2, -0x3e900000    # -15.0f

    goto :goto_0

    .line 269
    :cond_2
    const-string v3, "daylight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    const/4 v2, 0x0

    goto :goto_0

    .line 271
    :cond_3
    const-string v3, "incandescent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    const/high16 v2, 0x41700000    # 15.0f

    goto :goto_0

    .line 273
    :cond_4
    const-string v3, "cloudy-daylight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method private initViewIfNeed()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f1001d1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getRootRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 362
    .local v0, "rootLayout":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v1, :cond_1

    .line 363
    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 367
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v1, :cond_2

    .line 368
    const v1, 0x7f1001d4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 372
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v1, :cond_3

    .line 373
    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 377
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v1, :cond_4

    .line 378
    const v1, 0x7f1001d8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 380
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 382
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    if-nez v1, :cond_5

    .line 383
    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 385
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setOnBigWheelBarChangeListener(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;)V

    .line 388
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_6

    .line 389
    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_7

    .line 393
    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 396
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_8

    .line 397
    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 400
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_9

    .line 401
    const v1, 0x7f1001d7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 404
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_a

    .line 405
    const v1, 0x7f1001d9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 407
    :cond_a
    return-void
.end method

.method private showBigWheelWithAnim(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V
    .locals 4
    .param p1, "mOnBigWheelAnimEnd"    # Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    .prologue
    .line 416
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 417
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 418
    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 442
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    return-void
.end method

.method private updateISO(I)V
    .locals 5
    .param p1, "stop"    # I

    .prologue
    .line 774
    const-string v0, "auto"

    .line 776
    .local v0, "ISOValue":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 807
    :goto_0
    const-string v1, "IIIISSSSOOOO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "iso"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "iso"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 810
    const-string v1, "IIIISSSSOOOO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "iso"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .line 778
    :sswitch_0
    const-string v0, "auto"

    .line 779
    goto :goto_0

    .line 782
    :sswitch_1
    const-string v0, "ISO100"

    .line 783
    goto :goto_0

    .line 786
    :sswitch_2
    const-string v0, "ISO200"

    .line 787
    goto :goto_0

    .line 790
    :sswitch_3
    const-string v0, "ISO400"

    .line 791
    goto :goto_0

    .line 794
    :sswitch_4
    const-string v0, "ISO800"

    .line 795
    goto :goto_0

    .line 798
    :sswitch_5
    const-string v0, "ISO1600"

    goto :goto_0

    .line 776
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_0
        -0x12 -> :sswitch_1
        -0x6 -> :sswitch_2
        0x6 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method private updateMF(I)V
    .locals 7
    .param p1, "step"    # I

    .prologue
    const/4 v6, 0x1

    .line 579
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    if-nez v4, :cond_0

    .line 580
    new-instance v4, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    .line 584
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    if-eqz v4, :cond_1

    .line 587
    add-int/lit8 v1, p1, 0x1e

    .line 590
    .local v1, "mStep":I
    const/16 v0, 0x3c

    .line 593
    .local v0, "barMax_barMin":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget v4, v4, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMax:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget v5, v5, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    sub-int v2, v4, v5

    .line 595
    .local v2, "mfMax_Min":I
    mul-int v4, v1, v2

    div-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    iget v5, v5, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    add-int v3, v4, v5

    .line 597
    .local v3, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MF_Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 599
    const/16 v4, -0x1e

    if-ne p1, v4, :cond_2

    .line 600
    const-string/jumbo v4, "updateMF__: auto"

    invoke-static {v6, v4}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 601
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    const-string v5, "continuous-picture"

    invoke-virtual {v4, v3, v5}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->setMfParameters(ILjava/lang/String;)V

    .line 609
    .end local v0    # "barMax_barMin":I
    .end local v1    # "mStep":I
    .end local v2    # "mfMax_Min":I
    .end local v3    # "value":I
    :cond_1
    :goto_0
    return-void

    .line 603
    .restart local v0    # "barMax_barMin":I
    .restart local v1    # "mStep":I
    .restart local v2    # "mfMax_Min":I
    .restart local v3    # "value":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMF__: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mfFocusModeInfo:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;

    const-string/jumbo v5, "manual"

    invoke-virtual {v4, v3, v5}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->setMfParameters(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateSettingFlag(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, -0x3e500000    # -22.0f

    const/high16 v2, -0x3f000000    # -8.0f

    .line 954
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1146
    :goto_0
    :pswitch_0
    return-void

    .line 957
    :pswitch_1
    const/4 v0, -0x1

    .line 960
    .local v0, "flagResID":I
    const/high16 v1, -0x3e100000    # -30.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    const/high16 v1, -0x3e400000    # -24.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 961
    const v0, 0x7f02026c

    .line 976
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 977
    const v1, 0x7f02026c

    if-ne v0, v1, :cond_5

    .line 978
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    .line 962
    :cond_0
    const/high16 v1, -0x3e400000    # -24.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    const/high16 v1, -0x3ec00000    # -12.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 963
    const v0, 0x7f020285

    goto :goto_1

    .line 964
    :cond_1
    const/high16 v1, -0x3ec00000    # -12.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 965
    const v0, 0x7f020287

    goto :goto_1

    .line 966
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 967
    const v0, 0x7f020289

    goto :goto_1

    .line 968
    :cond_3
    const/high16 v1, 0x41400000    # 12.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x41c00000    # 24.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    .line 969
    const v0, 0x7f02028a

    goto :goto_1

    .line 971
    :cond_4
    const v0, 0x7f020286

    goto :goto_1

    .line 980
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    .line 985
    .end local v0    # "flagResID":I
    :pswitch_2
    const/4 v0, -0x1

    .line 986
    .restart local v0    # "flagResID":I
    const/high16 v1, -0x3e100000    # -30.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_6

    cmpg-float v1, p2, v3

    if-gez v1, :cond_6

    .line 987
    const v0, 0x7f02026c

    .line 997
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 998
    const v1, 0x7f02026c

    if-ne v0, v1, :cond_a

    .line 999
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 988
    :cond_6
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_7

    cmpg-float v1, p2, v2

    if-gez v1, :cond_7

    .line 989
    const v0, 0x7f0202a8

    goto :goto_2

    .line 990
    :cond_7
    cmpl-float v1, p2, v2

    if-ltz v1, :cond_8

    cmpg-float v1, p2, v4

    if-gez v1, :cond_8

    .line 991
    const v0, 0x7f0202a7

    goto :goto_2

    .line 992
    :cond_8
    cmpl-float v1, p2, v4

    if-ltz v1, :cond_9

    const/high16 v1, 0x41b00000    # 22.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_9

    .line 993
    const v0, 0x7f0202a5

    goto :goto_2

    .line 995
    :cond_9
    const v0, 0x7f0202a6

    goto :goto_2

    .line 1001
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1006
    .end local v0    # "flagResID":I
    :pswitch_3
    const/4 v0, -0x1

    .line 1007
    .restart local v0    # "flagResID":I
    const/high16 v1, -0x3e100000    # -30.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_b

    cmpg-float v1, p2, v3

    if-gez v1, :cond_b

    .line 1008
    const v0, 0x7f02026f

    .line 1018
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1020
    const v1, 0x7f02026d

    if-ne v0, v1, :cond_f

    .line 1021
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1009
    :cond_b
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_c

    cmpg-float v1, p2, v2

    if-gez v1, :cond_c

    .line 1010
    const v0, 0x7f02026e

    goto :goto_3

    .line 1011
    :cond_c
    cmpl-float v1, p2, v2

    if-ltz v1, :cond_d

    cmpg-float v1, p2, v4

    if-gez v1, :cond_d

    .line 1012
    const v0, 0x7f02026d

    goto :goto_3

    .line 1013
    :cond_d
    cmpl-float v1, p2, v4

    if-ltz v1, :cond_e

    const/high16 v1, 0x41b00000    # 22.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_e

    .line 1014
    const v0, 0x7f020270

    goto :goto_3

    .line 1016
    :cond_e
    const v0, 0x7f020271

    goto :goto_3

    .line 1023
    :cond_f
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1028
    .end local v0    # "flagResID":I
    :pswitch_4
    const/4 v0, -0x1

    .line 1029
    .restart local v0    # "flagResID":I
    const/high16 v1, -0x3e100000    # -30.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_11

    cmpg-float v1, p2, v3

    if-gez v1, :cond_11

    .line 1030
    const v0, 0x7f02026c

    .line 1040
    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1041
    const v1, 0x7f02026c

    if-ne v0, v1, :cond_14

    .line 1042
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1031
    :cond_11
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_12

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_10

    .line 1033
    :cond_12
    cmpl-float v1, p2, v2

    if-ltz v1, :cond_13

    cmpg-float v1, p2, v4

    if-ltz v1, :cond_10

    .line 1035
    :cond_13
    cmpl-float v1, p2, v4

    if-ltz v1, :cond_10

    const/high16 v1, 0x41b00000    # 22.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_10

    goto :goto_4

    .line 1044
    :cond_14
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1049
    .end local v0    # "flagResID":I
    :pswitch_5
    const/4 v0, -0x1

    .line 1050
    .restart local v0    # "flagResID":I
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraSettingBigWheelShutter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-int v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1051
    float-to-int v1, p2

    sparse-switch v1, :sswitch_data_0

    .line 1136
    :goto_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1137
    const v1, 0x7f02026c

    if-ne v0, v1, :cond_15

    .line 1138
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1054
    :sswitch_0
    const v0, 0x7f02026c

    .line 1056
    goto :goto_5

    .line 1060
    :sswitch_1
    const v0, 0x7f02029a

    .line 1062
    goto :goto_5

    .line 1065
    :sswitch_2
    const v0, 0x7f020298

    .line 1067
    goto :goto_5

    .line 1070
    :sswitch_3
    const v0, 0x7f020295

    .line 1072
    goto :goto_5

    .line 1075
    :sswitch_4
    const v0, 0x7f020294

    .line 1077
    goto :goto_5

    .line 1080
    :sswitch_5
    const v0, 0x7f020293

    .line 1082
    goto :goto_5

    .line 1085
    :sswitch_6
    const v0, 0x7f02029e

    .line 1087
    goto :goto_5

    .line 1090
    :sswitch_7
    const v0, 0x7f02029d

    .line 1092
    goto :goto_5

    .line 1095
    :sswitch_8
    const v0, 0x7f02029c

    .line 1097
    goto :goto_5

    .line 1100
    :sswitch_9
    const v0, 0x7f02029b

    .line 1102
    goto :goto_5

    .line 1105
    :sswitch_a
    const v0, 0x7f0202a1

    .line 1107
    goto :goto_5

    .line 1110
    :sswitch_b
    const v0, 0x7f0202a0

    .line 1112
    goto :goto_5

    .line 1115
    :sswitch_c
    const v0, 0x7f020297

    .line 1117
    goto :goto_5

    .line 1120
    :sswitch_d
    const v0, 0x7f0202a2

    .line 1122
    goto :goto_5

    .line 1125
    :sswitch_e
    const v0, 0x7f0202a4

    .line 1127
    goto :goto_5

    .line 1130
    :sswitch_f
    const v0, 0x7f020292

    goto :goto_5

    .line 1140
    :cond_15
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001d2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1051
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_0
        -0x1a -> :sswitch_1
        -0x16 -> :sswitch_2
        -0x12 -> :sswitch_3
        -0xe -> :sswitch_4
        -0xa -> :sswitch_5
        -0x6 -> :sswitch_6
        -0x2 -> :sswitch_7
        0x2 -> :sswitch_8
        0x6 -> :sswitch_9
        0xa -> :sswitch_a
        0xe -> :sswitch_b
        0x12 -> :sswitch_c
        0x16 -> :sswitch_d
        0x1a -> :sswitch_e
        0x1e -> :sswitch_f
    .end sparse-switch
.end method

.method private updateShutterSpeed(I)V
    .locals 6
    .param p1, "step"    # I

    .prologue
    const/4 v5, 0x1

    .line 474
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 475
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 483
    :cond_0
    const/16 v3, -0x1e

    if-ne p1, v3, :cond_1

    .line 484
    const-string v3, "force-aec-enable"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v3, "aec-force-exp"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string/jumbo v3, "updateShutterSpeed-aecForceExp set : Auto"

    invoke-static {v5, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 497
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 500
    const-string v3, "aec-force-exp"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "aecForceExpAfter":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShutterSpeed-aecForceExp After : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_0

    .line 489
    .end local v0    # "aecForceExpAfter":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getShutterValue(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShutterSpeed-aecForceExp set : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 492
    const-string v3, "force-aec-enable"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v3, "aec-force-exp"

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateWhiteBlance(I)V
    .locals 4
    .param p1, "stop"    # I

    .prologue
    .line 743
    const-string v0, "auto"

    .line 744
    .local v0, "WBValue":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 767
    :goto_0
    const-string v1, "WWWBBBB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 770
    const-string v1, "WWWBBBB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 746
    :sswitch_0
    const-string v0, "auto"

    .line 747
    goto :goto_0

    .line 750
    :sswitch_1
    const-string v0, "fluorescent"

    .line 751
    goto :goto_0

    .line 754
    :sswitch_2
    const-string v0, "daylight"

    .line 755
    goto :goto_0

    .line 759
    :sswitch_3
    const-string v0, "incandescent"

    .line 760
    goto :goto_0

    .line 763
    :sswitch_4
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_0
        -0xf -> :sswitch_1
        0x0 -> :sswitch_2
        0xf -> :sswitch_3
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method private updateWhiteExposure(I)V
    .locals 9
    .param p1, "stop"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "Ex":F
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    .line 704
    .local v4, "minEx":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    .line 706
    .local v3, "maxEx":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v5

    .line 707
    .local v5, "step":F
    cmpg-float v7, v5, v6

    if-gez v7, :cond_0

    move v5, v6

    .line 709
    :cond_0
    sub-int v6, v3, v4

    div-int/lit8 v2, v6, 0x4

    .line 710
    .local v2, "mSeekbarStep":I
    const/4 v1, 0x0

    .line 712
    .local v1, "mExValue":I
    sparse-switch p1, :sswitch_data_0

    .line 735
    :goto_0
    const-string v6, "EEEXXXX"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 737
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 738
    const-string v6, "EEEXXX"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void

    .line 714
    :sswitch_0
    mul-int/lit8 v6, v2, 0x0

    add-int v1, v4, v6

    .line 715
    goto :goto_0

    .line 718
    :sswitch_1
    mul-int/lit8 v6, v2, 0x1

    add-int v1, v4, v6

    .line 719
    goto :goto_0

    .line 722
    :sswitch_2
    mul-int/lit8 v6, v2, 0x2

    add-int v1, v4, v6

    .line 723
    goto :goto_0

    .line 726
    :sswitch_3
    mul-int/lit8 v6, v2, 0x3

    add-int v1, v4, v6

    .line 727
    goto :goto_0

    .line 730
    :sswitch_4
    mul-int/lit8 v6, v2, 0x4

    add-int v1, v4, v6

    goto :goto_0

    .line 712
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
    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v1, 0x7f04004d

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onBigWheelBarChanged(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 838
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProDeBug00 onBigWheelBarChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 841
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 842
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 843
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 844
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 846
    float-to-int v0, p2

    .line 847
    .local v0, "step":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 874
    :goto_0
    :pswitch_0
    return-void

    .line 849
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 850
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateISO(I)V

    goto :goto_0

    .line 854
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 855
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateWhiteBlance(I)V

    goto :goto_0

    .line 859
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 860
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateWhiteExposure(I)V

    goto :goto_0

    .line 864
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 865
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateMF(I)V

    goto :goto_0

    .line 869
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 870
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateShutterSpeed(I)V

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x7f1001d2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBigWheelBarChanging(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/4 v6, 0x1

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 820
    .local v0, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBigWheelBarChanging: out  value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 822
    iget-wide v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->startTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->lastValue:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBigWheelBarChanging: in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 824
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->onBigWheelBarChanged(Landroid/view/View;F)V

    .line 826
    iput-wide v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->startTime:J

    .line 827
    iput p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->lastValue:F

    .line 831
    :cond_0
    const-string v2, "ProDeBug00 onBigWheelBarChanging"

    invoke-static {v6, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 832
    return-void
.end method

.method public onBigWheelTouchDown(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 878
    const/4 v0, 0x1

    const-string v1, "ProDeBug00 onBigWheelTouchDown"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 893
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 920
    :goto_0
    :pswitch_0
    return-void

    .line 895
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 900
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 905
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 910
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 915
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001d2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBigWheelTouchUp(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 926
    const/4 v0, 0x1

    const-string v1, "ProDeBug00 onBigWheelTouchUp"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 941
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 942
    return-void
.end method

.method public rotationView()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getWBRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getWBRotation()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getISORotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISO:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getISORotation()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getExposureRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXP:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getExposureRotation()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getShutterRatation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutter:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getShutterRatation()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getMFRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationBarView(F)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getMFRotation()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->updateSettingFlag(Landroid/view/View;F)V

    .line 87
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "newOriention"    # I

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 228
    :cond_4
    return-void
.end method

.method public showWheelSeekBarViewWithAnim(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V
    .locals 4
    .param p1, "mOnBigWheelAnimEnd"    # Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    .prologue
    const v3, 0x7f02026c

    const v2, 0x3e99999a    # 0.3f

    .line 324
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->initViewIfNeed()V

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02026d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->setOrientation(I)V

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelWBFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelISOFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelEXPFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelShutterFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mBigWheelMFFlag:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setAlpha(F)V

    .line 348
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->showBigWheelWithAnim(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V

    .line 352
    return-void
.end method
