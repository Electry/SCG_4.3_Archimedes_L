.class Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;
.super Ljava/lang/Object;
.source "ShowProTutorialView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->showProTutorialAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

.field final synthetic val$hiddenAlphaAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;->val$hiddenAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;->val$hiddenAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 191
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$200(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    return-void
.end method
