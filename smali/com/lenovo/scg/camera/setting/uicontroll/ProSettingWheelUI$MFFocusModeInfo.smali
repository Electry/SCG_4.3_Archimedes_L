.class public Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;
.super Ljava/lang/Object;
.source "ProSettingWheelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
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

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 5
    .param p2, "mCameraSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 627
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMax:I

    .line 621
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    .line 628
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 629
    invoke-interface {p2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 630
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "min-focus-pos-index"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "min":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "max-focus-pos-index"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "max":Ljava/lang/String;
    const-string v0, "47"

    .line 639
    const-string v1, "0"

    .line 642
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

    .line 644
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMax:I

    .line 645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "min-focus-pos-indexMAX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   max-focus-pos-indexMIN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mfMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 649
    .end local v0    # "max":Ljava/lang/String;
    .end local v1    # "min":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMfValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 692
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->access$100(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 693
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v1, "manual-focus-position"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "48"

    goto :goto_0
.end method

.method public setMfParameters(ILjava/lang/String;)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->access$100(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 662
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mCurrentFocusMode:Ljava/lang/String;

    .line 672
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 673
    const-string/jumbo v1, "manual"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const-string/jumbo v1, "manual-focus-pos-type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 675
    const-string/jumbo v1, "manual-focus-position"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$MFFocusModeInfo;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 680
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manual-focus-position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "manual-focus-position"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 681
    return-void
.end method
