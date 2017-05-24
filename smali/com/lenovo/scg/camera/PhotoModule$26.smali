.class Lcom/lenovo/scg/camera/PhotoModule$26;
.super Landroid/content/BroadcastReceiver;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 8820
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8823
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBatteryReceiver-----:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$7500(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8824
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8825
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBatteryReceiver onReceive, action=%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8827
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8828
    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8830
    .local v4, "status":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter ACTION_BATTERY_CHANGED, status =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8832
    if-ne v4, v12, :cond_7

    .line 8833
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$5400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 8834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will showBatteryChargImg,mPause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8835
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->showBatteryChargImg()V

    .line 8860
    .end local v4    # "status":I
    :cond_0
    :goto_0
    const-string v5, "level"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8861
    .local v1, "level":I
    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8862
    .restart local v4    # "status":I
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->getDangerBattery(Landroid/content/Context;)I

    move-result v5

    if-gt v1, v5, :cond_1

    if-eq v4, v12, :cond_1

    .line 8868
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->isShowCameraLowPowerTip:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7600(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8869
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v5, v5, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8870
    const-string v5, "lnliu"

    const-string v6, "dangerBattery"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8871
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->isShowCameraLowPowerTip:Z
    invoke-static {v5, v11}, Lcom/lenovo/scg/camera/PhotoModule;->access$7602(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 8874
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->getCloseBattery(Landroid/content/Context;)I

    move-result v5

    if-gt v1, v5, :cond_2

    if-ne v4, v12, :cond_2

    .line 8887
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->getFlashUseAbleLevel(Landroid/content/Context;)I

    move-result v5

    if-gt v1, v5, :cond_a

    .line 8888
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 8889
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "flash"

    const v8, 0x7f0f000f

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->flashState:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/lenovo/scg/camera/PhotoModule;->access$7702(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;

    .line 8890
    const-string v5, "lnliu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defaultFlash state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->flashState:Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$7700(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8891
    sget-boolean v5, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-nez v5, :cond_3

    .line 8892
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v5, v5, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8894
    :cond_3
    sput-boolean v11, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    .line 8895
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7800(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 8896
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v5

    const-string v6, "camera_setting_flash_key"

    const-string/jumbo v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8897
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->updateFlashLowBattery()V
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7900(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 8899
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z
    invoke-static {v5, v11}, Lcom/lenovo/scg/camera/PhotoModule;->access$7802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    .line 8913
    :cond_5
    :goto_1
    return-void

    .line 8837
    .end local v1    # "level":I
    :cond_6
    const-string/jumbo v5, "will not showBatteryChargImg, mContinuousShotStarted=true"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8840
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->hideBatteryChargImg()V

    .line 8841
    const-string/jumbo v5, "will call hideBatteryChargImg"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8842
    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 8843
    .local v2, "rawlevel":I
    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 8844
    .local v3, "scale":I
    const/4 v1, -0x1

    .line 8845
    .restart local v1    # "level":I
    if-ltz v2, :cond_8

    if-lez v3, :cond_8

    .line 8846
    mul-int/lit8 v5, v2, 0x64

    div-int v1, v5, v3

    .line 8848
    :cond_8
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battry level\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8849
    const/16 v5, 0xf

    if-gt v1, v5, :cond_9

    if-le v1, v9, :cond_9

    .line 8850
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->showLowBatteryImg()V

    goto/16 :goto_0

    .line 8851
    :cond_9
    if-gt v1, v9, :cond_0

    .line 8852
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8853
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->showSeriousLowBatteryImg()V

    goto/16 :goto_0

    .line 8902
    .end local v2    # "rawlevel":I
    .end local v3    # "scale":I
    :cond_a
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 8903
    sput-boolean v10, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    .line 8904
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7800(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 8905
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v5

    const-string v6, "camera_setting_flash_key"

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->flashState:Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/scg/camera/PhotoModule;->access$7700(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8906
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->updateFlashLowBattery()V
    invoke-static {v5}, Lcom/lenovo/scg/camera/PhotoModule;->access$7900(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 8908
    :cond_b
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule$26;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z
    invoke-static {v5, v10}, Lcom/lenovo/scg/camera/PhotoModule;->access$7802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z

    goto/16 :goto_1
.end method
