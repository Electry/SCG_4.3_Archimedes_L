.class Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/CameraSwitcher;->animateHidePopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    # getter for: Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->access$100(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    # getter for: Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->access$100(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    # getter for: Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->access$200(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    # getter for: Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->access$100(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;->this$0:Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->access$102(Lcom/lenovo/scg/camera/ui/CameraSwitcher;Landroid/view/View;)Landroid/view/View;

    .line 342
    :cond_0
    return-void
.end method
