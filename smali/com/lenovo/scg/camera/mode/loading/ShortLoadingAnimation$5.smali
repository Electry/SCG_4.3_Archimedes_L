.class Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;
.super Ljava/lang/Object;
.source "ShortLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->stopAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 270
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$400(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$400(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 272
    .local v2, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 273
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$400(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$500(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;->this$0:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->access$400(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 262
    return-void
.end method
