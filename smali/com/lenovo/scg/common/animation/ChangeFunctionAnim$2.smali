.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShortcutAnimNextStep(Landroid/view/View;)V
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
    .line 209
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # getter for: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->mFunction:I
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$600(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startVideoAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$700(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startThumbnailAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$800(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startVideoAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$700(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startThumbnailAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$800(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$2;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startSmartAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$900(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    return-void
.end method
