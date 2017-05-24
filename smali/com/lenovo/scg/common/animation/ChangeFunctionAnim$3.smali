.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$3;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartAnim()V
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
    .line 300
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$3;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$3;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1000(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 304
    return-void
.end method
