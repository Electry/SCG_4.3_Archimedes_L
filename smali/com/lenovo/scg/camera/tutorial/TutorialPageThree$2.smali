.class Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;
.super Ljava/lang/Object;
.source "TutorialPageThree.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startNextStepAnim()V
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
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020992

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$700(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$900(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$900(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    iget-object v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    # setter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mAnimModeIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$002(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;I)I

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->startAnimation()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$1000(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)V

    .line 184
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020994

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->mModeTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;->access$700(Lcom/lenovo/scg/camera/tutorial/TutorialPageThree;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    return-void
.end method
