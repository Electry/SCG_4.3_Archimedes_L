.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShutterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$600(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    new-instance v1, Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1500(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    # setter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$302(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Lcom/lenovo/scg/common/ui/FunctionChangeToast;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    .line 486
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;-><init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->setToastListener(Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;)V

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1700(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->show(I)V

    .line 496
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    new-instance v1, Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1400(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1500(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    # setter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mToast:Lcom/lenovo/scg/common/ui/FunctionChangeToast;
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$302(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;Lcom/lenovo/scg/common/ui/FunctionChangeToast;)Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 473
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 467
    return-void
.end method
