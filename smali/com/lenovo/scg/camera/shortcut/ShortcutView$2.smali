.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;
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
    .line 744
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getShortcutItemRect()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$900(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mSmallBg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$500(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isShortcutPanelFadeInAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1002(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Z)Z

    .line 777
    const-string v0, "ShortcutView"

    const-string v1, "mShortcutPanelFadeInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 770
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 748
    const-string v2, "ShortcutView"

    const-string v3, "mShortcutPanelFadeInAnimation start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 750
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 751
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    const/4 v1, 0x0

    .line 754
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 755
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 756
    .restart local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    iget-object v2, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 757
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mHideShortcutItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideHint()V

    .line 765
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$2;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mFunctionUI:Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/function/ProFunctionUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->setSmartUIViewShow(Z)V

    .line 766
    return-void
.end method
