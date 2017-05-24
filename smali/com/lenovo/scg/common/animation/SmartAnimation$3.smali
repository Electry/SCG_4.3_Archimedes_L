.class Lcom/lenovo/scg/common/animation/SmartAnimation$3;
.super Ljava/lang/Object;
.source "SmartAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/SmartAnimation;->startHideSmartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/SmartAnimation;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # getter for: Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$500(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # getter for: Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$600(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # getter for: Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$500(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    # getter for: Lcom/lenovo/scg/common/animation/SmartAnimation;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->access$600(Lcom/lenovo/scg/common/animation/SmartAnimation;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/SmartAnimation$3;->this$0:Lcom/lenovo/scg/common/animation/SmartAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/SmartAnimation;->destroy()V

    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 175
    return-void
.end method
