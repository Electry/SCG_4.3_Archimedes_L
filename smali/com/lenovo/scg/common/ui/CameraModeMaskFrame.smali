.class public Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;
.super Landroid/view/View;
.source "CameraModeMaskFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mIsCanDraw:Z

.field private mListener:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartTime:J

.field private mStartY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mIsCanDraw:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenWidth:I

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    .line 44
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mDuration:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mIsCanDraw:Z

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    iget v4, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    if-gt v2, v3, :cond_3

    iget-wide v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    iget v4, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->invalidate()V

    goto/16 :goto_0

    .line 74
    .end local v0    # "currentTime":J
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartY:I

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mScreenHeight:I

    if-le v2, v3, :cond_0

    iget-wide v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mIsCanDraw:Z

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mListener:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mListener:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

    invoke-interface {v2}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;->onAnimEnd()V

    goto/16 :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mListener:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

    .line 98
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->setVisibility(I)V

    .line 89
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 90
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartTime:J

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->invalidate()V

    .line 94
    return-void
.end method

.method public startHideAnim()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->mStartTime:J

    .line 84
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->invalidate()V

    .line 85
    return-void
.end method
