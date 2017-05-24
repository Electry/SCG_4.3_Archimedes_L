.class Lcom/lenovo/scg/camera/ui/ShowProTutorialView$4;
.super Ljava/lang/Object;
.source "ShowProTutorialView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->showProTutorialAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$4;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$4;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$400(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    return-void
.end method
