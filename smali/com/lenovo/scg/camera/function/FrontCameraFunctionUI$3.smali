.class Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;
.super Landroid/content/BroadcastReceiver;
.source "FrontCameraFunctionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x4

    .line 577
    const-string v0, "FrontCameraFunctionUI"

    const-string v1, "enterVideoReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->hideAllButton()V

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 582
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->hideBeautyBar()V

    .line 588
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer3()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer3()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer4()Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$3;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->getContainer4()Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 596
    :cond_1
    return-void
.end method
