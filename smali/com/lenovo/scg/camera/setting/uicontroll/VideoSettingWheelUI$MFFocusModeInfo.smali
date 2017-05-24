.class public Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;
.super Ljava/lang/Object;
.source "VideoSettingWheelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MFFocusModeInfo"
.end annotation


# instance fields
.field mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field public mCurrentFocusMode:Ljava/lang/String;

.field mParameters:Landroid/hardware/Camera$Parameters;

.field public mfMax:I

.field public mfMin:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 5
    .param p2, "mCameraSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMax:I

    .line 52
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    .line 59
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 60
    invoke-interface {p2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 61
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "min-focus-pos-index"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "min":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "max-focus-pos-index"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "max":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "min-focus-pos-index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   max-focus-pos-index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMax:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "min-focus-pos-indexMAX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   max-focus-pos-indexMIN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 74
    .end local v0    # "max":Ljava/lang/String;
    .end local v1    # "min":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMFstepSize()I
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMax:I

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mfMin:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public setMfParameters(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mCurrentFocusMode:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mCurrentFocusMode:Ljava/lang/String;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual-focus-pos-type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual-focus-position"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 94
    return-void
.end method
