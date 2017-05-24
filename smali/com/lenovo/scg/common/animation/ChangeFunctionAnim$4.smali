.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startHideSmartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1100(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1200(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1100(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$4;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mSmartBg:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1200(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 347
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 336
    return-void
.end method
