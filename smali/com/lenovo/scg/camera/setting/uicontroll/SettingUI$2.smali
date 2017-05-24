.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;
.super Landroid/os/Handler;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
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
    .line 397
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 401
    const-string v0, "SettingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 409
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->removeViewFromCameraControlLayout(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    goto :goto_0

    .line 418
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$800(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisibleForWheel(Z)V

    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProBigWheelSetting()Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$900(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput v4, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    .line 430
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput v4, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisibleForWheel(Z)V

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showProBigWheelSetting()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    goto :goto_1

    .line 434
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput-boolean v3, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowAnim:Z

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x1122 -> :sswitch_2
    .end sparse-switch
.end method
