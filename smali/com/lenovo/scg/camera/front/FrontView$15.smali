.class Lcom/lenovo/scg/camera/front/FrontView$15;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->initBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$15;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$15;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1600(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1740
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$15;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1600(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1741
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1735
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1731
    return-void
.end method
