.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;
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
    .line 846
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutBigPanelFadeOutAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1302(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z

    .line 870
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getAppView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1102(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    .line 873
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 864
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 851
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutBigPanelFadeOutAnimationRunning:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1302(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z

    .line 852
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideHintArrow()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    .line 854
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 858
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    .line 859
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$6;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/function/ProFunctionUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->setSmartUIViewShow(Z)V

    .line 860
    return-void
.end method
