.class Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;
.super Ljava/lang/Object;
.source "DragBelowUpdateListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->rotateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field final synthetic val$isNetworkAvaliable:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;Z)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->val$isNetworkAvaliable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 982
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "rotateAnimation, onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    .line 960
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "rotateAnimation, onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string/jumbo v0, "panhui4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotateAnimation, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->val$isNetworkAvaliable:Z

    if-nez v0, :cond_1

    .line 966
    const-string/jumbo v0, "panhui4"

    const-string v1, "is not net!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 969
    const-string/jumbo v0, "panhui4"

    const-string v1, "is not net && mAction = MotionEvent.ACTION_UP, move to high!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 974
    const-string/jumbo v0, "panhui4"

    const-string v1, "mAction = MotionEvent.ACTION_UP && update_state!= UPDATE_STATE_REFRESHING, moveToHigh!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 955
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "rotateAnimation, onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method
