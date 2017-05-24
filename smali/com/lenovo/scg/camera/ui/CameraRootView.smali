.class public Lcom/lenovo/scg/camera/ui/CameraRootView;
.super Landroid/widget/RelativeLayout;
.source "CameraRootView.java"


# instance fields
.field private mBottomMargin:I

.field private mCurrentInsets:Landroid/graphics/Rect;

.field private mLeftMargin:I

.field private mOffset:I

.field private mRightMargin:I

.field private mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    .line 36
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    .line 38
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    .line 40
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    .line 42
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    .line 49
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraRootView;->setSystemUiVisibility(I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    .line 58
    iget v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    if-lez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_2

    .line 61
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    goto :goto_0

    .line 62
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    .line 63
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v3, v7, Landroid/content/res/Configuration;->orientation:I

    .line 116
    .local v3, "orientation":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraRootView;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 117
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/CameraRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 118
    .local v5, "v":Landroid/view/View;
    instance-of v7, v5, Lcom/lenovo/scg/camera/ui/CameraControls;

    if-eqz v7, :cond_1

    .line 121
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 122
    .local v6, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 123
    .local v0, "height":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    .line 124
    add-int v7, p2, p4

    sub-int/2addr v7, v6

    div-int/lit8 v2, v7, 0x2

    .line 125
    .local v2, "left":I
    iget v7, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    add-int/2addr v7, p3

    add-int v8, v2, v6

    iget v9, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    sub-int v9, p5, v9

    invoke-virtual {v5, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 116
    .end local v0    # "height":I
    .end local v2    # "left":I
    .end local v6    # "width":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .restart local v0    # "height":I
    .restart local v6    # "width":I
    :cond_0
    add-int v7, p3, p5

    sub-int/2addr v7, v0

    div-int/lit8 v4, v7, 0x2

    .line 128
    .local v4, "top":I
    iget v7, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    add-int/2addr v7, p2

    iget v8, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    sub-int v8, p4, v8

    add-int v9, v4, v0

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 131
    .end local v0    # "height":I
    .end local v4    # "top":I
    .end local v6    # "width":I
    :cond_1
    iget v7, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    add-int/2addr v7, p2

    iget v8, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    add-int/2addr v8, p3

    iget v9, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    sub-int v9, p4, v9

    iget v10, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    sub-int v10, p5, v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 134
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 73
    .local v2, "rotation":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 74
    .local v1, "orientation":I
    rem-int/lit16 v3, v2, 0xb4

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 75
    .local v0, "camOrientation":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 76
    add-int/lit8 v3, v2, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 79
    :cond_0
    iput v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    .line 80
    iput v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    .line 81
    iput v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    .line 82
    iput v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    .line 83
    sparse-switch v2, :sswitch_data_0

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_4

    .line 100
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    :goto_2
    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    .line 107
    :cond_1
    :goto_3
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    sub-int/2addr v4, v5

    invoke-super {p0, v3, v4}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/CameraRootView;->setMeasuredDimension(II)V

    .line 110
    return-void

    .line 74
    .end local v0    # "camOrientation":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 85
    .restart local v0    # "camOrientation":I
    :sswitch_0
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    goto :goto_1

    .line 88
    :sswitch_1
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mRightMargin:I

    goto :goto_1

    .line 91
    :sswitch_2
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mTopMargin:I

    goto :goto_1

    .line 94
    :sswitch_3
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mLeftMargin:I

    goto :goto_1

    .line 100
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 103
    :cond_4
    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    :goto_4
    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mBottomMargin:I

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
