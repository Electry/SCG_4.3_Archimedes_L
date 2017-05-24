.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;->this$1:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;->this$1:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;

    iget-object v0, v0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1000(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6$1;->this$1:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;

    iget-object v0, v0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$6;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mListener:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1600(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;->onAnimEnd()V

    .line 493
    return-void
.end method
