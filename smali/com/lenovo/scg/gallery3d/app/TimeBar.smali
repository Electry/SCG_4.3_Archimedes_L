.class public Lcom/lenovo/scg/gallery3d/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final SCRUBBER_PADDING_IN_DP:I = 0xa

.field private static final TEXT_SIZE_IN_DP:I = 0xe

.field private static final V_PADDING_IN_DP:I = 0x1e


# instance fields
.field protected mCurrentTime:I

.field protected final mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

.field protected final mPlayedBar:Landroid/graphics/Rect;

.field protected final mPlayedPaint:Landroid/graphics/Paint;

.field protected final mProgressBar:Landroid/graphics/Rect;

.field protected final mProgressPaint:Landroid/graphics/Paint;

.field protected final mScrubber:Landroid/graphics/Bitmap;

.field protected mScrubberCorrection:I

.field protected mScrubberLeft:I

.field protected mScrubberPadding:I

.field protected mScrubberTop:I

.field protected mScrubbing:Z

.field protected mShowScrubber:Z

.field protected mShowTimes:Z

.field protected final mTimeBounds:Landroid/graphics/Rect;

.field protected final mTimeTextPaint:Landroid/graphics/Paint;

.field protected mTotalTime:I

.field protected mVPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    .line 97
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowTimes:Z

    .line 98
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowScrubber:Z

    .line 100
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    .line 103
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v1, v2, v3

    .line 110
    .local v1, "textSizeInPx":F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 116
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00:00"

    const/4 v4, 0x0

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208d6

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    .line 119
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    .line 121
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mVPaddingInPx:I

    .line 122
    return-void
.end method

.method private clampScrubber()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 172
    .local v0, "half":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 173
    .local v1, "max":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 174
    .local v2, "min":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 175
    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .prologue
    .line 178
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 164
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 165
    .local v1, "scrubberRight":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberTop:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 166
    .local v0, "scrubberBottom":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberTop:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 133
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubbing:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->invalidate()V

    .line 137
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public getBarHeight()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mVPaddingInPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mVPaddingInPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v0, :cond_1

    .line 210
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 183
    sub-int v3, p4, p2

    .line 184
    .local v3, "w":I
    sub-int v0, p5, p3

    .line 185
    .local v0, "h":I
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowTimes:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-nez v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->update()V

    .line 197
    return-void

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 189
    .local v1, "margin":I
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    .line 192
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 193
    .local v2, "progressY":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberTop:I

    .line 194
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 221
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 223
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 246
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    :goto_0
    return v2

    .line 225
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :pswitch_0
    int-to-float v2, v0

    int-to-float v4, v1

    invoke-direct {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->inScrubber(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    sub-int v2, v0, v2

    :goto_1
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberCorrection:I

    .line 226
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 227
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    .line 231
    :pswitch_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberCorrection:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 232
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->clampScrubber()V

    .line 233
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    invoke-interface {v2, v4}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 235
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->invalidate()V

    move v2, v3

    .line 236
    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v5

    invoke-interface {v4, v5, v2, v2}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 241
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mScrubbing:Z

    move v2, v3

    .line 242
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTime(IIII)V
    .locals 1
    .param p1, "currentTime"    # I
    .param p2, "totalTime"    # I
    .param p3, "trimStartTime"    # I
    .param p4, "trimEndTime"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    if-ne v0, p2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 159
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/TimeBar;->mTotalTime:I

    .line 160
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->update()V

    goto :goto_0
.end method

.method protected stringForTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 250
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 251
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 252
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 253
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 254
    .local v0, "hours":I
    if-lez v0, :cond_0

    .line 255
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
