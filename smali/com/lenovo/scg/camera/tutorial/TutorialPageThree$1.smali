.class Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;
.super Ljava/lang/Object;
.source "TutorialPageThree.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020997

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startNextStepAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$500(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V

    .line 135
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020996

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    return-void
.end method
