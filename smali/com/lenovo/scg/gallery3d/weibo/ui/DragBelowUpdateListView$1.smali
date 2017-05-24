.class Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$1;
.super Ljava/lang/Object;
.source "DragBelowUpdateListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 430
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 443
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "state == STATE_DOWNWARDS, onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 445
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 438
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "state == STATE_DOWNWARDS, onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 433
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "state == STATE_DOWNWARDS, onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method
