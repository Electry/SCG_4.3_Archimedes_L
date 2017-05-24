.class Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$3;
.super Ljava/lang/Object;
.source "LongLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startTextAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$3;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 173
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$3;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$700(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 169
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 165
    return-void
.end method
