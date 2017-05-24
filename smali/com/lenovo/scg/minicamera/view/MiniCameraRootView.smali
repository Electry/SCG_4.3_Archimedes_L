.class public Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;
.super Landroid/widget/RelativeLayout;
.source "MiniCameraRootView.java"


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

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    .line 25
    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    .line 27
    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    .line 29
    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    .line 31
    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    .line 38
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->setSystemUiVisibility(I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    .line 47
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    if-lez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_2

    .line 50
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    goto :goto_0

    .line 51
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    .line 52
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    sub-int v4, p4, v4

    iget v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    sub-int v5, p5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 62
    .local v2, "rotation":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 63
    .local v1, "orientation":I
    rem-int/lit16 v3, v2, 0xb4

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 64
    .local v0, "camOrientation":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 65
    add-int/lit8 v3, v2, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 68
    :cond_0
    iput v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    .line 69
    iput v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    .line 70
    iput v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    .line 71
    iput v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    .line 72
    sparse-switch v2, :sswitch_data_0

    .line 86
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_4

    .line 89
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    :goto_2
    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    .line 96
    :cond_1
    :goto_3
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    sub-int/2addr v4, v5

    invoke-super {p0, v3, v4}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->setMeasuredDimension(II)V

    .line 99
    return-void

    .line 63
    .end local v0    # "camOrientation":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    .restart local v0    # "camOrientation":I
    :sswitch_0
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    goto :goto_1

    .line 77
    :sswitch_1
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mRightMargin:I

    goto :goto_1

    .line 80
    :sswitch_2
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mTopMargin:I

    goto :goto_1

    .line 83
    :sswitch_3
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mLeftMargin:I

    goto :goto_1

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 92
    :cond_4
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    :goto_4
    iput v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mBottomMargin:I

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraRootView;->mCurrentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
