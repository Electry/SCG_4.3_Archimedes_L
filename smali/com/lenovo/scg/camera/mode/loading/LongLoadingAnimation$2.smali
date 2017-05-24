.class Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;
.super Ljava/lang/Object;
.source "LongLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

.field final synthetic val$imageView1:Landroid/widget/ImageView;

.field final synthetic val$imageView2:Landroid/widget/ImageView;

.field final synthetic val$imageView3:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView3:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$100(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$200(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    # setter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$102(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;I)I

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mCurrentIndex:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$100(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mImageViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$200(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mIsStartTextAnim:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$300(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # setter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mIsStartTextAnim:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$302(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;Z)Z

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # invokes: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startTextAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$400(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # invokes: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$000(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)V

    .line 137
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 142
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$600(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$500(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation$2;->this$0:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    # getter for: Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->access$700(Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void
.end method
