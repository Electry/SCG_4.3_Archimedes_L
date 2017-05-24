.class Lcom/lenovo/scg/camera/ui/PieRenderer$6;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;->startFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$6;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$6;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    .line 2280
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$6;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # invokes: Lcom/lenovo/scg/camera/ui/PieRenderer;->reset()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1800(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    .line 2281
    const-string v0, "CAM_Pie"

    const-string/jumbo v1, "start fade out onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2286
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2274
    return-void
.end method
