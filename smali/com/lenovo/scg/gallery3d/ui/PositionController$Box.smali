.class Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
.super Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Box"
.end annotation


# instance fields
.field public mAbsoluteX:I

.field public mCurrentScale:F

.field public mCurrentY:I

.field public mFromScale:F

.field public mFromY:I

.field public mImageH:I

.field public mImageW:I

.field public mOriScaleMin:F

.field public mScaleMax:F

.field public mScaleMin:F

.field public mToScale:F

.field public mToY:I

.field public mUseViewSize:Z

.field public mZoomInScaleMin:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V
    .locals 1

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;Lcom/lenovo/scg/gallery3d/ui/PositionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$1;

    .prologue
    .line 1748
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;-><init>(Lcom/lenovo/scg/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;IFI)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 1748
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v0

    return v0
.end method

.method private doAnimation(IFI)Z
    .locals 2
    .param p1, "targetY"    # I
    .param p2, "targetScale"    # F
    .param p3, "kind"    # I

    .prologue
    .line 1827
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p2

    .line 1829
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_0

    .line 1830
    const/4 v0, 0x0

    .line 1842
    :goto_0
    return v0

    .line 1834
    :cond_0
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    .line 1835
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromY:I

    .line 1836
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 1837
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToY:I

    .line 1838
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    .line 1839
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 1840
    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->ANIM_TIME:[I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2200()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationDuration:I

    .line 1841
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    .line 1842
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1860
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1861
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2800(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)V

    .line 1863
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1864
    .local v0, "oldY":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1867
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v3

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1868
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1869
    .local v1, "v":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v1, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1875
    .end local v1    # "v":I
    :cond_0
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1870
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3200(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3200(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1871
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mPageScroller:Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1872
    .restart local v1    # "v":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1879
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1880
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToY:I

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1881
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1891
    :cond_0
    :goto_0
    return v1

    .line 1884
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1885
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromScale:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mFromScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1886
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1887
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    .line 1888
    .local v0, "f":F
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    move v1, v2

    .line 1889
    goto :goto_0

    .line 1891
    .end local v0    # "f":F
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mToScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clampScale(F)F
    .locals 3
    .param p1, "s"    # F

    .prologue
    .line 1847
    const v0, 0x3f333333    # 0.7f

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    mul-float/2addr v0, v1

    const v1, 0x3fb33333    # 1.4f

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method protected interpolate(F)Z
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1852
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1853
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->interpolateFlingPage(F)Z

    move-result v0

    .line 1855
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1782
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return v5

    .line 1783
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1784
    :cond_2
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mListener:Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$700(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;->isHoldingDelete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1785
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$800(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq p0, v6, :cond_0

    .line 1787
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1790
    .local v4, "y":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoxes:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$900(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p0, v6, :cond_b

    .line 1791
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v7, 0x3f333333    # 0.7f

    mul-float v3, v6, v7

    .line 1792
    .local v3, "scaleMin":F
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v7, 0x3fb33333    # 1.4f

    mul-float v2, v6, v7

    .line 1794
    .local v2, "scaleMax":F
    :goto_2
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mZoomInScaleMin:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    .line 1795
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mZoomInScaleMin:F

    .line 1802
    .local v0, "scale":F
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1803
    const/4 v4, 0x0

    .line 1820
    .end local v2    # "scaleMax":F
    .end local v3    # "scaleMin":F
    :goto_4
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v6, v4, :cond_5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_0

    .line 1821
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v4, v0, v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v5

    goto/16 :goto_0

    .line 1791
    .end local v0    # "scale":F
    :cond_6
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1792
    .restart local v3    # "scaleMin":F
    :cond_7
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1798
    .restart local v2    # "scaleMax":F
    :cond_8
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v6, v3, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    .restart local v0    # "scale":F
    goto :goto_3

    .line 1805
    :cond_9
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1200()I

    move-result v7

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v6, v0, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PositionController;FI)V

    .line 1809
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z
    invoke-static {v6, v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PositionController;F)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1810
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v1, v6, v0

    .line 1811
    .local v1, "scaleDiff":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mFocusY:F
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PositionController;)F

    move-result v6

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    .line 1813
    .end local v1    # "scaleDiff":F
    :cond_a
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3100(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->this$0:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->access$3200(Lcom/lenovo/scg/gallery3d/ui/PositionController;)I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    goto :goto_4

    .line 1816
    .end local v0    # "scale":F
    .end local v2    # "scaleMax":F
    .end local v3    # "scaleMin":F
    :cond_b
    const/4 v4, 0x0

    .line 1817
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .restart local v0    # "scale":F
    goto :goto_4
.end method
