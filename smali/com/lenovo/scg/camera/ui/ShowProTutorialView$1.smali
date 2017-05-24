.class Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # invokes: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->hiddenView()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$000(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$100(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$200(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$200(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$300(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$300(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 123
    return-void
.end method
