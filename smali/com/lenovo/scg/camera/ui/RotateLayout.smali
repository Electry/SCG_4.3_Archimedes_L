.class public Lcom/lenovo/scg/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field protected mChild:Landroid/view/View;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 57
    sget-object v1, Lcom/lenovo/scg/R$styleable;->RotateLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 116
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 120
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 121
    .local v0, "h":I
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 135
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 136
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 123
    :sswitch_0
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 126
    :sswitch_1
    int-to-float v2, v0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 129
    :sswitch_2
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 132
    :sswitch_3
    int-to-float v2, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 90
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 92
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 93
    .local v0, "h":I
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 108
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcom/lenovo/scg/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 110
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 95
    .restart local v0    # "h":I
    .restart local v1    # "w":I
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 101
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 104
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .param p1, "location"    # [I
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 66
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 74
    sub-int v1, p4, p2

    .line 75
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 76
    .local v0, "height":I
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 79
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 83
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 145
    .local v0, "h":I
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 159
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 161
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 162
    iget v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 182
    :cond_0
    return-void

    .line 148
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 149
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 151
    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 155
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 164
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 168
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 172
    :sswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 173
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 176
    :sswitch_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 162
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 192
    rem-int/lit16 p1, p1, 0x168

    .line 193
    iget v0, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/ui/RotateLayout;->mOrientation:I

    .line 195
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
