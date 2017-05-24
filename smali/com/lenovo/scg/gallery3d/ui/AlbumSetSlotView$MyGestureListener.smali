.class Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1
    .param p1, "byLongPress"    # Z

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    .line 918
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 928
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 932
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 945
    :goto_0
    return v2

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 940
    .local v0, "scrollLimit":I
    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0

    .line 941
    :cond_1
    move v1, p4

    .line 942
    .local v1, "velocity":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v4

    neg-float v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5, v3, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 943
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 944
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 986
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 987
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$2000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    :goto_0
    return-void

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->lockRendering()V

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 991
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->unlockRendering()V

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 950
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 954
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 967
    :goto_0
    return v6

    .line 961
    :cond_0
    move v0, p4

    .line 962
    .local v0, "distance":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 963
    .local v1, "overDistance":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 964
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/Paper;->overScroll(F)V

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 901
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 902
    .local v1, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 904
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 911
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 913
    :goto_0
    return-void

    .line 905
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 906
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 907
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    .line 908
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :cond_1
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0    # "index":I
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

    .line 972
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 973
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$2000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v4

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 975
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onSingleTapUp(I)V

    .line 977
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->isPressCloud(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;->onCloudSingleTapUp()V

    goto :goto_0
.end method
