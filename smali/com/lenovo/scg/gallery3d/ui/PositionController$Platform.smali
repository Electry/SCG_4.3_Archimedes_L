.class Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
.super Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V
    .locals 1

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$1;

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1576
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .locals 4
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "kind"    # I

    .prologue
    const/4 v0, 0x0

    .line 1640
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_0

    .line 1650
    :goto_0
    return v0

    .line 1641
    :cond_0
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    .line 1642
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1643
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromY:I

    .line 1644
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1645
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToY:I

    .line 1646
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 1647
    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2200()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationDuration:I

    .line 1648
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1649
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    .line 1650
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingFilm(F)Z
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2300(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1666
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2300(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1668
    const/4 v0, -0x1

    .line 1669
    .local v0, "dir":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ge v1, v2, :cond_3

    .line 1671
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2400(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2500(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1673
    const/4 v0, 0x3

    .line 1694
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1698
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2300(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1699
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1701
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2300(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    return v1

    .line 1676
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    const/4 v0, 0x3

    goto :goto_0

    .line 1681
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-le v1, v2, :cond_0

    .line 1683
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHaveCamera:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2400(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1684
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1685
    const/4 v0, 0x1

    goto :goto_0

    .line 1688
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2500(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 8
    .param p1, "progress"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1705
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1706
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1707
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2800(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)V

    .line 1709
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1710
    .local v1, "oldX":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1713
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1714
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1715
    .local v2, "v":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1721
    .end local v2    # "v":I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    :goto_1
    return v3

    .line 1716
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1717
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1718
    .restart local v2    # "v":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .end local v2    # "v":I
    :cond_2
    move v3, v4

    .line 1721
    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1726
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1727
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1728
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1739
    :cond_0
    :goto_0
    return v0

    .line 1731
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_2

    .line 1732
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1734
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1735
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1736
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_3

    move v0, v1

    .line 1737
    goto :goto_0

    .line 1739
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1655
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1656
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    .line 1660
    :goto_0
    return v0

    .line 1657
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1658
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_0

    .line 1660
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 1586
    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return v7

    .line 1587
    :cond_1
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1588
    :cond_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$800(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1590
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;

    .line 1591
    .local v0, "b":Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v9, 0x3f333333    # 0.7f

    mul-float v4, v8, v9

    .line 1592
    .local v4, "scaleMin":F
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v9, 0x3fb33333    # 1.4f

    mul-float v3, v8, v9

    .line 1593
    .local v3, "scaleMax":F
    :goto_2
    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v8, v4, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 1594
    .local v1, "scale":F
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1595
    .local v5, "x":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1596
    .local v6, "y":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1597
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1615
    :goto_3
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v8, v5, :cond_3

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-eq v8, v6, :cond_0

    .line 1616
    :cond_3
    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v7

    goto :goto_0

    .line 1591
    .end local v1    # "scale":F
    .end local v3    # "scaleMax":F
    .end local v4    # "scaleMin":F
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_4
    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1592
    .restart local v4    # "scaleMin":F
    :cond_5
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1599
    .restart local v1    # "scale":F
    .restart local v3    # "scaleMax":F
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_6
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1200()I

    move-result v9

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v8, v1, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PositionController;FI)V

    .line 1609
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v8, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1400(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1610
    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v2, v8, v1

    .line 1611
    .local v2, "scaleDiff":F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusX:F
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1500(Lcom/lenovo/scg/gallery3d/ui/PositionController;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    .line 1613
    .end local v2    # "scaleDiff":F
    :cond_7
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1600(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v5

    goto :goto_3
.end method

.method public updateDefaultXY()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1629
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrained:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1800(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1630
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewW:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1631
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1636
    :goto_1
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1633
    :cond_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1634
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_1
.end method
