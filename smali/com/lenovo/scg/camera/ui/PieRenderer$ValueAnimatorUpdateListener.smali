.class Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimatorUpdateListener"
.end annotation


# instance fields
.field private endValue:F

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;F)V
    .locals 0
    .param p2, "end"    # F

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2364
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->endValue:F

    .line 2365
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$2000(Lcom/lenovo/scg/camera/ui/PieRenderer;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$2102(Lcom/lenovo/scg/camera/ui/PieRenderer;F)F

    .line 2373
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationUpdate(), mValueAnimRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$2100(Lcom/lenovo/scg/camera/ui/PieRenderer;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$2100(Lcom/lenovo/scg/camera/ui/PieRenderer;)F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->endValue:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$2102(Lcom/lenovo/scg/camera/ui/PieRenderer;F)F

    .line 2377
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2380
    :cond_0
    return-void
.end method
