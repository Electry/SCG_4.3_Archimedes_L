.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;
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
    .line 528
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    const-string v3, "16x9"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    .line 538
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 539
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getSupplyValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "pink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const v2, 0x66ffbde7

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    .line 547
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    .line 548
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->setWaterButtonEnabled(Z)V

    .line 551
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideSizePanel()V

    .line 552
    return-void

    .line 542
    :cond_1
    const-string/jumbo v1, "orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$14;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    const v2, 0x66ffbb7e

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0
.end method
