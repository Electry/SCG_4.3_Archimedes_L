.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;
.super Ljava/lang/Object;
.source "CloudLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->stopAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 191
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 193
    .local v2, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 194
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$4;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method
