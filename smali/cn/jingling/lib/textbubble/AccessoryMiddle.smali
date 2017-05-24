.class public Lcn/jingling/lib/textbubble/AccessoryMiddle;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "AccessoryMiddle.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 20
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 78
    .local v0, "count":I
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 81
    .local v1, "index":I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 82
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    return-void
.end method

.method public initializeData()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    return v0
.end method

.method public show(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 29
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/ImageControl;

    .line 31
    .local v0, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryMiddle;->show(Lcn/jingling/lib/textbubble/ImageControl;)V

    .line 32
    return-void
.end method

.method public show(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 9
    .param p1, "imageControl"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 35
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 39
    :cond_0
    iget v7, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v4, v7

    .line 40
    .local v4, "width":F
    iget v7, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v1, v7

    .line 42
    .local v1, "height":F
    new-instance v3, Lcn/jingling/lib/textbubble/MyPoint;

    div-float v7, v4, v8

    div-float v8, v1, v8

    invoke-direct {v3, v7, v8}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 44
    .local v3, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v7, p1, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v3

    .line 46
    iget v5, v3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 47
    .local v5, "x":F
    iget v6, v3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 49
    .local v6, "y":F
    iget v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->bmpWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v5, v7

    .line 50
    iget v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->bmpHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 52
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 53
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 55
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 57
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 58
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 60
    .local v0, "count":I
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 61
    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 63
    .local v2, "index":I
    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 64
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->bringToFront()V

    .line 70
    :goto_1
    iget-object v7, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 67
    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryMiddle;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method
