.class public Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/tiltshift/Rotatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field protected mChild:Landroid/view/View;

.field protected mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->setBackgroundResource(I)V

    .line 47
    sget-object v1, Lcom/lenovo/scg/R$styleable;->RotateLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->setOrientation(IZ)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 57
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

    .line 61
    sub-int v1, p4, p2

    .line 62
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 63
    .local v0, "height":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 66
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 70
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 63
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

    .prologue
    const/4 v4, 0x0

    .line 77
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 78
    .local v0, "h":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 92
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->setMeasuredDimension(II)V

    .line 94
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 113
    return-void

    .line 81
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 82
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 84
    goto :goto_0

    .line 87
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 88
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 100
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 104
    :sswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 108
    :sswitch_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 94
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
    .line 123
    rem-int/lit16 p1, p1, 0x168

    .line 124
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->mOrientation:I

    .line 126
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/RotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
