.class Lcom/lenovo/scg/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoProgressBar"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 39
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mMaxProgress:F

    .line 41
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 43
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    .line 45
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgressOffset:F

    .line 47
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mListener:Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 82
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 90
    iput p1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mListener:Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mListener:Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 189
    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 194
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 195
    .local v1, "l":F
    iget v3, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 200
    .local v3, "r":F
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    .end local v1    # "l":F
    .end local v3    # "r":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    return-void

    .line 197
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 198
    .restart local v1    # "l":F
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3    # "r":F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 120
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    .line 121
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mHeight:F

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 178
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgressOffset:F

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->setDirection(I)V

    .line 180
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 181
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 106
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 111
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 116
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .param p1, "w"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 132
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 126
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mMaxProgress:F

    .line 127
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mListener:Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 86
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    .line 152
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 153
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 154
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 160
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 161
    int-to-float v0, p1

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 163
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    .line 164
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 166
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    .line 168
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 170
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 174
    :cond_3
    return-void

    .line 155
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .param p1, "rightIncreasing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 137
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    .line 138
    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgressOffset:F

    .line 139
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->setDirection(I)V

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoProgressBar;->invalidate()V

    .line 147
    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 142
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mRightMostProgress:F

    .line 143
    iget v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/lenovo/scg/camera/PanoProgressBar;->mProgressOffset:F

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
