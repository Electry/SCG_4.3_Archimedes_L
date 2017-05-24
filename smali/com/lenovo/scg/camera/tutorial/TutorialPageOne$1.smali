.class Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TutorialPageOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startAnimiation()V
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
    .line 148
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startShutterButtonStep2Anim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$400(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 153
    return-void
.end method
