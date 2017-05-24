.class Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$5;
.super Ljava/lang/Object;
.source "ChangeFunctionAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startModeAnim()V
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
    .line 416
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$5;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$5;->this$0:Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;

    # invokes: Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->startShutterAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;->access$1300(Lcom/lenovo/scg/common/animation/ChangeFunctionAnim;)V

    .line 433
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 428
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 422
    return-void
.end method
