.class public Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;
.super Landroid/widget/CompoundButton;
.source "CloudSwitchView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinHeight:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const v0, 0x7f01008f

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 82
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    .line 120
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 126
    sget-object v4, Lcom/lenovo/scg/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->checkTrackOffOnDrawable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOn:Ljava/lang/CharSequence;

    .line 140
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOff:Ljava/lang/CharSequence;

    .line 141
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbTextPadding:I

    .line 142
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinWidth:I

    .line 144
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinHeight:I

    .line 146
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchPadding:I

    .line 148
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 149
    .local v1, "appearance":I
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 155
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    .line 156
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mMinFlingVelocity:I

    .line 159
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->refreshDrawableState()V

    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setChecked(Z)V

    .line 161
    return-void

    .line 135
    .end local v1    # "appearance":I
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setChecked(Z)V

    .line 668
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 630
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 631
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 632
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 633
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 634
    return-void
.end method

.method private checkTrackOffOnDrawable()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    .line 785
    :goto_0
    return v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 785
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 550
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 551
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchTop:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 552
    .local v3, "thumbTop":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchLeft:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 553
    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    add-int v2, v4, v5

    .line 555
    .local v2, "thumbRight":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchBottom:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    add-int v0, v4, v5

    .line 556
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    const-string p1, ""

    .line 541
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 216
    return-void

    .line 203
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 204
    goto :goto_0

    .line 207
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 208
    goto :goto_0

    .line 211
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 642
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 646
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 648
    if-eqz v0, :cond_3

    .line 650
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 651
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 652
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 653
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 657
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->animateThumbToCheckedState(Z)V

    .line 661
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 644
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 653
    goto :goto_1

    .line 655
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 659
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 799
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 801
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getDrawableState()[I

    move-result-object v0

    .line 805
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->invalidate()V

    .line 809
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 773
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 774
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 777
    :cond_0
    return v0
.end method

.method public getSwitchMinHeight()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinHeight:I

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOnDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 790
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 791
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mergeDrawableStates([I[I)[I

    .line 794
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 722
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 724
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchLeft:I

    .line 725
    .local v6, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchTop:I

    .line 726
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchRight:I

    .line 727
    .local v7, "switchRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchBottom:I

    .line 729
    .local v1, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->checkTrackOffOnDrawable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->refreshDrawableState()V

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 741
    .local v3, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 742
    .local v5, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 743
    .local v4, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 744
    .local v2, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 747
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 748
    .local v11, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 749
    .local v10, "thumbLeft":I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 751
    .local v12, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_1

    .line 756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOnLayout:Landroid/text/Layout;

    .line 763
    .local v8, "switchText":Landroid/text/Layout;
    :goto_1
    if-eqz v8, :cond_2

    .line 764
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 766
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 768
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 769
    return-void

    .line 730
    .end local v2    # "switchInnerBottom":I
    .end local v3    # "switchInnerLeft":I
    .end local v4    # "switchInnerRight":I
    .end local v5    # "switchInnerTop":I
    .end local v8    # "switchText":Landroid/text/Layout;
    .end local v10    # "thumbLeft":I
    .end local v11    # "thumbPos":I
    .end local v12    # "thumbRight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 761
    .restart local v2    # "switchInnerBottom":I
    .restart local v3    # "switchInnerLeft":I
    .restart local v4    # "switchInnerRight":I
    .restart local v5    # "switchInnerTop":I
    .restart local v10    # "thumbLeft":I
    .restart local v11    # "thumbPos":I
    .restart local v12    # "thumbRight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOffLayout:Landroid/text/Layout;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 687
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 689
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    .line 691
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 692
    .local v2, "switchRight":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 693
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 694
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 695
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 698
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getPaddingTop()I

    move-result v3

    .line 699
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 714
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchLeft:I

    .line 715
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchTop:I

    .line 716
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchBottom:I

    .line 717
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchRight:I

    .line 718
    return-void

    .line 689
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 703
    .restart local v0    # "switchBottom":I
    .restart local v1    # "switchLeft":I
    .restart local v2    # "switchRight":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 705
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 706
    goto :goto_1

    .line 709
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 710
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 695
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOnLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 480
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOnLayout:Landroid/text/Layout;

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOffLayout:Landroid/text/Layout;

    if-nez v4, :cond_1

    .line 483
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOffLayout:Landroid/text/Layout;

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 486
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 487
    .local v0, "maxTextWidth":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinWidth:I

    mul-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbTextPadding:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 492
    .local v3, "switchWidth":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinHeight:I

    if-gtz v4, :cond_3

    .line 493
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 498
    .local v2, "switchHeight":I
    :goto_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbWidth:I

    .line 500
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchWidth:I

    .line 501
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchHeight:I

    .line 503
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 504
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getMeasuredHeight()I

    move-result v1

    .line 505
    .local v1, "measuredHeight":I
    if-ge v1, v2, :cond_2

    .line 506
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getMeasuredWidthAndState()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setMeasuredDimension(II)V

    .line 512
    :cond_2
    :goto_1
    return-void

    .line 495
    .end local v1    # "measuredHeight":I
    .end local v2    # "switchHeight":I
    :cond_3
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinHeight:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "switchHeight":I
    goto :goto_0

    .line 509
    .restart local v1    # "measuredHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 562
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 564
    .local v0, "action":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 567
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 626
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_2
    :goto_1
    return v5

    .line 569
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 570
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 571
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 572
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    .line 573
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchX:F

    .line 574
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchY:F

    goto :goto_0

    .line 580
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 586
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 587
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 588
    .restart local v4    # "y":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 590
    :cond_3
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    .line 591
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 592
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchX:F

    .line 593
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchY:F

    goto :goto_1

    .line 600
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 601
    .restart local v3    # "x":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchX:F

    sub-float v1, v3, v6

    .line 602
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 603
    .local v2, "newPos":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2

    .line 604
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    .line 605
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchX:F

    .line 606
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->invalidate()V

    goto :goto_1

    .line 616
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    if-ne v6, v8, :cond_4

    .line 617
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 620
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTouchMode:I

    .line 621
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOnLayout:Landroid/text/Layout;

    .line 532
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    return-void

    .line 531
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->checkTrackOffOnDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 678
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->refreshDrawableState()V

    .line 680
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 681
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbPosition:F

    .line 682
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->invalidate()V

    .line 683
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 681
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSwitchMinHeight(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinHeight:I

    .line 282
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 283
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchMinWidth:I

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 338
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mSwitchPadding:I

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 314
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 168
    sget-object v5, Lcom/lenovo/scg/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 174
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextColors:Landroid/content/res/ColorStateList;

    .line 181
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 182
    .local v3, "ts":I
    if-eqz v3, :cond_0

    .line 183
    int-to-float v5, v3

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 191
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 192
    .local v4, "typefaceIndex":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 194
    .local v2, "styleIndex":I
    invoke-direct {p0, v4, v2}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setSwitchTypefaceByIndex(II)V

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    return-void

    .line 178
    .end local v2    # "styleIndex":I
    .end local v3    # "ts":I
    .end local v4    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 300
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->invalidate()V

    .line 302
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 229
    if-lez p2, :cond_4

    .line 230
    if-nez p1, :cond_1

    .line 231
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 236
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 238
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 239
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 240
    .local v0, "need":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 241
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 247
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 233
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 238
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 241
    goto :goto_2

    .line 243
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 244
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOff:Ljava/lang/CharSequence;

    .line 473
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 474
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTextOn:Ljava/lang/CharSequence;

    .line 458
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 459
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 419
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 420
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbTextPadding:I

    .line 361
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 362
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 385
    return-void
.end method

.method public setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "trackOffDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 270
    return-void
.end method

.method public setTrackOffResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method public setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "trackOnDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->requestLayout()V

    .line 257
    return-void
.end method

.method public setTrackOnResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 813
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/CloudSwitchView;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
