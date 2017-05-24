.class public Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;
.super Lcom/lenovo/scg/gallery3d/app/TimeBar;
.source "TrimTimeBar.java"


# static fields
.field public static final SCRUBBER_CURRENT:I = 0x2

.field public static final SCRUBBER_END:I = 0x3

.field public static final SCRUBBER_NONE:I = 0x0

.field public static final SCRUBBER_START:I = 0x1


# instance fields
.field private mPressedThumb:I

.field private final mTrimEndScrubber:Landroid/graphics/Bitmap;

.field private mTrimEndScrubberLeft:I

.field private mTrimEndScrubberTop:I

.field private mTrimEndTime:I

.field private final mTrimStartScrubber:Landroid/graphics/Bitmap;

.field private mTrimStartScrubberLeft:I

.field private mTrimStartScrubberTop:I

.field private mTrimStartTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;)V

    .line 42
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 66
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 67
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 68
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 69
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 70
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 71
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020968

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020969

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    .line 77
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberPadding:I

    .line 78
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mVPaddingInPx:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mVPaddingInPx:I

    .line 79
    return-void
.end method

.method private clampScrubber(IIII)I
    .locals 3
    .param p1, "scrubberLeft"    # I
    .param p2, "offset"    # I
    .param p3, "lowerBound"    # I
    .param p4, "upperBound"    # I

    .prologue
    .line 159
    sub-int v0, p4, p2

    .line 160
    .local v0, "max":I
    sub-int v1, p3, p2

    .line 161
    .local v1, "min":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getBarPosFromTime(I)I
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v2, v1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getScrubberTime(II)I
    .locals 4
    .param p1, "scrubberLeft"    # I
    .param p2, "offset"    # I

    .prologue
    .line 165
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FFIILandroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "scrubber"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v1, p3, v2

    .line 154
    .local v1, "scrubberRight":I
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v0, p4, v2

    .line 155
    .local v0, "scrubberBottom":I
    int-to-float v2, p3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v2, p4

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    int-to-float v2, v0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initTrimTimeIfNeeded()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 121
    :cond_0
    return-void
.end method

.method private trimEndScrubberTipOffset()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private trimStartScrubberTipOffset()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private update()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->initTrimTimeIfNeeded()V

    .line 125
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 126
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->invalidate()V

    .line 127
    return-void
.end method

.method private updatePlayedBarAndScrubberFromTime()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 102
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 105
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    goto :goto_0
.end method

.method private updateTimeFromPos()V
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    .line 212
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 213
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 214
    return-void
.end method

.method private whichScrubber(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 142
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 144
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 170
    sub-int v4, p4, p2

    .line 171
    .local v4, "w":I
    sub-int v0, p5, p3

    .line 172
    .local v0, "h":I
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-nez v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->update()V

    .line 187
    return-void

    .line 175
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 176
    .local v1, "margin":I
    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v1, v5

    .line 179
    :cond_1
    div-int/lit8 v2, v0, 0x4

    .line 180
    .local v2, "progressY":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    add-int/lit8 v3, v5, 0x1

    .line 181
    .local v3, "scrubberY":I
    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    .line 182
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 183
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 184
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    sub-int/2addr v7, v1

    add-int/lit8 v8, v2, 0x4

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 220
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 222
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    move v5, v6

    .line 310
    :goto_0
    return v5

    .line 224
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :pswitch_0
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->whichScrubber(FF)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 225
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_1

    .line 241
    :goto_1
    :pswitch_1
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-ne v7, v5, :cond_0

    .line 242
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_0

    .line 229
    :pswitch_2
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 230
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 233
    :pswitch_3
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 234
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 237
    :pswitch_4
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 238
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 247
    :pswitch_5
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 248
    const/4 v1, -0x1

    .line 249
    .local v1, "seekToTime":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    add-int v0, v6, v7

    .line 250
    .local v0, "lowerBound":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    add-int v2, v6, v7

    .line 251
    .local v2, "upperBound":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v6, :pswitch_data_2

    .line 274
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 275
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 276
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 277
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6, v1}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->invalidate()V

    goto :goto_0

    .line 253
    :pswitch_6
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 254
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 255
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 256
    goto :goto_2

    .line 258
    :pswitch_7
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 260
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    if-le v6, v7, :cond_2

    .line 261
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 263
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 264
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 265
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 266
    goto :goto_2

    .line 268
    :pswitch_8
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 269
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 270
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 271
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    goto/16 :goto_2

    .line 285
    .end local v0    # "lowerBound":I
    .end local v1    # "seekToTime":I
    .end local v2    # "upperBound":I
    :pswitch_9
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 286
    const/4 v1, 0x0

    .line 287
    .restart local v1    # "seekToTime":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_3

    .line 300
    :goto_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 301
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mListener:Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 303
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 304
    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    goto/16 :goto_0

    .line 289
    :pswitch_a
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 290
    goto :goto_3

    .line 292
    :pswitch_b
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 293
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 296
    :pswitch_c
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 297
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_9
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 251
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 287
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public setTime(IIII)V
    .locals 1
    .param p1, "currentTime"    # I
    .param p2, "totalTime"    # I
    .param p3, "trimStartTime"    # I
    .param p4, "trimEndTime"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-ne v0, p4, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    .line 135
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTotalTime:I

    .line 136
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 137
    iput p4, p0, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimTimeBar;->update()V

    goto :goto_0
.end method
