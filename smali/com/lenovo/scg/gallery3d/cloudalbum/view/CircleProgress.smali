.class public Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# instance fields
.field private final default_end_angle:I

.field private final default_progress_color:I

.field private final default_ring_color:I

.field private final default_start_angle:I

.field private final default_text_color:I

.field private final default_text_progress_color:I

.field private final default_text_progress_size:I

.field private final default_text_size:I

.field private final fail_ring_color:I

.field private final fail_text_color:I

.field private mContext:Landroid/content/Context;

.field private mMaxProgress:J

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:J

.field private mProgressColor:I

.field private mResource:Landroid/content/res/Resources;

.field private mRingColor:I

.field private mRingWidth:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextProgres:Ljava/lang/String;

.field private mTextProgresColor:I

.field private mTextProgresSize:I

.field private mTextSize:I

.field private final success_text_color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v5, 0x7f0d0005

    const/16 v4, 0x64

    const/16 v3, 0x28

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    .line 17
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mOval:Landroid/graphics/RectF;

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    .line 19
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingWidth:I

    .line 20
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingColor:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgress:J

    .line 22
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mMaxProgress:J

    .line 23
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgressColor:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgres:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresColor:I

    .line 26
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresSize:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mText:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextColor:I

    .line 29
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextSize:I

    .line 31
    const/16 v0, 0x78

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_start_angle:I

    .line 32
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_end_angle:I

    .line 33
    iput v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_ring_color:I

    .line 34
    const v0, 0x7f0d0006

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_progress_color:I

    .line 35
    const v0, 0x7f0d0007

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_text_progress_color:I

    .line 36
    iput v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_text_progress_size:I

    .line 37
    const v0, 0x7f0d0008

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_text_color:I

    .line 38
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->default_text_size:I

    .line 40
    const v0, 0x7f0d0009

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->fail_ring_color:I

    .line 41
    const v0, 0x7f0d000a

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->success_text_color:I

    .line 42
    const v0, 0x7f0d000b

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->fail_text_color:I

    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mOval:Landroid/graphics/RectF;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setRingWidth(I)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setRingColor(I)V

    .line 64
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setProgressColor(I)V

    .line 65
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextProgresColor(I)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextProgresSize(I)V

    .line 67
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextColor(I)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextSize(I)V

    .line 69
    return-void
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 222
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 223
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public getMax()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mMaxProgress:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 75
    .local v6, "center":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v7, v6, v0

    .line 77
    .local v7, "radius":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mOval:Landroid/graphics/RectF;

    sub-int v1, v6, v7

    int-to-float v1, v1

    sub-int v2, v6, v7

    int-to-float v2, v2

    add-int v3, v6, v7

    int-to-float v3, v3

    add-int v4, v6, v7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mOval:Landroid/graphics/RectF;

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mOval:Landroid/graphics/RectF;

    const/high16 v2, 0x42f00000    # 120.0f

    const-wide/16 v4, 0x12c

    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgress:J

    mul-long/2addr v4, v10

    const-wide/16 v10, 0x64

    div-long/2addr v4, v10

    long-to-float v3, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgress:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgres:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgres:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 93
    .local v8, "textWidth":F
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgres:Ljava/lang/String;

    int-to-float v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v8, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresSize:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mText:Ljava/lang/String;

    int-to-float v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v8, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v6, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextSize:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public setMax(J)V
    .locals 1
    .param p1, "max"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mMaxProgress:J

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->invalidate()V

    .line 120
    return-void
.end method

.method public setProgress(J)V
    .locals 5
    .param p1, "progress"    # J

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mMaxProgress:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 108
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mMaxProgress:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgress:J

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->invalidate()V

    .line 111
    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mProgressColor:I

    .line 178
    return-void
.end method

.method public setResultFail()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setRingColor(I)V

    .line 152
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->invalidate()V

    .line 154
    return-void
.end method

.method public setResultReset()V
    .locals 1

    .prologue
    .line 133
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setRingColor(I)V

    .line 134
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextColor(I)V

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->invalidate()V

    .line 136
    return-void
.end method

.method public setResultSuccess()V
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setRingColor(I)V

    .line 143
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setTextColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->invalidate()V

    .line 145
    return-void
.end method

.method public setRingColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingColor:I

    .line 210
    return-void
.end method

.method public setRingWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mRingWidth:I

    .line 218
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mText:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextColor:I

    .line 202
    return-void
.end method

.method public setTextProgresColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresColor:I

    .line 170
    return-void
.end method

.method public setTextProgresSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextProgresSize:I

    .line 162
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->mTextSize:I

    .line 194
    return-void
.end method
