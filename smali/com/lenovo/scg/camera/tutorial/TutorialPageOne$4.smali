.class Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;
.super Ljava/lang/Object;
.source "TutorialPageOne.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->startWheelAnim()V
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
    .line 251
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewWheel:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$800(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$4;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 271
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 255
    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startWheelAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method
