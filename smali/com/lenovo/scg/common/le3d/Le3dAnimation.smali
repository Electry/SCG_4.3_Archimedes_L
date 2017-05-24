.class public abstract Lcom/lenovo/scg/common/le3d/Le3dAnimation;
.super Ljava/lang/Object;
.source "Le3dAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_START:J = -0x1L

.field protected static final NO_ANIMATION:J = -0x2L


# instance fields
.field protected mDelay:J

.field protected mDuration:I

.field protected mID:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mStartTime:J

.field protected mStopListener:Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 58
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->setDuration(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 11
    .param p1, "currentTimeMillis"    # J

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, -0x2

    .line 98
    iget-wide v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    iget-wide v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iput-wide p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 100
    :cond_2
    iget-wide v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mDelay:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 101
    .local v0, "elapse":I
    int-to-float v4, v0

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->clamp(FFF)F

    move-result v2

    .line 102
    .local v2, "x":F
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    .local v1, "i":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .end local v2    # "x":F
    :cond_3
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->onCalculate(F)V

    .line 104
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mDuration:I

    if-lt v0, v4, :cond_4

    .line 105
    iput-wide v8, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 106
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStopListener:Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;

    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->onStop()V

    .line 108
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStopListener:Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;

    invoke-interface {v4}, Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;->onStop()V

    .line 111
    :cond_4
    iget-wide v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->onCancel()V

    .line 95
    return-void
.end method

.method public clamp(FFF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 115
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 117
    .end local p3    # "max":F
    :goto_0
    return p3

    .line 116
    .restart local p3    # "max":F
    :cond_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, p1

    .line 117
    goto :goto_0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mID:I

    return v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCalculate(F)V
.end method

.method protected abstract onCancel()V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mDelay:J

    .line 86
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mDuration:I

    .line 75
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mID:I

    .line 63
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 71
    return-void
.end method

.method public setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStopListener:Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;

    .line 122
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->mStartTime:J

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->onStart()V

    .line 82
    return-void
.end method
