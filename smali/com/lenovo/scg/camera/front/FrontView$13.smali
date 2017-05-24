.class Lcom/lenovo/scg/camera/front/FrontView$13;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1687
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToLeft:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1200(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1693
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 1694
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1701
    :goto_0
    return-void

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToRight:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1300(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1697
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 1698
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1699
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$13;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$1400(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # invokes: Lcom/lenovo/scg/camera/front/FrontView;->showBarIndicator(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$1500(Lcom/lenovo/scg/camera/front/FrontView;I)V

    goto :goto_0
.end method
