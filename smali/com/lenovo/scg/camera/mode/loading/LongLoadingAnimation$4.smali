.class Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;
.super Ljava/lang/Object;
.source "LongLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V
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
    .line 184
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 198
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$800(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$800(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 200
    .local v2, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 201
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$800(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$900(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$800(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$4;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$802(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 208
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    return-void
.end method
