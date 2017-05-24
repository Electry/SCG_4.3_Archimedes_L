.class Lcom/lenovo/scg/camera/UserCenterManager$1;
.super Ljava/lang/Object;
.source "UserCenterManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/UserCenterManager;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/UserCenterManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/UserCenterManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterManager$1;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager$1;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    # getter for: Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterManager;->access$000(Lcom/lenovo/scg/camera/UserCenterManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager$1;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    # getter for: Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterManager;->access$000(Lcom/lenovo/scg/camera/UserCenterManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager$1;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    const/4 v1, -0x1

    # setter for: Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/UserCenterManager;->access$102(Lcom/lenovo/scg/camera/UserCenterManager;I)I

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager$1;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/UserCenterManager;->setWithChild(Z)V

    .line 90
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 102
    return-void
.end method
