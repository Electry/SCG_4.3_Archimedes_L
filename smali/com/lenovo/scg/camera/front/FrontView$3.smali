.class Lcom/lenovo/scg/camera/front/FrontView$3;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, "FrontView"

    const-string v1, "mPhotoFunctionFadeOutAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$000(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$100(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$200(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 375
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 368
    const-string v0, "FrontView"

    const-string v1, "mPhotoFunctionFadeOutAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$000(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$3;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$100(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 371
    return-void
.end method
