.class public Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;
.super Landroid/widget/SeekBar;
.source "SwitchEffectSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mLeftProgress:I

.field private mMaxProgress:I

.field private mRightProgress:I

.field private mScrollSpace:I

.field private mSpecialEffectViewsNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xb4

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mMaxProgress:I

    .line 38
    iput v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mLeftProgress:I

    .line 39
    iput v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mRightProgress:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mSpecialEffectViewsNumber:I

    .line 41
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mMaxProgress:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mLeftProgress:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mRightProgress:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mSpecialEffectViewsNumber:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    .line 42
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mLeftProgress:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->setProgress(I)V

    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mMaxProgress:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->setMax(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 48
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    rem-int v0, p2, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 49
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    rem-int v0, p2, v0

    sub-int/2addr p2, v0

    .line 53
    :goto_0
    iput p2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    .line 54
    return-void

    .line 51
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    rem-int v1, p2, v1

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 59
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    if-gt v0, v1, :cond_1

    .line 64
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    .line 68
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mMaxProgress:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 66
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mMaxProgress:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mScrollSpace:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SwitchEffectSeekBar;->mCurrentProgress:I

    goto :goto_0
.end method
