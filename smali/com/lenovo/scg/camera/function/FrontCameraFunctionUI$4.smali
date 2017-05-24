.class Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;
.super Landroid/content/BroadcastReceiver;
.source "FrontCameraFunctionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 602
    const-string v3, "FrontCameraFunctionUI"

    const-string v4, "exitVideoReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v3, v3, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_water_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v5, v5, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f0f0022

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "valueW":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v3, v3, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    .line 609
    .local v0, "isRow":Z
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 610
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->initFrontWaterPanel()V

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyView()V

    .line 615
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer3()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 616
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer3()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer4()Landroid/widget/TableLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 620
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer4()Landroid/widget/TableLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 623
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v3, v3, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_setting_picture_size_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v5, v5, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f0f002d

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "value":Ljava/lang/String;
    const-string v3, "FrontCameraFunctionUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v3, "4x3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    .line 634
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v3, v3, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_beauty"

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v5, v5, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f0f0029

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    const-string v3, "FrontCameraFunctionUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string/jumbo v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 645
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    .line 649
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->showBeautyBar()V

    .line 651
    return-void

    .line 629
    :cond_4
    const-string v3, "16x9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 630
    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    goto :goto_0

    .line 647
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$4;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    goto :goto_1
.end method
