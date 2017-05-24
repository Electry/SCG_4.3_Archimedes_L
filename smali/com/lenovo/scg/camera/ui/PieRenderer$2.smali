.class Lcom/lenovo/scg/camera/ui/PieRenderer$2;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;->fadeIn()V
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
    .line 722
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$2;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$2;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$602(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 731
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 735
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 726
    return-void
.end method
