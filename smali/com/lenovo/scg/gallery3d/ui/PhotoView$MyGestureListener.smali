.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 1

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5
    .param p1, "delta"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1890
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-float v2, p1, v4

    float-to-int v2, v2

    .line 1901
    :goto_0
    return v2

    .line 1894
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1895
    .local v1, "size":I
    const v2, 0x3e19999a    # 0.15f

    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 1896
    .local v0, "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1897
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    .line 1901
    :goto_1
    add-float v2, p1, v4

    float-to-int v2, v2

    goto :goto_0

    .line 1897
    :cond_1
    neg-float p1, v0

    goto :goto_1

    .line 1899
    :cond_2
    int-to-float v2, v1

    div-float v2, p1, v2

    const v3, 0x3fc90fdb

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float p1, v0, v2

    goto :goto_1
.end method

.method private deleteAfterAnimation(I)V
    .locals 8
    .param p1, "duration"    # I

    .prologue
    .line 1980
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1981
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v2, :cond_0

    .line 1998
    :goto_0
    return-void

    .line 1982
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1983
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v6

    add-int/2addr v5, v6

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 1984
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v5, 0x4

    # |= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$376(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 1985
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1987
    .local v3, "m":Landroid/os/Message;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1988
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getBrustPath(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "brushPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1990
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "BrushPath"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1994
    .end local v0    # "brushPath":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1996
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 1997
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v4

    int-to-long v6, p1

    invoke-virtual {v4, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private flingImages(FFF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "dY"    # F

    .prologue
    .line 1939
    const-string v8, "PhotoView"

    const-string v9, "flingImages"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v8, p1

    float-to-int v6, v8

    .line 1941
    .local v6, "vx":I
    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v8, p2

    float-to-int v7, v8

    .line 1942
    .local v7, "vy":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1943
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v8

    .line 1976
    :goto_0
    return v8

    .line 1946
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1947
    const/4 v8, 0x0

    goto :goto_0

    .line 1950
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1951
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result v8

    goto :goto_0

    .line 1955
    :cond_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v8

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1956
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1958
    :cond_4
    const/16 v8, 0x9c4

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v5

    .line 1959
    .local v5, "maxVelocity":I
    const/16 v8, 0x1f4

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    .line 1960
    .local v3, "escapeVelocity":I
    const/16 v8, 0x96

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    .line 1961
    .local v2, "escapeDistance":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 1962
    .local v0, "centerY":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v3, :cond_7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_7

    if-lez v7, :cond_5

    const/4 v8, 0x1

    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-le v0, v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    if-ne v8, v9, :cond_7

    int-to-float v8, v2

    cmpl-float v8, p3, v8

    if-ltz v8, :cond_7

    const/4 v4, 0x1

    .line 1964
    .local v4, "fastEnough":Z
    :goto_3
    if-eqz v4, :cond_9

    .line 1965
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1966
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v9

    invoke-virtual {v8, v9, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v1

    .line 1967
    .local v1, "duration":I
    if-ltz v1, :cond_9

    .line 1968
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v9

    if-gez v7, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1969
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1972
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const v9, 0x7fffffff

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 1973
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1962
    .end local v1    # "duration":I
    .end local v4    # "fastEnough":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1968
    .restart local v1    # "duration":I
    .restart local v4    # "fastEnough":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 1976
    .end local v1    # "duration":I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2093
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2095
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 2096
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 2098
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 2104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 2106
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3fc00000    # 1.5f

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x1

    .line 1780
    const-string v3, "PhotoView"

    const-string/jumbo v6, "onDoubleTap"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 1817
    :goto_0
    return v3

    .line 1782
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    .line 1784
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 1786
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1787
    .local v0, "controller":Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v2

    .line 1790
    .local v2, "scale":F
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1794
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1795
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v5, v2, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, p1, p2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->zoomIn(FFF)V

    .line 1812
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    instance-of v3, v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v3, :cond_3

    .line 1813
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 1814
    .local v1, "page":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->cancelSingleTap()V

    .end local v1    # "page":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_3
    move v3, v4

    .line 1817
    goto :goto_0

    .line 1797
    :cond_4
    cmpg-float v3, v2, v7

    if-gez v3, :cond_5

    .line 1798
    mul-float v3, v2, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, p1, p2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto :goto_1

    .line 1801
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 2110
    const-string v2, "PhotoView"

    const-string/jumbo v3, "onDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    .line 2113
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 2114
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5102(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 2116
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    .line 2143
    :goto_0
    return-void

    .line 2118
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # |= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$376(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 2120
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2121
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 2122
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->stopScrolling()V

    .line 2126
    :goto_1
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 2127
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 2128
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2129
    add-float v2, p1, v5

    float-to-int v0, v2

    .line 2130
    .local v0, "xi":I
    add-float v2, p2, v5

    float-to-int v1, v2

    .line 2133
    .local v1, "yi":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v3

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 2135
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 2136
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    goto :goto_0

    .line 2124
    .end local v0    # "xi":I
    .end local v1    # "yi":I
    :cond_2
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 2138
    .restart local v0    # "xi":I
    .restart local v1    # "yi":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 2141
    .end local v0    # "xi":I
    .end local v1    # "yi":I
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1906
    const-string v0, "PhotoView"

    const-string/jumbo v3, "onFling"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1935
    :goto_0
    return v0

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1911
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1912
    const-string v0, "input has been locked,cancel current onScroll"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1913
    goto :goto_0

    .line 1915
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getWindowStatus()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    move-result-object v0

    sget-object v3, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-eq v0, v3, :cond_3

    move v0, v1

    .line 1916
    goto :goto_0

    .line 1920
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    .line 1923
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 1925
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1926
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1930
    :goto_1
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    move v0, v1

    .line 1935
    goto :goto_0

    .line 1928
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FFF)Z

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 6
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2027
    const-string v4, "PhotoView"

    const-string/jumbo v5, "onScale"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return v3

    .line 2030
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v4, :cond_0

    .line 2032
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v4, :cond_0

    .line 2034
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2036
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    goto :goto_0

    .line 2038
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, p3, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 2043
    .local v1, "outOfRange":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    .line 2044
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec    # 0.97f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a    # 1.03f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    :cond_4
    move v0, v3

    .line 2047
    .local v0, "largeEnough":Z
    :goto_1
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    .line 2048
    if-gez v1, :cond_5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-lez v1, :cond_a

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2049
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 2053
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    # &= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$372(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 2054
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2055
    const-string v4, "PinchOut"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 2059
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2063
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 2064
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto/16 :goto_0

    .end local v0    # "largeEnough":Z
    :cond_8
    move v0, v2

    .line 2044
    goto :goto_1

    .line 2057
    .restart local v0    # "largeEnough":Z
    :cond_9
    const-string v4, "PinchIn"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    goto :goto_2

    .line 2069
    :cond_a
    if-eqz v1, :cond_b

    .line 2070
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto/16 :goto_0

    .line 2072
    :cond_b
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto/16 :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2002
    const-string v0, "PhotoView"

    const-string/jumbo v3, "onScaleBegin"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return v2

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 2008
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 2018
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 2019
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 2020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5102(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 2021
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2018
    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 2079
    const-string v0, "PhotoView"

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 2090
    :cond_0
    :goto_0
    return-void

    .line 2082
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 2084
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->endScale()V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "totalX"    # F
    .param p4, "totalY"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1822
    const-string v4, "PhotoView"

    const-string/jumbo v7, "onScroll"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1825
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->stopPanoramaAnimation()Z

    .line 1829
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1830
    const-string v4, "input has been locked,cancel current onScroll"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1886
    :cond_1
    :goto_0
    return v5

    .line 1833
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getWindowStatus()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    move-result-object v4

    sget-object v7, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-ne v4, v7, :cond_1

    .line 1838
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 1843
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onScroll(FFFF)Z

    .line 1846
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v4, :cond_1

    .line 1848
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1851
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v4, :cond_4

    .line 1852
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1853
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1856
    :cond_4
    neg-float v4, p1

    add-float/2addr v4, v8

    float-to-int v1, v4

    .line 1857
    .local v1, "dxi":I
    neg-float v4, p2

    add-float/2addr v4, v8

    float-to-int v2, v4

    .line 1858
    .local v2, "dyi":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1859
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v4, :cond_7

    .line 1860
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->scrollFilmX(I)V

    .line 1876
    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 1877
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    .line 1878
    const-string/jumbo v4, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnFilmModeChangeListener dx= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1880
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;->onFilmModeChange(Z)V

    goto/16 :goto_0

    .end local v1    # "dxi":I
    .end local v2    # "dyi":I
    :cond_6
    move v4, v6

    .line 1853
    goto :goto_1

    .line 1862
    .restart local v1    # "dxi":I
    .restart local v2    # "dyi":I
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_1

    .line 1863
    invoke-direct {p0, p4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result v3

    .line 1864
    .local v3, "newDeltaY":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int v0, v3, v4

    .line 1865
    .local v0, "d":I
    if-eqz v0, :cond_5

    .line 1866
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->scrollFilmY(II)V

    .line 1867
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    goto :goto_2

    .line 1871
    .end local v0    # "d":I
    .end local v3    # "newDeltaY":I
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_2
.end method

.method public onSingleTapUp(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v11, 0x400000

    const/4 v7, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 1725
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-ge v5, v8, :cond_1

    .line 1726
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return v6

    .line 1733
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v8, -0x2

    # &= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v5, v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$372(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 1735
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v5, :cond_3

    .line 1736
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    add-float v8, p1, v10

    float-to-int v8, v8

    add-float v9, p2, v10

    float-to-int v9, v9

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v5, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;II)V

    .line 1741
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1742
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    const/4 v4, 0x0

    .line 1743
    .local v4, "supported":I
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    .line 1744
    :cond_2
    and-int/lit16 v5, v4, 0x4000

    if-nez v5, :cond_3

    .line 1745
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1746
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1751
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v4    # "supported":I
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1752
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getIsInCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1753
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1754
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_4

    .line 1755
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    and-int/2addr v5, v11

    if-ne v11, v5, :cond_5

    move v5, v6

    :goto_1
    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z
    invoke-static {v8, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 1759
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1762
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    add-float v7, p1, v10

    float-to-int v7, v7

    add-float v8, p2, v10

    float-to-int v8, v8

    invoke-interface {v5, v7, v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_0

    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_5
    move v5, v7

    .line 1755
    goto :goto_1

    .line 1765
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1766
    .local v2, "m":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1767
    .local v0, "inv":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1768
    const/4 v5, 0x2

    new-array v3, v5, [F

    aput p1, v3, v7

    aput p2, v3, v6

    .line 1769
    .local v3, "pts":[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1770
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    aget v7, v3, v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    aget v8, v3, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-interface {v5, v7, v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_0
.end method

.method public onUp()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 2147
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    # &= operator for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$372(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 2150
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->onRelease()V

    .line 2154
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_2

    .line 2155
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 2156
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 2157
    .local v1, "h":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    int-to-float v6, v1

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 2158
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v0

    .line 2159
    .local v0, "duration":I
    if-ltz v0, :cond_2

    .line 2160
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v1

    mul-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 2161
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 2166
    .end local v0    # "duration":I
    .end local v1    # "h":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v3, :cond_4

    .line 2167
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto/16 :goto_0

    .restart local v0    # "duration":I
    .restart local v1    # "h":I
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 2160
    goto :goto_1

    .line 2171
    .end local v0    # "duration":I
    .end local v1    # "h":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapToNeighborImage()Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$5400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2173
    :cond_5
    const-string v3, "PhotoView"

    const-string v4, "SANP back"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2182
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 2183
    return-void

    .line 2182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
