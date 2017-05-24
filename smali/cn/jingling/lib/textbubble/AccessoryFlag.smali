.class public Lcn/jingling/lib/textbubble/AccessoryFlag;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "AccessoryFlag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessoryFlag"


# instance fields
.field private mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

.field public mIsVisible:Z

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mWrappedBitmap:Landroid/graphics/Bitmap;

.field private mWrappedSquare:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "btnRot"    # Landroid/widget/ImageView;
    .param p2, "bmRot"    # Landroid/graphics/Bitmap;
    .param p3, "btnDel"    # Landroid/widget/ImageView;
    .param p4, "bmDel"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    .line 29
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 36
    new-instance v0, Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, p3, p4, v1, v2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    .line 37
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ImageControl;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 38
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ImageControl;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 39
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v1, v1, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v0, v0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "btnRot"    # Landroid/widget/ImageView;
    .param p2, "bmRot"    # Landroid/graphics/Bitmap;
    .param p3, "btnDel"    # Landroid/widget/ImageView;
    .param p4, "bmDel"    # Landroid/graphics/Bitmap;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p5, p6}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    .line 29
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getmRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 50
    new-instance v0, Lcn/jingling/lib/textbubble/ImageControl;

    invoke-direct {v0, p3, p4, p5, p6}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ImageControl;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 52
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ImageControl;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v1, v1, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v0, v0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 58
    return-void
.end method

.method private drawBtnDel(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 7
    .param p1, "ic"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    const/16 v6, 0x9

    .line 146
    new-array v3, v6, [F

    .line 147
    .local v3, "values":[F
    invoke-virtual {p1}, Lcn/jingling/lib/textbubble/ImageControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 148
    const-string v2, ""

    .line 149
    .local v2, "tags":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 152
    const-string v4, "AccessoryFlag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "matrix: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jingling/lib/textbubble/Pwog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    .local v1, "mat":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 155
    const/4 v4, 0x2

    aget v4, v3, v4

    float-to-int v4, v4

    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget v5, v5, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x5

    aget v5, v3, v5

    float-to-int v5, v5

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget v6, v6, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 156
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-virtual {v4, v1}, Lcn/jingling/lib/textbubble/ImageControl;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v4, v4, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 158
    iget-object v4, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v4, v4, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    return-void

    .line 150
    .end local v1    # "mat":Landroid/graphics/Matrix;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v3, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drawWrappedSquare(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 10
    .param p1, "ic"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 172
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    .line 173
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v5, Lcn/jingling/lib/textbubble/AccessoryFlag;->mLayoutWidth:I

    sget v6, Lcn/jingling/lib/textbubble/AccessoryFlag;->mLayoutHeight:I

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 174
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iget v5, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    iget v6, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    .line 177
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 176
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v0, "c":Landroid/graphics/Canvas;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->getWrappedSquarePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 181
    .local v1, "p":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 198
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    iget-object v6, p1, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 199
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 200
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    return-void

    .line 185
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    iget v5, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    iget v6, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    .line 186
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 185
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .restart local v0    # "c":Landroid/graphics/Canvas;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 189
    const/16 v5, 0x9

    new-array v4, v5, [F

    .line 190
    .local v4, "values":[F
    iget-object v5, p1, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 191
    aget v5, v4, v8

    aget v6, v4, v8

    mul-float/2addr v5, v6

    aget v6, v4, v9

    .line 192
    aget v7, v4, v9

    mul-float/2addr v6, v7

    .line 191
    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 193
    .local v3, "scale":F
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->getWrappedSquarePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 194
    .restart local v1    # "p":Landroid/graphics/Paint;
    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p1, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getWrappedSquarePaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0xff

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    const/16 v1, 0xd8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    return-object v0
.end method

.method private hideBtnDel()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    iget-object v0, v0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_0
    return-void
.end method

.method private hideWrappedSquare()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mWrappedSquare:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method private refreshVisibility()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    .line 134
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 136
    .local v0, "count":I
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 138
    .local v1, "index":I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 139
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hideWrappedSquare()V

    .line 142
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->hideBtnDel()V

    .line 143
    return-void
.end method

.method public initializeData()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    return v0
.end method

.method public isContainPointDel(Lcn/jingling/lib/textbubble/MyPoint;I)Z
    .locals 1
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "bound"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ImageControl;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mBtnDel:Lcn/jingling/lib/textbubble/ImageControl;

    invoke-virtual {v0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;->isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(I)V
    .locals 10
    .param p1, "viewId"    # I

    .prologue
    .line 88
    const-string v3, "AccessoryFlag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "show on "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcn/jingling/lib/textbubble/Pwog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iput p1, v3, Lcn/jingling/lib/textbubble/ScreenControl;->currentShow:I

    .line 90
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    .line 91
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/textbubble/ImageControl;

    .line 93
    .local v1, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-direct {p0, v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;->drawWrappedSquare(Lcn/jingling/lib/textbubble/ImageControl;)V

    .line 94
    invoke-direct {p0, v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;->drawBtnDel(Lcn/jingling/lib/textbubble/ImageControl;)V

    .line 96
    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ImageControl;->getImageRect()Lcn/jingling/lib/textbubble/MyRect;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/MyRect;->p3:Lcn/jingling/lib/textbubble/MyPoint;

    iget v3, v3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v4, v3

    .line 97
    .local v4, "x":D
    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ImageControl;->getImageRect()Lcn/jingling/lib/textbubble/MyRect;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/MyRect;->p3:Lcn/jingling/lib/textbubble/MyPoint;

    iget v3, v3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v6, v3

    .line 98
    .local v6, "y":D
    iget v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->bmpWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    sub-double/2addr v4, v8

    .line 99
    iget v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->bmpHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    sub-double/2addr v6, v8

    .line 101
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 102
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v8, v4

    double-to-float v9, v6

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 106
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 108
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 110
    .local v0, "count":I
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 112
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 113
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    .line 118
    :goto_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 119
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show(Lcn/jingling/lib/textbubble/ImageControl;)V
    .locals 3
    .param p1, "imageControl"    # Lcn/jingling/lib/textbubble/ImageControl;

    .prologue
    .line 122
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcn/jingling/lib/textbubble/ImageControl;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 127
    .local v1, "viewId":I
    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/AccessoryFlag;->show(I)V

    goto :goto_0
.end method

.method public toggleVisibility()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryFlag;->mIsVisible:Z

    .line 76
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/AccessoryFlag;->refreshVisibility()V

    .line 77
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
