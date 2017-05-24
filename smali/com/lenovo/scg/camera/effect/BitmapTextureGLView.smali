.class public Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
.super Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
.source "BitmapTextureGLView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private StringFormat(Ljava/lang/String;II)[Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "fontSize"    # I

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, "result":[Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 68
    .local v5, "tempR":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 69
    .local v3, "lines":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 70
    .local v2, "len":I
    const/4 v0, 0x0

    .line 71
    .local v0, "index0":I
    const/4 v1, 0x0

    .line 74
    .local v1, "index1":I
    :cond_0
    const/4 v6, 0x0

    .line 75
    .local v6, "widthes":I
    const/4 v7, 0x0

    .line 76
    .local v7, "wrap":Z
    move v0, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    const/4 v7, 0x1

    .line 87
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 88
    if-eqz v7, :cond_3

    .line 89
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    :goto_1
    if-lt v1, v2, :cond_0

    .line 97
    new-array v4, v3, [Ljava/lang/String;

    .line 98
    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 99
    return-object v4

    .line 82
    :cond_2
    add-int/2addr v6, p3

    .line 83
    if-gt v6, p2, :cond_1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getLinesMaxLength([Ljava/lang/String;)[I
    .locals 6
    .param p1, "lines"    # [Ljava/lang/String;

    .prologue
    .line 47
    const/4 v3, 0x0

    .local v3, "max":I
    const/4 v2, 0x0

    .line 48
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 49
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 50
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v3, v4

    .line 51
    move v2, v1

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 55
    .local v0, "count":[I
    const/4 v1, 0x0

    :goto_1
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 56
    aget-object v4, p1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 57
    const/4 v4, 0x1

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    .line 55
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    goto :goto_2

    .line 62
    :cond_3
    return-object v0
.end method


# virtual methods
.method public destoryEffect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 181
    :cond_1
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownX:I

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public setBitmap(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mWidth:F

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mHeight:F

    .line 37
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mWidth:F

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mHeight:F

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 44
    return-void
.end method

.method public setCenterPointInScreen(FF)V
    .locals 3
    .param p1, "centerx"    # F
    .param p2, "centery"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 152
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mCenterX:F

    .line 153
    iput p2, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mCenterY:F

    .line 154
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownX:I

    .line 155
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mHeight:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownY:I

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mHeight:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mLeftDownY:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    return-void
.end method

.method public setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontsize"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxWidth"    # I

    .prologue
    .line 104
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    int-to-double v8, p2

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int p2, v8

    .line 108
    :cond_0
    int-to-float v8, p2

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    invoke-static {p3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 110
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 113
    .local v4, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v3, v8, v9

    .line 116
    .local v3, "fontHeight":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-array v7, v8, [F

    .line 117
    .local v7, "widths":[F
    invoke-virtual {p3, p1, v7}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "countWidth":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v7

    if-ge v5, v8, :cond_1

    .line 120
    aget v8, v7, v5

    add-float/2addr v2, v8

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_1
    float-to-int v8, v2

    float-to-int v9, v3

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v8, p2

    int-to-float v9, p2

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v6, v8, v9

    .line 125
    .local v6, "textBaseY":F
    const/4 v8, 0x0

    int-to-float v9, p2

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-virtual {v1, p1, v8, v9, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method
