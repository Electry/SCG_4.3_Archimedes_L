.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$5;
.super Ljava/lang/Object;
.source "SettingUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onCameraEffectClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$5;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScgSeekBarChange(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 1230
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingUI_onScgSeekBarChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$5;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    const-string v1, "key_camera_setting_duibidu_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void
.end method
