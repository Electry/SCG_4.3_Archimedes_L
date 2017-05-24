.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "value":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mPreAnimationValue:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->scrollBy(II)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mPreAnimationValue:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;I)I

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScreenHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mSavedAnimationValue:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsScrolledToBegin:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->scrollTo(II)V

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsScrolledToBegin:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$402(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Z)Z

    .line 88
    :cond_0
    return-void
.end method
