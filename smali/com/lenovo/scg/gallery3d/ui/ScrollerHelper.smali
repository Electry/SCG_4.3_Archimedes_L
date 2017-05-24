.class public Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
.super Ljava/lang/Object;
.source "ScrollerHelper.java"


# instance fields
.field private mOverflingDistance:I

.field private mOverflingEnabled:Z

.field private mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 36
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    .line 37
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(III)V
    .locals 11
    .param p1, "velocity"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v1

    .line 78
    .local v1, "currX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    if-eqz v3, :cond_0

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    :goto_0
    move v3, p1

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->fling(IIIIIIIIII)V

    .line 83
    return-void

    :cond_0
    move v9, v2

    .line 78
    goto :goto_0
.end method

.method public forceFinished()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->forceFinished(Z)V

    .line 58
    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setOverfling(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    .line 41
    return-void
.end method

.method public setPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->startScroll(IIIII)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->abortAnimation()V

    .line 74
    return-void
.end method

.method public startScroll(III)I
    .locals 8
    .param p1, "distance"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->getCurrX()I

    move-result v1

    .line 88
    .local v1, "currPosition":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v1

    .line 89
    .local v6, "finalPosition":I
    :goto_0
    add-int v0, v6, p1

    invoke-static {v0, p2, p3}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    .line 90
    .local v7, "newPosition":I
    if-eq v7, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    sub-int v3, v7, v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->startScroll(IIIII)V

    .line 94
    :cond_0
    add-int v0, v6, p1

    sub-int/2addr v0, v7

    return v0

    .line 88
    .end local v6    # "finalPosition":I
    .end local v7    # "newPosition":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/lenovo/scg/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->getFinalX()I

    move-result v6

    goto :goto_0
.end method
