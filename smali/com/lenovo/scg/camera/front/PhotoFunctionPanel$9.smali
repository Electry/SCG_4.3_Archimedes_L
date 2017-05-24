.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initGestureButton()V
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
    .line 386
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_gesture"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$400(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205f0

    const-string v3, "#FFFFFF"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOffCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideGestureTip(Z)V

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_gesture"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$400(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0205f1

    const-string v3, "#25c6ff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v0, v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOnCommand:Lcom/lenovo/scg/camera/command/Command;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/command/Command;->execute()V

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    # getter for: Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideGestureTip(Z)V

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initGestureSpec()V

    goto :goto_0
.end method
