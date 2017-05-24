.class public Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
.super Lcom/lenovo/scg/camera/effect/ImageGLView;
.source "BitmapImageGLView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ImageGLView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private StringFormat(Ljava/lang/String;II)[Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "fontSize"    # I

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "result":[Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 48
    .local v5, "tempR":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 49
    .local v3, "lines":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 50
    .local v2, "len":I
    const/4 v0, 0x0

    .line 51
    .local v0, "index0":I
    const/4 v1, 0x0

    .line 54
    .local v1, "index1":I
    :cond_0
    const/4 v6, 0x0

    .line 55
    .local v6, "widthes":I
    const/4 v7, 0x0

    .line 56
    .local v7, "wrap":Z
    move v0, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    const/4 v7, 0x1

    .line 67
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    if-eqz v7, :cond_3

    .line 69
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    :goto_1
    if-lt v1, v2, :cond_0

    .line 77
    new-array v4, v3, [Ljava/lang/String;

    .line 78
    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 79
    return-object v4

    .line 62
    :cond_2
    add-int/2addr v6, p3

    .line 63
    if-gt v6, p2, :cond_1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 100
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 103
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method private getLinesMaxLength([Ljava/lang/String;)[I
    .locals 6
    .param p1, "lines"    # [Ljava/lang/String;

    .prologue
    .line 27
    const/4 v3, 0x0

    .local v3, "max":I
    const/4 v2, 0x0

    .line 28
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 29
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 30
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v3, v4

    .line 31
    move v2, v1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 35
    .local v0, "count":[I
    const/4 v1, 0x0

    :goto_1
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 36
    aget-object v4, p1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 37
    const/4 v4, 0x1

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    .line 35
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_2
    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    goto :goto_2

    .line 42
    :cond_3
    return-object v0
.end method


# virtual methods
.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setEnableClip(Z)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 127
    :cond_1
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipRect.left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, p1, v3, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public setBitmap(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 110
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 116
    return-void
.end method

.method public setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontsize"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxWidth"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p4, p2}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->StringFormat(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "text":[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->getLinesMaxLength([Ljava/lang/String;)[I

    move-result-object v2

    .line 86
    .local v2, "count":[I
    const/4 v5, 0x0

    aget v5, v2, v5

    int-to-float v6, p2

    const/high16 v7, 0x3fc00000    # 1.5f

    div-float/2addr v6, v7

    float-to-int v6, v6

    mul-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v2, v6

    mul-int/2addr v6, p2

    add-int/2addr v5, v6

    array-length v6, v4

    mul-int/2addr v6, p2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v5, p2

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 92
    aget-object v5, v4, v3

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    mul-int/2addr v7, p2

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method
