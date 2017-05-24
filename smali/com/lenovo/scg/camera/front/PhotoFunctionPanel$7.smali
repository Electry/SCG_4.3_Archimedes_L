.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initVoiceButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isVoiceOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_front_voice"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$200(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0205fb

    const-string v4, "#FFFFFF"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOffCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideVoiceTip(Z)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_front_voice"

    const-string/jumbo v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$200(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0205fc

    const-string v4, "#25c6ff"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOnCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideVoiceTip(Z)V

    .line 335
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/RotateTips;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v3, v3, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$800(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getVoiceTipsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "tips":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v1

    const/16 v2, 0x5dc

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v3, v3, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    goto :goto_0
.end method
