.class Lcom/lenovo/scg/camera/ui/ShowProTutorialView$2;
.super Ljava/lang/Object;
.source "ShowProTutorialView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 150
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$2;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 161
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$2;->this$0:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    # getter for: Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->access$300(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method
