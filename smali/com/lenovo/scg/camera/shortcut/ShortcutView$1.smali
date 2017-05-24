.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeOutAnimationRunning:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$202(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z

    .line 723
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 725
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mSmallBg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHideShortcutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHideShortcutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initArrow()V

    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/function/ProFunctionUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->setSmartUIViewShow(Z)V

    .line 739
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI()V

    .line 741
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 718
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 713
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeOutAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$202(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z

    .line 714
    return-void
.end method
