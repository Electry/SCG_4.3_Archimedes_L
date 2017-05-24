.class Lcom/lenovo/scg/common/ui/ScrollLayout$5;
.super Ljava/lang/Object;
.source "ScrollLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$5;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$5;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoint3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$5;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # invokes: Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideLastStepAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$700(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    .line 208
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 198
    return-void
.end method
