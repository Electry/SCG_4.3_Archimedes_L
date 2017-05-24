.class Lcom/lenovo/scg/camera/ui/PieRenderer$3;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;->startFadeOut(Lcom/lenovo/scg/camera/ui/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

.field final synthetic val$item:Lcom/lenovo/scg/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->val$item:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->val$item:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieItem;->performClick()V

    .line 871
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$802(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    .line 872
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # invokes: Lcom/lenovo/scg/camera/ui/PieRenderer;->deselect()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$900(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    .line 873
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # invokes: Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1000(Lcom/lenovo/scg/camera/ui/PieRenderer;Z)V

    .line 874
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$3;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->setAlpha(F)V

    .line 875
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 879
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 866
    return-void
.end method
