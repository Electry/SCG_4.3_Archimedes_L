.class public Lcn/jingling/lib/textbubble/TextBubbleControl;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "TextBubbleControl.java"


# static fields
.field protected static final DELETE_DIST_LIMIT:I = 0x50

.field protected static MAX_SCALE_LIMIT:F

.field protected static MIN_SCALE_LIMIT:F

.field private static defaultZoom:F


# instance fields
.field private mInitialGroudScale:F

.field private mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

.field private mTextHeight:F

.field private mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

.field private mTextWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->MAX_SCALE_LIMIT:F

    .line 18
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->MIN_SCALE_LIMIT:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IILcn/jingling/lib/textbubble/TextBubbleStyleParameter;)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "para"    # Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .prologue
    const/4 v6, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V

    .line 45
    iput-object p5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .line 46
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->calcTextSize()V

    .line 47
    new-instance v0, Lcn/jingling/lib/textbubble/TextBubble;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextWidth:F

    iget v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextHeight:F

    const-string/jumbo v5, "\u70b9\u51fb\u7f16\u8f91\u6587\u5b57"

    invoke-direct/range {v0 .. v5}, Lcn/jingling/lib/textbubble/TextBubble;-><init>(Landroid/content/Context;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;FFLjava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    .line 48
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    .line 49
    sget v3, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/TextBubble;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/TextBubble;->setInputType(I)V

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    invoke-virtual {v0, v6}, Lcn/jingling/lib/textbubble/TextBubble;->setFocusable(Z)V

    .line 52
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    invoke-virtual {v0, v6}, Lcn/jingling/lib/textbubble/TextBubble;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "para"    # Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 30
    iput-object p3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .line 31
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->calcTextSize()V

    .line 32
    new-instance v0, Lcn/jingling/lib/textbubble/TextBubble;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextWidth:F

    iget v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextHeight:F

    const-string/jumbo v5, "\u70b9\u51fb\u7f16\u8f91\u6587\u5b57"

    invoke-direct/range {v0 .. v5}, Lcn/jingling/lib/textbubble/TextBubble;-><init>(Landroid/content/Context;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;FFLjava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    .line 34
    sget v3, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/TextBubble;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 39
    return-void
.end method

.method private calcTextSize()V
    .locals 5

    .prologue
    .line 58
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mRightScale:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v4, v4, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mLeftScale:F

    sub-float/2addr v3, v4

    mul-float v1, v2, v3

    .line 59
    .local v1, "txtWidth":F
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mBottomScale:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v4, v4, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTopScale:F

    sub-float/2addr v3, v4

    mul-float v0, v2, v3

    .line 61
    .local v0, "txtHeight":F
    sget v2, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    int-to-float v2, v2

    iput v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextWidth:F

    .line 62
    iget v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextWidth:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    iput v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextHeight:F

    .line 64
    return-void
.end method


# virtual methods
.method public addMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 264
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 265
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 266
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 268
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 269
    return-void
.end method

.method public getTextBubble()Lcn/jingling/lib/textbubble/TextBubble;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    return-object v0
.end method

.method public getmTextPara()Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    return-object v0
.end method

.method public inValidateImageView()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->inValidateImageView()V

    .line 253
    return-void
.end method

.method public initializeData()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const v9, 0x3dcccccd    # 0.1f

    .line 101
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    .line 103
    .local v0, "b":Z
    if-nez v0, :cond_0

    move v6, v7

    .line 127
    :goto_0
    return v6

    .line 107
    :cond_0
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpWidth:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 108
    .local v1, "dx":F
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpHeight:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 110
    .local v2, "dy":F
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 113
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    int-to-float v6, v6

    const v8, 0x44548000    # 850.0f

    div-float/2addr v6, v8

    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->defaultZoom:F

    .line 115
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->defaultZoom:F

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/TextBubbleControl;->zoom(F)Landroid/graphics/Matrix;

    .line 117
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpHeight:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 118
    .local v4, "hScale":F
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpWidth:I

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 119
    .local v5, "wScale":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v6, v4

    :goto_1
    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->MAX_SCALE_LIMIT:F

    .line 120
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    mul-float v6, v4, v9

    :goto_2
    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->MIN_SCALE_LIMIT:F

    .line 121
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 122
    .local v3, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 123
    aget v6, v3, v7

    iput v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mInitialGroudScale:F

    .line 125
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 127
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "groudValues":[F
    :cond_1
    move v6, v5

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    mul-float v6, v5, v9

    goto :goto_2
.end method

.method public initializeData(Landroid/graphics/Point;)Z
    .locals 11
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x0

    const v10, 0x3dcccccd    # 0.1f

    .line 75
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    .line 77
    .local v0, "b":Z
    if-nez v0, :cond_0

    move v6, v7

    .line 97
    :goto_0
    return v6

    .line 81
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 82
    .local v1, "dx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 84
    .local v2, "dy":I
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 85
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 86
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    int-to-float v6, v6

    const v8, 0x44548000    # 850.0f

    div-float/2addr v6, v8

    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->defaultZoom:F

    .line 87
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->defaultZoom:F

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/TextBubbleControl;->zoom(F)Landroid/graphics/Matrix;

    .line 88
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpHeight:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 89
    .local v4, "hScale":F
    sget v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpWidth:I

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 90
    .local v5, "wScale":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v6, v4

    :goto_1
    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->MAX_SCALE_LIMIT:F

    .line 91
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    mul-float v6, v4, v10

    :goto_2
    sput v6, Lcn/jingling/lib/textbubble/TextBubbleControl;->MIN_SCALE_LIMIT:F

    .line 92
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 93
    .local v3, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 94
    aget v6, v3, v7

    iput v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mInitialGroudScale:F

    .line 96
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 97
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "groudValues":[F
    :cond_1
    move v6, v5

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    mul-float v6, v5, v10

    goto :goto_2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcn/jingling/lib/textbubble/ImageControl;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    return-void
.end method

.method public setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcn/jingling/lib/textbubble/ImageControl;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 259
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 261
    return-void
.end method

.method public translateImageView(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;->translateImageView(FF)V

    .line 246
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 247
    return-void
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 68
    invoke-super/range {p0 .. p6}, Lcn/jingling/lib/textbubble/ImageControl;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 69
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 70
    return-void
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;ZD)V
    .locals 28
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p7, "isDoAll"    # Z
    .param p8, "rotate"    # D

    .prologue
    .line 143
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    .local v13, "moveMatrix":Landroid/graphics/Matrix;
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    .local v22, "zoomMatrix":Landroid/graphics/Matrix;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .local v18, "rotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 149
    .local v11, "matrix":Landroid/graphics/Matrix;
    new-instance v12, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v12}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 151
    .local v12, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpHeight:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 152
    invoke-virtual {v12, v11}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v12

    .line 155
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 156
    .local v21, "values":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 158
    const/16 v24, 0x0

    aget v24, v21, v24

    const/16 v25, 0x0

    aget v25, v21, v25

    mul-float v24, v24, v25

    .line 159
    const/16 v25, 0x1

    aget v25, v21, v25

    const/16 v26, 0x1

    aget v26, v21, v26

    mul-float v25, v25, v26

    .line 158
    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v9, v0

    .line 160
    .local v9, "hasScale":F
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v8, v0, [F

    .line 161
    .local v8, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 162
    const/16 v24, 0x0

    aget v7, v8, v24

    .line 163
    .local v7, "curGroudScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mInitialGroudScale:F

    move/from16 v24, v0

    div-float v17, v7, v24

    .line 164
    .local v17, "rate":F
    const/4 v10, 0x0

    .line 165
    .local v10, "isRotete":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mFlagRotate:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_4

    if-eqz p4, :cond_4

    .line 167
    const/4 v10, 0x1

    .line 169
    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v15

    .line 170
    .local v15, "oldDist":F
    move-object/from16 v0, p6

    invoke-static {v12, v0}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v14

    .line 172
    .local v14, "newDist":F
    div-float v23, v14, v15

    .line 174
    .local v23, "zoomScale":F
    if-eqz p7, :cond_0

    .line 175
    move/from16 v23, p3

    .line 177
    :cond_0
    mul-float v19, v23, v9

    .line 179
    .local v19, "scale2":F
    sget v24, Lcn/jingling/lib/textbubble/TextBubbleControl;->MAX_SCALE_LIMIT:F

    mul-float v24, v24, v17

    cmpl-float v24, v19, v24

    if-lez v24, :cond_1

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v23, v24

    if-gtz v24, :cond_2

    .line 180
    :cond_1
    sget v24, Lcn/jingling/lib/textbubble/TextBubbleControl;->MIN_SCALE_LIMIT:F

    mul-float v24, v24, v17

    cmpg-float v24, v19, v24

    if-gez v24, :cond_3

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v24, v23, v24

    if-gez v24, :cond_3

    .line 181
    :cond_2
    const/high16 v23, 0x3f800000    # 1.0f

    .line 184
    :cond_3
    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v24, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v25, v0

    .line 183
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 186
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v0, v1, v12}, Lcn/jingling/lib/textbubble/MyPoint;->getSinCos(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v6

    .line 188
    .local v6, "angle":Lcn/jingling/lib/textbubble/MyPoint;
    if-eqz p7, :cond_a

    .line 189
    move-wide/from16 v0, p8

    double-to-float v0, v0

    move/from16 v24, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v25, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 196
    .end local v6    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v14    # "newDist":F
    .end local v15    # "oldDist":F
    .end local v19    # "scale2":F
    .end local v23    # "zoomScale":F
    :cond_4
    :goto_0
    if-eqz p7, :cond_5

    .line 197
    const/4 v10, 0x0

    .line 200
    :cond_5
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mFlagMove:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 216
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    new-instance v16, Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->bmpHeight:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 219
    .local v16, "point":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v16

    .line 220
    move-object/from16 v0, v16

    iget v0, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v24, v0

    .line 224
    .end local v16    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_6
    mul-float v20, p3, v9

    .line 226
    .local v20, "scale3":F
    sget v24, Lcn/jingling/lib/textbubble/TextBubbleControl;->MAX_SCALE_LIMIT:F

    mul-float v24, v24, v17

    cmpl-float v24, v20, v24

    if-lez v24, :cond_7

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, p3, v24

    if-gtz v24, :cond_8

    .line 227
    :cond_7
    sget v24, Lcn/jingling/lib/textbubble/TextBubbleControl;->MIN_SCALE_LIMIT:F

    mul-float v24, v24, v17

    cmpg-float v24, v20, v24

    if-gez v24, :cond_9

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v24, p3, v24

    if-gez v24, :cond_9

    .line 229
    :cond_8
    const/high16 p3, 0x3f800000    # 1.0f

    .line 231
    :cond_9
    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v24, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p3

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Lcn/jingling/lib/textbubble/TextBubbleControl;->changeImageViewHasRange(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/TextBubbleControl;->updateTextMatrix()V

    .line 236
    return-void

    .line 192
    .end local v20    # "scale3":F
    .restart local v6    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    .restart local v14    # "newDist":F
    .restart local v15    # "oldDist":F
    .restart local v19    # "scale2":F
    .restart local v23    # "zoomScale":F
    :cond_a
    iget v0, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v24, v0

    iget v0, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v25, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v26, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setSinCos(FFFF)V

    goto/16 :goto_0
.end method

.method public updateTextMatrix()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 285
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/Point;

    .line 287
    iget-object v5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v6, v6, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mLeftScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 288
    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v7, v7, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTopScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 286
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 289
    iget-object v5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 286
    invoke-static {v4, v5}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Point;Landroid/graphics/Matrix;)Landroid/graphics/Point;

    move-result-object v2

    .line 290
    .local v2, "txtLTPoint":Landroid/graphics/Point;
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 291
    .local v3, "values":[F
    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 292
    const/4 v4, 0x2

    aput v8, v3, v4

    .line 293
    const/4 v4, 0x5

    aput v8, v3, v4

    .line 294
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 297
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget v5, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 299
    .local v0, "dfScale":F
    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v4, v4, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mRightScale:F

    iget-object v5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v5, v5, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mLeftScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v5, v5, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mRightScale:F

    iget-object v6, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v6, v6, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mLeftScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 300
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 301
    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTextBubble:Lcn/jingling/lib/textbubble/TextBubble;

    invoke-virtual {v4, v1}, Lcn/jingling/lib/textbubble/TextBubble;->setmTextMatrix(Landroid/graphics/Matrix;)V

    .line 302
    return-void
.end method

.method public zoom(F)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 131
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    sget v2, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcn/jingling/lib/textbubble/TextBubbleControl;->mLayoutHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 132
    .local v0, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .local v1, "zoomMatrix":Landroid/graphics/Matrix;
    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 134
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 135
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubbleControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 137
    return-object v1
.end method
