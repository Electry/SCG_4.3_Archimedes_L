.class Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TutorialPageOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startShutterButtonStep2Anim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 225
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$3;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startWheelAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$600(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    goto :goto_0
.end method
