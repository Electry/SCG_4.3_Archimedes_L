.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initDelay3sButton()V
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
    .line 260
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isDelayOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_delay"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$000(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205ed

    const-string v3, "#FFFFFF"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOffCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_delay"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$000(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205ee

    const-string v3, "#25c6ff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOnCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    goto :goto_0
.end method
