.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initTouchButton()V
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
    .line 287
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isTouchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_touch"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$100(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205f8

    const-string v3, "#FFFFFF"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOffCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideTouchTip(Z)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_touch"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$100(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205f9

    const-string v3, "#25c6ff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOnCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideTouchTip(Z)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v2, v2, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$800(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5dc

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v3, v3, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
