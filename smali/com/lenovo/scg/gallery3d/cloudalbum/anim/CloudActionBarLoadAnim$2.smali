.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;
.super Ljava/lang/Object;
.source "CloudActionBarLoadAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

.field final synthetic val$imageView1:Landroid/widget/ImageView;

.field final synthetic val$imageView2:Landroid/widget/ImageView;

.field final synthetic val$imageView3:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView3:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView3:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mImageViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;I)I

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V

    .line 92
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$2;->val$imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    return-void
.end method
