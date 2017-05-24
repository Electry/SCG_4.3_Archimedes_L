.class Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;
.super Ljava/lang/Object;
.source "ImageCaptureFunctionUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mFlashButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-ne p1, v1, :cond_0

    .line 160
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->hideShortcutPanel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    if-nez v1, :cond_3

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04017e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    # setter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$002(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setShortcutAdapterController(Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;)V

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    const v3, 0x7f1008da

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    # setter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$202(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Lcom/lenovo/scg/camera/ui/RotateLayout;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 173
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 177
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 179
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getAppView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setVisibility(I)V

    .line 182
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    const-string v2, "flash"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->showListView(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mOrientation:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$300(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$400(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    iget-object v2, v2, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f05003e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$402(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mShortcutBigPanelFadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$400(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
