.class Lcom/lenovo/scg/camera/front/FrontView$7;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->initFrontWaterButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 589
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$500(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_water_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontView;->access$400(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "value":Ljava/lang/String;
    const-string v1, "FrontView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFrontWaterButton, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$600(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f020400

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 598
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$500(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_front_water_key"

    const-string/jumbo v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 601
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->initFrontWaterPanel()V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$600(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    const v2, 0x7f0203ff

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 608
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$500(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_front_water_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 613
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$7;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    goto :goto_0
.end method
