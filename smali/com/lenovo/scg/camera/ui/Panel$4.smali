.class Lcom/lenovo/scg/camera/ui/Panel$4;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    sget-object v1, Lcom/lenovo/scg/camera/ui/Panel$State;->READY:Lcom/lenovo/scg/camera/ui/Panel$State;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/Panel;->access$200(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->postProcess()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/Panel;->access$1500(Lcom/lenovo/scg/camera/ui/Panel;)V

    .line 501
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 504
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$4;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    sget-object v1, Lcom/lenovo/scg/camera/ui/Panel$State;->ANIMATING:Lcom/lenovo/scg/camera/ui/Panel$State;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 508
    return-void
.end method
