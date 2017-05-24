.class Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;
.super Ljava/lang/Object;
.source "LandscapeView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 3
    .param p1, "byLongPress"    # Z

    .prologue
    .line 1830
    const-string v0, "LandscapeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDown ---isDown = - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->isDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1832
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->isDown:Z

    .line 1833
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1843
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->cancelDown(Z)V

    .line 1845
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1846
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    .line 1867
    :goto_0
    return v3

    .line 1850
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitX()I

    move-result v0

    .line 1851
    .local v0, "scrollLimitX":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v1

    .line 1853
    .local v1, "scrollLimitY":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1854
    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    .line 1856
    :cond_1
    if-nez v1, :cond_2

    move v3, v4

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, p3

    .line 1860
    .local v2, "velocity":F
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1861
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v5

    neg-float v6, v2

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .end local v0    # "scrollLimitX":I
    :goto_2
    invoke-virtual {v5, v6, v4, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 1865
    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 1866
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    goto :goto_0

    .end local v2    # "velocity":F
    .restart local v0    # "scrollLimitX":I
    :cond_4
    move v2, p4

    .line 1859
    goto :goto_1

    .restart local v2    # "velocity":F
    :cond_5
    move v0, v1

    .line 1861
    goto :goto_2

    .line 1863
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v5

    neg-float v6, v2

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v7

    if-eqz v7, :cond_7

    .end local v0    # "scrollLimitX":I
    :goto_4
    invoke-virtual {v5, v6, v4, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->fling(III)V

    goto :goto_3

    .restart local v0    # "scrollLimitX":I
    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1925
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->cancelDown(Z)V

    .line 1926
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->lockRendering()V

    .line 1930
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 1931
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->unlockRendering()V

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1872
    const-string v2, "LandscapeView"

    const-string v3, "-----------onScroll()-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->cancelDown(Z)V

    .line 1875
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1876
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    .line 1909
    :goto_0
    return v7

    .line 1880
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1881
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1882
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z
    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4602(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z

    .line 1883
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1884
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 1885
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3702(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z

    .line 1895
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, p3

    .line 1897
    .local v0, "distance":F
    :goto_2
    const/4 v1, 0x0

    .line 1898
    .local v1, "overDistance":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1899
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitX()I

    move-result v2

    :goto_3
    invoke-virtual {v3, v4, v6, v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 1903
    :goto_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1904
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/Paper;->overScroll(F)V

    .line 1907
    :cond_2
    const-string v2, "LandscapeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overDistance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    goto/16 :goto_0

    .line 1887
    .end local v0    # "distance":F
    .end local v1    # "overDistance":I
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3702(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z

    goto :goto_1

    .line 1890
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3702(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z

    goto :goto_1

    :cond_5
    move v0, p4

    .line 1895
    goto :goto_2

    .line 1899
    .restart local v0    # "distance":F
    .restart local v1    # "overDistance":I
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v2

    goto :goto_3

    .line 1901
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitX()I

    move-result v2

    :goto_5
    invoke-virtual {v3, v4, v6, v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v2

    goto :goto_5
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1811
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 1812
    .local v1, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1814
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1825
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1827
    :goto_0
    return-void

    .line 1816
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1825
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .line 1817
    :cond_1
    :try_start_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2700()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1818
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 1819
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1820
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->isDown:Z

    .line 1821
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onDown(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1825
    .end local v0    # "index":I
    :cond_2
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1914
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->cancelDown(Z)V

    .line 1915
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return v4

    .line 1916
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1918
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 1919
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
