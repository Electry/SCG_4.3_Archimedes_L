.class Lcom/lenovo/scg/gallery3d/ui/FlingScroller;
.super Ljava/lang/Object;
.source "FlingScroller.java"


# static fields
.field private static final DECELERATED_FACTOR:I = 0x4

.field private static final FLING_DURATION_PARAM:F = 50.0f

.field private static final TAG:Ljava/lang/String; = "FlingController"


# instance fields
.field private mCosAngle:D

.field private mCurrV:D

.field private mCurrX:I

.field private mCurrY:I

.field private mDistance:I

.field private mDuration:I

.field private mFinalX:I

.field private mFinalY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mSinAngle:D

.field private mStartX:I

.field private mStartY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getV(F)D
    .locals 6
    .param p1, "progress"    # F

    .prologue
    .line 143
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDistance:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getX(F)I
    .locals 10
    .param p1, "f"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 122
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartX:I

    int-to-double v2, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDistance:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 123
    .local v0, "r":I
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCosAngle:D

    cmpl-double v1, v2, v8

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxX:I

    if-gt v1, v2, :cond_1

    .line 124
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCosAngle:D

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinX:I

    if-lt v1, v2, :cond_0

    .line 126
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getY(F)I
    .locals 10
    .param p1, "f"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 132
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartY:I

    int-to-double v2, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDistance:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 133
    .local v0, "r":I
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mSinAngle:D

    cmpl-double v1, v2, v8

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxY:I

    if-gt v1, v2, :cond_1

    .line 134
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mSinAngle:D

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinY:I

    if-lt v1, v2, :cond_0

    .line 136
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset(F)V
    .locals 7
    .param p1, "progress"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 113
    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 114
    sub-float v0, v6, p1

    .line 115
    .local v0, "f":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v0, v6, v1

    .line 116
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getX(F)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrX:I

    .line 117
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getY(F)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrY:I

    .line 118
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getV(F)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrV:D

    .line 119
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartX:I

    .line 86
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mStartY:I

    .line 87
    iput p5, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinX:I

    .line 88
    move/from16 v0, p7

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMinY:I

    .line 89
    move/from16 v0, p6

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxX:I

    .line 90
    move/from16 v0, p8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mMaxY:I

    .line 92
    int-to-double v4, p3

    int-to-double v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 93
    .local v2, "velocity":D
    int-to-double v4, p4

    div-double/2addr v4, v2

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mSinAngle:D

    .line 94
    int-to-double v4, p3

    div-double/2addr v4, v2

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCosAngle:D

    .line 103
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDuration:I

    .line 106
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDuration:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDistance:I

    .line 108
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getX(F)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mFinalX:I

    .line 109
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->getY(F)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mFinalY:I

    .line 110
    return-void
.end method

.method public getCurrVelocityX()I
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrVelocityY()I
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mCurrY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mDuration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mFinalX:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/FlingScroller;->mFinalY:I

    return v0
.end method
