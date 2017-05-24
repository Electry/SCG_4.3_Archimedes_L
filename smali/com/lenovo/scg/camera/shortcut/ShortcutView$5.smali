.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;
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
    .line 823
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 840
    const-string v0, "ShortcutView"

    const-string v1, "mShortcutBigPanelFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHintArrow:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1200(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->getId()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 836
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 827
    const-string v1, "ShortcutView"

    const-string v2, "mShortcutBigPanelFadeInAnimation start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mBigPanel:Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->setVisibility(I)V

    .line 829
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/function/ProFunctionUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->setSmartUIViewShow(Z)V

    .line 830
    const/4 v1, 0x1

    new-array v0, v1, [I

    const v1, 0x7f10015d

    aput v1, v0, v3

    .line 831
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$5;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/PhotoUI;->clearScreen([I)V

    .line 832
    return-void
.end method
