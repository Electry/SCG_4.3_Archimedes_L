.class public Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private height:I

.field private mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 81
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 82
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 83
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 86
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 88
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 90
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 91
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 96
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    return-void

    .line 93
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 94
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getHeight()I

    move-result v0

    .line 107
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 108
    .local v4, "y":I
    const/4 v3, 0x0

    .line 109
    .local v3, "scale":F
    const/4 v2, 0x0

    .line 110
    .local v2, "progress":F
    if-le v4, v0, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getMax()I

    move-result v1

    .line 118
    .local v1, "max":I
    int-to-float v5, v1

    mul-float v2, v3, v5

    .line 119
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setProgress(I)V

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 121
    return-void

    .line 112
    .end local v1    # "max":I
    :cond_0
    if-lez v4, :cond_1

    .line 113
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v4

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float v3, v5, v6

    goto :goto_0

    .line 115
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 194
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 197
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v1

    .line 199
    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    :cond_0
    return v1

    .line 182
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 183
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 186
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 188
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 189
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 191
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "newEvent":Landroid/view/KeyEvent;
    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 192
    .restart local v0    # "newEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 101
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->height:I

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->width:I

    .line 126
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->width:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 69
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->invalidate()V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;->onProgressChanged(Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;IZ)V

    .line 76
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 137
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 138
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;)V

    .line 58
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 167
    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setPressed(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->onStartTrackingTouch()V

    .line 148
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 152
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->attemptClaimDrag()V

    goto :goto_1

    .line 157
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->onStopTrackingTouch()V

    .line 159
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setPressed(Z)V

    goto :goto_1

    .line 163
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->onStopTrackingTouch()V

    .line 164
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->setPressed(Z)V

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mOnSeekBarChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView$OnSeekBarChangeListener;

    .line 52
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/VerticalSeekBarView;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method
