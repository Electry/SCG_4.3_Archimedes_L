.class public Lcom/lenovo/scg/camera/ui/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

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

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTextMaxWidth:I

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

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/ui/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const v0, 0x7f010026

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/ui/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 148
    new-instance v3, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 149
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 151
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 152
    const v3, 0x7f02095a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    const v3, 0x7f020960

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    const v3, 0x7f0f0580

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 155
    const v3, 0x7f0f0581

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 156
    const v3, 0x7f090091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbTextPadding:I

    .line 157
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchMinWidth:I

    .line 158
    const v3, 0x7f090090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTextMaxWidth:I

    .line 159
    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchPadding:I

    .line 160
    const v3, 0x1030101

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/scg/camera/ui/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 162
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 163
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mMinFlingVelocity:I

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->refreshDrawableState()V

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Switch;->setChecked(Z)V

    .line 169
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/Switch;->setChecked(Z)V

    .line 345
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 310
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 311
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 313
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getThumbScrollRange()I

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
    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 459
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 235
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 236
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTop:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 237
    .local v3, "thumbTop":I
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchLeft:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 238
    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 239
    .local v2, "thumbRight":I
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchBottom:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 240
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

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "maxWidth"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 226
    .local v5, "actual_width":I
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 228
    .local v0, "l":Landroid/text/StaticLayout;
    return-object v0
.end method

.method private setThumbPosition(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 352
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    .line 353
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 322
    iput v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 326
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 328
    if-eqz v0, :cond_3

    .line 330
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 331
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 332
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 333
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 337
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    .line 341
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 324
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 333
    goto :goto_1

    .line 335
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 339
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 476
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getDrawableState()[I

    move-result-object v0

    .line 480
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->invalidate()V

    .line 484
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 447
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 448
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 451
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 494
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 497
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 464
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 466
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    sget-object v1, Lcom/lenovo/scg/camera/ui/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/Switch;->mergeDrawableStates([I[I)[I

    .line 469
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 402
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 405
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchLeft:I

    .line 406
    .local v6, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTop:I

    .line 407
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchRight:I

    .line 408
    .local v7, "switchRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchBottom:I

    .line 410
    .local v1, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 417
    .local v3, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 418
    .local v5, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 419
    .local v4, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 420
    .local v2, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 423
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 424
    .local v11, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 425
    .local v10, "thumbLeft":I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 427
    .local v12, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 434
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switch;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 438
    .local v8, "switchText":Landroid/text/Layout;
    :goto_0
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getEllipsizedWidth()I

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

    .line 440
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 443
    return-void

    .line 436
    .end local v8    # "switchText":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 502
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 503
    const-class v0, Lcom/lenovo/scg/camera/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 510
    const-class v3, Lcom/lenovo/scg/camera/ui/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 512
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 511
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 517
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

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
    .line 364
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 366
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/ui/Switch;->setThumbPosition(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 372
    .local v2, "switchRight":I
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 374
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 375
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 376
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 379
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getPaddingTop()I

    move-result v3

    .line 380
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 394
    :goto_0
    iput v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchLeft:I

    .line 395
    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTop:I

    .line 396
    iput v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchBottom:I

    .line 397
    iput v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchRight:I

    .line 398
    return-void

    .line 384
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 385
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 386
    goto :goto_0

    .line 389
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 390
    iget v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 188
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 189
    .local v6, "widthSize":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v7, :cond_0

    .line 190
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 192
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v7, :cond_1

    .line 193
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 196
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 197
    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchTextMaxWidth:I

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    .local v0, "maxTextWidth":I
    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v8, v0, 0x2

    iget v9, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 199
    .local v4, "switchWidth":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 201
    .local v3, "switchHeight":I
    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iput v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbWidth:I

    .line 203
    iput v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchWidth:I

    .line 204
    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mSwitchHeight:I

    .line 206
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 207
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getMeasuredHeight()I

    move-result v1

    .line 208
    .local v1, "measuredHeight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getMeasuredWidth()I

    move-result v2

    .line 209
    .local v2, "measuredWidth":I
    if-ge v1, v3, :cond_2

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/Switch;->setMeasuredDimension(II)V

    .line 212
    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void

    .line 218
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 245
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 247
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 249
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 250
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 251
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/ui/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    iput v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    .line 253
    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchX:F

    .line 254
    iput v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchY:F

    goto :goto_0

    .line 260
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 266
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 267
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 268
    .restart local v4    # "y":F
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 269
    :cond_2
    iput v8, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    .line 270
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 271
    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchX:F

    .line 272
    iput v4, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchY:F

    goto :goto_1

    .line 279
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 280
    .restart local v3    # "x":F
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 281
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 282
    .local v2, "newPos":F
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 283
    iput v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbPosition:F

    .line 284
    iput v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchX:F

    .line 285
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->invalidate()V

    goto :goto_1

    .line 295
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 296
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 299
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTouchMode:I

    .line 300
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 358
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Switch;->setThumbPosition(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->invalidate()V

    .line 360
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 178
    const v2, 0x7f090092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 179
    .local v1, "ts":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switch;->requestLayout()V

    .line 183
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
