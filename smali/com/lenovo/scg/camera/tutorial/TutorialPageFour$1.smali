.class Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;
.super Ljava/lang/Object;
.source "TutorialPageFour.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mImageViewCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->access$100(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->startSecondSetpAnimation()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageFour;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 211
    return-void
.end method
