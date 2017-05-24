.class Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MiniCameraScanningFrameRender.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftValueAnimatorUpdateListener"
.end annotation


# instance fields
.field private endValue:I

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)V
    .locals 0
    .param p2, "end"    # I

    .prologue
    .line 274
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;->endValue:I

    .line 276
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->access$002(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)I

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueLeft:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->access$000(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$LeftValueAnimatorUpdateListener;->endValue:I

    if-le v0, v1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 289
    :cond_0
    return-void
.end method
