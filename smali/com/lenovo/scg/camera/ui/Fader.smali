.class public Lcom/lenovo/scg/camera/ui/Fader;
.super Landroid/view/View;
.source "Fader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;
    }
.end annotation


# instance fields
.field private mKnob:Landroid/graphics/drawable/Drawable;

.field private mKnobHilight:Landroid/graphics/drawable/Drawable;

.field private mMax:F

.field private mMin:F

.field private mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

.field private mStep:F

.field private mStep_Exposure:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTrack:Landroid/graphics/drawable/Drawable;

.field private mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/ui/Fader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/ui/Fader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Fader;->initFader()V

    .line 62
    sget-object v1, Lcom/lenovo/scg/R$styleable;->Fader:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    .line 68
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setMin(F)V

    .line 69
    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMax:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setMax(F)V

    .line 70
    const/4 v1, 0x2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setStep(F)V

    .line 71
    const/4 v1, 0x3

    iget v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setValue(F)V

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method private getFontHeight(F)I
    .locals 4
    .param p1, "fontSize"    # F

    .prologue
    .line 269
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 270
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 272
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method private initFader()V
    .locals 4

    .prologue
    const/16 v3, 0xe9

    .line 252
    const/high16 v1, -0x3f600000    # -5.0f

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F

    .line 253
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMax:F

    .line 254
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    .line 257
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTextPaint:Landroid/text/TextPaint;

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 260
    const/4 v1, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 261
    .local v0, "size":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 264
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getWidth()I

    move-result v4

    .line 197
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingRight()I

    move-result v7

    sub-int v0, v6, v7

    .line 198
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 200
    .local v5, "x":F
    const/4 v3, 0x0

    .line 201
    .local v3, "value":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 209
    .local v2, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getMax()F

    move-result v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getMin()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getMin()F

    move-result v7

    add-float v1, v6, v7

    .line 210
    .local v1, "change":F
    add-float/2addr v3, v1

    .line 212
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Fader;->setValue(F)V

    .line 213
    return-void

    .line 203
    .end local v1    # "change":F
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 204
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "scale":F
    goto :goto_0

    .line 206
    .end local v2    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v5, v6

    int-to-float v7, v0

    div-float v2, v6, v7

    .restart local v2    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method public getKnob()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F

    return v0
.end method

.method public getStep()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F

    return v0
.end method

.method public getTrack()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    return v0
.end method

.method public getmStep_Exposure()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep_Exposure:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "dx":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 84
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMax:F

    iget v4, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    iget v4, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F

    sub-float/2addr v3, v4

    mul-float v0, v2, v3

    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "dw":I
    const/4 v0, 0x0

    .line 142
    .local v0, "dh":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 149
    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/ui/Fader;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/ui/Fader;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/Fader;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Fader;->mKnobHilight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    :cond_2
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;->onStartTrackingTouch(Lcom/lenovo/scg/camera/ui/Fader;)V

    .line 324
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 327
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    iget v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/Fader;->setValue(F)V

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;->onStopTrackingTouch(Lcom/lenovo/scg/camera/ui/Fader;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return v2

    .line 156
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Fader;->setPressed(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->onStartTrackingTouch()V

    .line 158
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Fader;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Fader;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 163
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/Fader;->attemptClaimDrag()V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/Fader;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->onStopTrackingTouch()V

    .line 169
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setPressed(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->invalidate()V

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->onStopTrackingTouch()V

    .line 178
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Fader;->setPressed(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->invalidate()V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onValueChanged(Lcom/lenovo/scg/camera/ui/Fader;F)V
    .locals 1
    .param p1, "fader"    # Lcom/lenovo/scg/camera/ui/Fader;
    .param p2, "value"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;->onValueChanged(Lcom/lenovo/scg/camera/ui/Fader;F)V

    .line 318
    :cond_0
    return-void
.end method

.method public setFader(FFFF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "value"    # F
    .param p4, "step"    # F

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/Fader;->setMin(F)V

    .line 246
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/ui/Fader;->setMax(F)V

    .line 247
    invoke-virtual {p0, p3}, Lcom/lenovo/scg/camera/ui/Fader;->setValue(F)V

    .line 248
    invoke-virtual {p0, p4}, Lcom/lenovo/scg/camera/ui/Fader;->setmStep_Exposure(F)V

    .line 249
    return-void
.end method

.method public declared-synchronized setMax(F)V
    .locals 1
    .param p1, "max"    # F

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMax:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMin(F)V
    .locals 1
    .param p1, "min"    # F

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mMin:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnFaderChangeListener(Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mOnFaderChangeListener:Lcom/lenovo/scg/camera/ui/Fader$OnFaderChangeListener;

    .line 312
    return-void
.end method

.method public declared-synchronized setStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mValue:F

    .line 220
    invoke-virtual {p0, p0, p1}, Lcom/lenovo/scg/camera/ui/Fader;->onValueChanged(Lcom/lenovo/scg/camera/ui/Fader;F)V

    .line 221
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Fader;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setmStep_Exposure(F)V
    .locals 1
    .param p1, "mStepExposure"    # F

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Fader;->mStep_Exposure:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
