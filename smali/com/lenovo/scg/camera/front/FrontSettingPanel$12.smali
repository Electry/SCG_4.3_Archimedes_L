.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;
.super Ljava/lang/Object;
.source "FrontSettingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSizePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 478
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    const-string/jumbo v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    const-string v3, "4x3"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    .line 484
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getSupplyValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "pink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/16 v2, -0x220d

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    .line 493
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    .line 494
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->setWaterButtonEnabled(Z)V

    .line 497
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideSizePanel()V

    .line 498
    return-void

    .line 488
    :cond_1
    const-string/jumbo v1, "orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$12;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/16 v2, -0x2b52

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0
.end method
