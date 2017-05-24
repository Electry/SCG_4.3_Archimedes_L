.class Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;
.super Ljava/lang/Object;
.source "TutorialPageOne.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 182
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mRest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mIsAniming:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$300(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mHandImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$500(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne$2;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;

    # getter for: Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->mImageViewShutterHi:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;->access$200(Lcom/lenovo/scg/camera/tutorial/TutorialPageOne;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_0
    return-void
.end method
