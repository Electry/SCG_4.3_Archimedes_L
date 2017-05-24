.class Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;
.super Ljava/lang/Object;
.source "DragBelowUpdateListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToLow(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 836
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "moveToLow, onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->rotateAnimation()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V

    .line 843
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 830
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "moveToLow, onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 825
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "moveToLow, onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method
