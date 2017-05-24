.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;
.super Ljava/lang/Object;
.source "SettingUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackSettingbuttonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowAnim:Z

    .line 463
    const-string v0, "BackSettingbuttonOnClickListener.onClick"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    new-array v1, v2, [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    sget-object v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->Expand:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    aput-object v2, v1, v4

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraSettingUI([Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1122

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 476
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0
.end method
