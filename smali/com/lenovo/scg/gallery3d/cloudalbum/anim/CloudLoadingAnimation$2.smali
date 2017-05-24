.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;
.super Ljava/lang/Object;
.source "CloudLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

.field final synthetic val$imageView1:Landroid/widget/ImageView;

.field final synthetic val$imageView2:Landroid/widget/ImageView;

.field final synthetic val$imageView3:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView3:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;I)I

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mCurrentIndex:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mImageViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mIsStartTextAnim:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mIsStartTextAnim:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;Z)Z

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startTextAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)V

    .line 127
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-void
.end method
