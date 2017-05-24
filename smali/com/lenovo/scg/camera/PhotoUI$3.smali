.class Lcom/lenovo/scg/camera/PhotoUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoUI;->startAnimatorShutterBtnVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;Z)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iput-boolean p2, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->val$reverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->val$reverse:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # setter for: Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStopAnim:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$602(Lcom/lenovo/scg/camera/PhotoUI;Z)Z

    .line 413
    :goto_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 414
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoStartTime onAnimationEnd to call onVideoMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->val$reverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->setVideoAnimationDone()V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->val$reverse:Z

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/PhotoController;->onVideoMode(Z)V

    .line 418
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$3;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # setter for: Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStartAnim:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$702(Lcom/lenovo/scg/camera/PhotoUI;Z)Z

    goto :goto_0
.end method
