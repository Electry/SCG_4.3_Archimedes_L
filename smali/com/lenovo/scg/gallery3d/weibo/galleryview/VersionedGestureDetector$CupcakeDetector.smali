.class Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
.source "VersionedGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CupcakeDetector"
.end annotation


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 55
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mMinimumVelocity:F

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mTouchSlop:F

    .line 57
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return v7

    .line 78
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 79
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 82
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 83
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v4

    .line 89
    .local v4, "x":F
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 90
    .local v5, "y":F
    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    sub-float v0, v4, v8

    .local v0, "dx":F
    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    sub-float v1, v5, v8

    .line 92
    .local v1, "dy":F
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-nez v8, :cond_2

    .line 95
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mTouchSlop:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    move v6, v7

    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    .line 98
    :cond_2
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 99
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;

    invoke-interface {v6, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;->onDrag(FF)V

    .line 100
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 101
    iput v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 103
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 112
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 113
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 114
    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 120
    :pswitch_3
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-eqz v6, :cond_3

    .line 121
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 122
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 123
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 126
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 127
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 129
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .local v2, "vX":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 133
    .local v3, "vY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_3

    .line 134
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    iget v9, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    neg-float v10, v2

    neg-float v11, v3

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;->onFling(FFFF)V

    .line 140
    .end local v2    # "vX":F
    .end local v3    # "vY":F
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 141
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 142
    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
