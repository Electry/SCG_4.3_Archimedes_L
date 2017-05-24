.class public Lcom/lenovo/scg/camera/ui/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_SPEED:I = 0xc8

.field protected static final NO_ANIMATION:J = -0x1L

.field public static final STYLE_HORIZONTAL:I = 0x0

.field public static final STYLE_TILT:I = 0x2d

.field public static final STYLE_VERTICAL:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "Switcher"


# instance fields
.field private mAnimationStartPosition:I

.field protected mAnimationStartTime:J

.field private mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mStyle:I

.field public mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    .line 54
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    .line 55
    iput v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    .line 62
    return-void
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    return-void
.end method

.method public getSwitch()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    return v0
.end method

.method public getSwitchStyle()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 186
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 187
    .local v8, "drawableHeight":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 189
    .local v9, "drawableWidth":I
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v4, 0x0

    .line 194
    .local v4, "available":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v4, v17, v9

    .line 207
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v17, v18, v20

    if-eqz v17, :cond_d

    .line 208
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 209
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 210
    .local v5, "deltaTime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .end local v5    # "deltaTime":I
    :goto_2
    mul-int/lit16 v0, v5, 0xc8

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v17, v0

    if-gez v17, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 213
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v4, :cond_4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 214
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .end local v4    # "available":I
    :goto_3
    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    const/4 v6, 0x1

    .line 215
    .local v6, "done":Z
    :goto_4
    if-nez v6, :cond_c

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->invalidate()V

    .line 223
    .end local v6    # "done":Z
    .end local v14    # "time":J
    :cond_5
    :goto_5
    const/4 v12, 0x0

    .line 224
    .local v12, "offsetTop":I
    const/4 v11, 0x0

    .line 225
    .local v11, "offsetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getHeight()I

    move-result v17

    sub-int v17, v17, v8

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x2

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v18, v0

    add-int v11, v17, v18

    .line 238
    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v13

    .line 239
    .local v13, "saveCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 240
    int-to-float v0, v11

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 197
    .end local v11    # "offsetLeft":I
    .end local v12    # "offsetTop":I
    .end local v13    # "saveCount":I
    .restart local v4    # "available":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    const/16 v18, 0x5a

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v4, v17, v8

    goto/16 :goto_1

    .line 200
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .line 202
    .local v16, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingBottom()I

    move-result v18

    sub-int v10, v17, v18

    .line 204
    .local v10, "h":I
    mul-int v17, v16, v16

    mul-int v18, v10, v10

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    mul-int v17, v9, v9

    mul-int v20, v8, v8

    add-int v17, v17, v20

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v4, v0

    goto/16 :goto_1

    .line 210
    .end local v10    # "h":I
    .end local v16    # "w":I
    .restart local v5    # "deltaTime":I
    .restart local v14    # "time":J
    :cond_9
    neg-int v5, v5

    goto/16 :goto_2

    .line 214
    .end local v5    # "deltaTime":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .end local v4    # "available":I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 218
    .restart local v6    # "done":Z
    :cond_c
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    goto/16 :goto_5

    .line 220
    .end local v6    # "done":Z
    .end local v14    # "time":J
    .restart local v4    # "available":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->isPressed()Z

    move-result v17

    if-nez v17, :cond_5

    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .end local v4    # "available":I
    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    goto/16 :goto_5

    .restart local v4    # "available":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_7

    .line 229
    .end local v4    # "available":I
    .restart local v11    # "offsetLeft":I
    .restart local v12    # "offsetTop":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    const/16 v18, 0x5a

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v18, v0

    add-int v12, v17, v18

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v17

    sub-int v17, v17, v9

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x2

    goto/16 :goto_6

    .line 233
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    move/from16 v17, v0

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v12, v0

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v17

    sub-int v17, v17, v9

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v11, v17, v12

    goto/16 :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/ui/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return v3

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)I

    move-result v0

    .line 116
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 137
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Switcher;->trySwitching(Z)V

    move v3, v2

    .line 138
    goto :goto_0

    .line 118
    :pswitch_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    .line 119
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/Switcher;->setPressed(Z)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)I

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)I

    goto :goto_1

    .line 128
    :pswitch_2
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Switcher;->tryToSetSwitch(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Switcher;->setPressed(Z)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 128
    goto :goto_2

    .line 133
    :pswitch_3
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/Switcher;->tryToSetSwitch(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/Switcher;->setPressed(Z)V

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSwitchListener(Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    .line 110
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->invalidate()V

    goto :goto_0
.end method

.method public setSwitchStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->invalidate()V

    .line 67
    return-void
.end method

.method protected startParkingAnimation()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartTime:J

    .line 143
    iget v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mAnimationStartPosition:I

    .line 144
    return-void
.end method

.method protected trackTouchEvent(Landroid/view/MotionEvent;)I
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 148
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 149
    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 150
    .local v4, "drawableHeight":I
    const/4 v2, 0x0

    .line 151
    .local v2, "available":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    if-nez v13, :cond_3

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v10

    .line 153
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int v13, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v2, v13, v5

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 156
    .local v11, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 175
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    if-gez v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    if-le v13, v2, :cond_2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    .line 177
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->invalidate()V

    .line 178
    return v2

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_4

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getHeight()I

    move-result v8

    .line 159
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v13

    sub-int v13, v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v2, v13, v4

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 162
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v13

    sub-int v13, v12, v13

    div-int/lit8 v14, v4, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    goto :goto_0

    .line 163
    .end local v8    # "height":I
    .end local v12    # "y":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mStyle:I

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingRight()I

    move-result v14

    sub-int v9, v13, v14

    .line 165
    .local v9, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/Switcher;->getPaddingBottom()I

    move-result v14

    sub-int v7, v13, v14

    .line 166
    .local v7, "h":I
    mul-int v13, v5, v5

    mul-int v14, v4, v4

    add-int/2addr v13, v14

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 168
    .local v6, "dw":I
    mul-int v13, v9, v9

    mul-int v14, v7, v7

    add-int/2addr v13, v14

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    int-to-double v0, v6

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v11, v13

    .line 170
    .restart local v11    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v12, v13

    .line 171
    .restart local v12    # "y":I
    sub-int v11, v9, v11

    .line 172
    mul-int v13, v11, v11

    mul-int v14, v12, v12

    add-int/2addr v13, v14

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-int/lit8 v13, v6, 0x2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/scg/camera/ui/Switcher;->mPosition:I

    goto/16 :goto_0
.end method

.method protected trySwitching(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;->onTrySwitching(Lcom/lenovo/scg/camera/ui/Switcher;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :cond_0
    return-void
.end method

.method protected tryToSetSwitch(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->startParkingAnimation()V

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mListener:Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/lenovo/scg/camera/ui/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/lenovo/scg/camera/ui/Switcher;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->startParkingAnimation()V

    goto :goto_0

    .line 94
    :cond_1
    :try_start_2
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/Switcher;->mSwitch:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->startParkingAnimation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/Switcher;->startParkingAnimation()V

    throw v0
.end method
