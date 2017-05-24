.class public Lcom/lenovo/scg/common/le3d/Le3dGridImage;
.super Lcom/lenovo/scg/common/le3d/Le3dImage;
.source "Le3dGridImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;,
        Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;
    }
.end annotation


# instance fields
.field private TEXT_SIZE:I

.field private mBgResId:I

.field private mFgResId:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 4
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 29
    const/16 v0, 0x23

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    .line 56
    const v0, 0x7f0904a1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    .line 57
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    .line 61
    :cond_0
    return-void
.end method

.method private StringFormat(Ljava/lang/String;III)[Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "fontSize"    # I
    .param p4, "fontMargin"    # I

    .prologue
    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "result":[Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 407
    .local v5, "tempR":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 408
    .local v3, "lines":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 409
    .local v2, "len":I
    const/4 v0, 0x0

    .line 410
    .local v0, "index0":I
    const/4 v1, 0x0

    .line 413
    .local v1, "index1":I
    :cond_0
    const/4 v6, 0x0

    .line 414
    .local v6, "widthes":I
    const/4 v7, 0x0

    .line 415
    .local v7, "wrap":Z
    move v0, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 418
    const/4 v7, 0x1

    .line 430
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 431
    if-eqz v7, :cond_4

    .line 432
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 436
    :goto_1
    if-lt v1, v2, :cond_0

    .line 440
    new-array v4, v3, [Ljava/lang/String;

    .line 441
    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 442
    return-object v4

    .line 421
    :cond_2
    if-nez v6, :cond_3

    .line 422
    add-int/2addr v6, p3

    .line 426
    :goto_2
    if-gt v6, p2, :cond_1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_3
    add-int v8, p3, p4

    add-int/2addr v6, v8

    goto :goto_2

    .line 434
    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "lengthLimit"    # I
    .param p5, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 217
    monitor-enter p5

    .line 218
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 219
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    monitor-exit p5

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDimensionPixelSize(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getLinesMaxLength([Ljava/lang/String;)[I
    .locals 6
    .param p1, "lines"    # [Ljava/lang/String;

    .prologue
    .line 376
    const/4 v3, 0x0

    .local v3, "max":I
    const/4 v2, 0x0

    .line 377
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 378
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 379
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v3, v4

    .line 380
    move v2, v1

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 384
    .local v0, "count":[I
    const/4 v1, 0x0

    :goto_1
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 385
    aget-object v4, p1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 386
    const/4 v4, 0x1

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    .line 384
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_2
    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    goto :goto_2

    .line 391
    :cond_3
    return-object v0
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "countWidth":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [F

    .line 360
    .local v2, "widths":[F
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 362
    aget v3, v2, v1

    add-float/2addr v0, v3

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return v0
.end method


# virtual methods
.method public getBgResId()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mBgResId:I

    return v0
.end method

.method public getFgResId()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mFgResId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 18
    .param p1, "color"    # I

    .prologue
    .line 180
    const/4 v13, 0x0

    .line 181
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 182
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mFgResId:I

    invoke-static {v2, v3, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 185
    .local v9, "fgBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mWidth:F

    float-to-int v0, v2

    move/from16 v16, v0

    .line 186
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mHeight:F

    float-to-int v10, v2

    .line 187
    .local v10, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 192
    if-eqz v9, :cond_0

    .line 193
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v16, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    .line 194
    .local v12, "left":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v10, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    .line 195
    .local v15, "top":F
    invoke-virtual {v1, v9, v12, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    .end local v12    # "left":F
    .end local v15    # "top":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 198
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 199
    .local v6, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 200
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 201
    const/4 v2, -0x1

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 203
    .local v17, "widths":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v2, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 204
    const/4 v8, 0x0

    .line 205
    .local v8, "countWidth":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v11, v2, :cond_1

    .line 206
    aget v2, v17, v11

    add-float/2addr v8, v2

    .line 205
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 210
    :cond_1
    move/from16 v0, v16

    int-to-float v2, v0

    sub-float/2addr v2, v8

    const/high16 v3, 0x425c0000    # 55.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    sub-int v3, v10, v3

    add-int/lit8 v3, v3, -0x32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    float-to-int v5, v8

    add-int/lit8 v5, v5, 0x32

    invoke-static/range {v1 .. v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 212
    .end local v6    # "textPaint":Landroid/text/TextPaint;
    .end local v8    # "countWidth":F
    .end local v11    # "i":I
    .end local v17    # "widths":[F
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 213
    return-void
.end method

.method public setBitmap(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 173
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 174
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 176
    return-void
.end method

.method public setBitmap(IILjava/lang/String;)V
    .locals 1
    .param p1, "bgResId"    # I
    .param p2, "fgResId"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->RIGHT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;)V

    .line 70
    return-void
.end method

.method public setBitmap(IILjava/lang/String;Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;)V
    .locals 20
    .param p1, "bgResId"    # I
    .param p2, "fgResId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textPosition"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    .prologue
    .line 84
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mBgResId:I

    .line 85
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mFgResId:I

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    .line 87
    const/4 v8, 0x0

    .line 88
    .local v8, "bgBitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 89
    .local v11, "fgBitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 90
    .local v18, "width":I
    const/4 v12, 0x0

    .line 91
    .local v12, "height":I
    const/4 v15, 0x0

    .line 92
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mBgResId:I

    if-lez v3, :cond_0

    .line 93
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .restart local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mBgResId:I

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mFgResId:I

    if-lez v3, :cond_1

    .line 99
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .restart local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 101
    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mFgResId:I

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 105
    :cond_1
    if-eqz v8, :cond_2

    .line 106
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 107
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 109
    :cond_2
    if-lez v18, :cond_3

    if-gtz v12, :cond_4

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mWidth:F

    float-to-int v0, v3

    move/from16 v18, v0

    .line 111
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mHeight:F

    float-to-int v12, v3

    .line 113
    :cond_4
    if-lez v18, :cond_5

    if-gtz v12, :cond_6

    .line 114
    :cond_5
    if-eqz v11, :cond_6

    .line 115
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 116
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 119
    :cond_6
    const/4 v9, 0x0

    .line 120
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_9

    .line 121
    move-object v9, v8

    .line 127
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v16, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    if-eqz v8, :cond_7

    if-eq v9, v8, :cond_7

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_7
    if-eqz v11, :cond_8

    if-eq v9, v11, :cond_8

    .line 134
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v18, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    .line 135
    .local v14, "left":F
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v12, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v3, v4

    .line 136
    .local v17, "top":F
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v11, v14, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    .end local v14    # "left":F
    .end local v17    # "top":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 139
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 140
    .local v7, "textPaint":Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/text/TextPaint;)Landroid/text/TextPaint;

    .line 141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 143
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [F

    move-object/from16 v19, v0

    .line 145
    .local v19, "widths":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v7, v3, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 146
    const/4 v10, 0x0

    .line 147
    .local v10, "countWidth":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v3, v0

    if-ge v13, v3, :cond_b

    .line 148
    aget v3, v19, v13

    add-float/2addr v10, v3

    .line 147
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "countWidth":F
    .end local v13    # "i":I
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v19    # "widths":[F
    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v18

    if-ne v0, v3, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v12, v3, :cond_a

    .line 123
    move-object v9, v11

    goto/16 :goto_0

    .line 125
    :cond_a
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-static {v0, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_0

    .line 150
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "countWidth":F
    .restart local v13    # "i":I
    .restart local v16    # "paint":Landroid/graphics/Paint;
    .restart local v19    # "widths":[F
    :cond_b
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->RIGHT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    move-object/from16 v0, p4

    if-ne v0, v3, :cond_f

    .line 151
    move/from16 v0, v18

    int-to-float v3, v0

    sub-float/2addr v3, v10

    const/high16 v4, 0x425c0000    # 55.0f

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    sub-int v4, v12, v4

    add-int/lit8 v4, v4, -0x32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    float-to-int v6, v10

    add-int/lit8 v6, v6, 0x32

    invoke-static/range {v2 .. v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 158
    .end local v7    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "countWidth":F
    .end local v13    # "i":I
    .end local v19    # "widths":[F
    :cond_c
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 159
    if-eqz v8, :cond_d

    if-eq v9, v8, :cond_d

    .line 160
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    const/4 v8, 0x0

    .line 163
    :cond_d
    if-eqz v11, :cond_e

    if-eq v9, v11, :cond_e

    .line 164
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    const/4 v11, 0x0

    .line 167
    :cond_e
    return-void

    .line 152
    .restart local v7    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "countWidth":F
    .restart local v13    # "i":I
    .restart local v19    # "widths":[F
    :cond_f
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->LEFT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    move-object/from16 v0, p4

    if-ne v0, v3, :cond_10

    .line 153
    const/16 v3, 0xf

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    sub-int v4, v12, v4

    add-int/lit8 v4, v4, -0x19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    float-to-int v6, v10

    invoke-static/range {v2 .. v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto :goto_2

    .line 155
    :cond_10
    move/from16 v0, v18

    int-to-float v3, v0

    sub-float/2addr v3, v10

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->TEXT_SIZE:I

    sub-int v4, v12, v4

    add-int/lit8 v4, v4, -0x19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mText:Ljava/lang/String;

    float-to-int v6, v10

    invoke-static/range {v2 .. v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto :goto_2
.end method

.method public setBitmap(Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;)V
    .locals 3
    .param p1, "res"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    .prologue
    .line 64
    iget v0, p1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->bgResId:I

    iget v1, p1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->fgResId:I

    iget-object v2, p1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;->text:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V
    .locals 16
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontsize"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxWidth"    # I

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v11}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "language":Ljava/lang/String;
    const-string/jumbo v11, "zh"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 244
    :goto_0
    move/from16 v0, p2

    int-to-float v11, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 246
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 249
    .local v6, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v11, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v12, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v11, v12

    .line 263
    .local v5, "fontHeight":F
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    new-array v10, v11, [F

    .line 264
    .local v10, "widths":[F
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "countWidth":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v11, v10

    if-ge v7, v11, :cond_2

    .line 267
    aget v11, v10, v7

    add-float/2addr v4, v11

    .line 266
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 238
    .end local v4    # "countWidth":F
    .end local v5    # "fontHeight":F
    .end local v6    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v7    # "i":I
    .end local v10    # "widths":[F
    :cond_0
    const-string/jumbo v11, "uk"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 239
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v12, v14

    double-to-int v0, v12

    move/from16 p2, v0

    goto :goto_0

    .line 241
    :cond_1
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v12, v14

    double-to-int v0, v12

    move/from16 p2, v0

    goto :goto_0

    .line 269
    .restart local v4    # "countWidth":F
    .restart local v5    # "fontHeight":F
    .restart local v6    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v7    # "i":I
    .restart local v10    # "widths":[F
    :cond_2
    float-to-int v11, v4

    float-to-int v12, v5

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    .local v3, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p2

    int-to-float v12, v0

    sub-float/2addr v12, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v9, v11, v12

    .line 272
    .local v9, "textBaseY":F
    const/4 v11, 0x0

    move/from16 v0, p2

    int-to-float v12, v0

    sub-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v11, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 274
    return-void
.end method

.method public setString(Ljava/lang/String;ILandroid/graphics/Paint;III)V
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontsize"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxWidth"    # I
    .param p5, "textMargin"    # I
    .param p6, "topMargin"    # I

    .prologue
    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p2

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->StringFormat(Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "text":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getLinesMaxLength([Ljava/lang/String;)[I

    move-result-object v7

    .line 333
    .local v7, "count":[I
    const/4 v14, 0x0

    aget v14, v7, v14

    move/from16 v0, p2

    int-to-float v15, v0

    const/high16 v16, 0x3fc00000    # 1.5f

    div-float v15, v15, v16

    float-to-int v15, v15

    mul-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v7, v15

    mul-int v15, v15, p2

    add-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v7, v15

    add-int/lit8 v15, v15, -0x1

    mul-int v15, v15, p5

    add-int/2addr v14, v15

    array-length v15, v12

    mul-int v15, v15, p2

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    mul-int v16, v16, p6

    add-int v15, v15, v16

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 335
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 336
    .local v6, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, p2

    int-to-float v14, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 338
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 342
    .local v9, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v14, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v15, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v8, v14, v15

    .line 344
    .local v8, "fontHeight":F
    move/from16 v0, p2

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    sub-float/2addr v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v13, v14, v15

    .line 345
    .local v13, "textBaseY":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v14, v12

    if-ge v10, v14, :cond_1

    .line 346
    aget-object v14, v12, v10

    if-eqz v14, :cond_0

    .line 347
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    aget-object v14, v12, v10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_0

    .line 349
    aget-object v14, v12, v10

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int v15, p2, p5

    mul-int/2addr v15, v11

    int-to-float v15, v15

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    mul-int v17, v10, p6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v6, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 345
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 354
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 355
    return-void
.end method

.method public setString([Ljava/lang/String;I[Landroid/graphics/Paint;I)V
    .locals 18
    .param p1, "str"    # [Ljava/lang/String;
    .param p2, "fontsize"    # I
    .param p3, "paint"    # [Landroid/graphics/Paint;
    .param p4, "maxWidth"    # I

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v13}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, "language":Ljava/lang/String;
    const-string/jumbo v13, "zh"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 280
    move/from16 v0, p2

    int-to-double v14, v0

    const-wide v16, 0x3fe3333333333333L    # 0.6

    mul-double v14, v14, v16

    double-to-int v0, v14

    move/from16 p2, v0

    .line 283
    :cond_0
    const/4 v2, 0x0

    .line 284
    .local v2, "allCountWidth":F
    const/4 v3, 0x0

    .line 285
    .local v3, "allFontHeight":F
    move-object/from16 v0, p1

    array-length v13, v0

    new-array v7, v13, [F

    .line 286
    .local v7, "fontHeight":[F
    move-object/from16 v0, p1

    array-length v13, v0

    new-array v6, v13, [F

    .line 287
    .local v6, "countWidth":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v9, v13, :cond_1

    .line 288
    aget-object v13, p3, v9

    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    aget-object v13, p3, v9

    invoke-static {v13}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 290
    aget-object v13, p3, v9

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    aget-object v13, p1, v9

    aget-object v14, p3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v13

    aput v13, v6, v9

    .line 293
    aget v13, v6, v9

    add-float/2addr v2, v13

    .line 294
    aget-object v13, p3, v9

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 296
    .local v8, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v13, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v14, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v13, v14

    aput v13, v7, v9

    .line 297
    aget v13, v7, v9

    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 287
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 309
    .end local v8    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_1
    float-to-int v13, v2

    float-to-int v14, v3

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 310
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 311
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    .line 312
    .local v11, "offsetWidth":F
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v9, v13, :cond_2

    .line 313
    move/from16 v0, p2

    int-to-float v13, v0

    move/from16 v0, p2

    int-to-float v14, v0

    aget v15, v7, v9

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    aget-object v14, p3, v9

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v12, v13, v14

    .line 314
    .local v12, "textBaseY":F
    aget-object v13, p1, v9

    move/from16 v0, p2

    int-to-float v14, v0

    aget v15, v7, v9

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v12

    aget-object v15, p3, v9

    invoke-virtual {v5, v13, v11, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    aget v13, v6, v9

    add-float/2addr v11, v13

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 317
    .end local v12    # "textBaseY":F
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 318
    return-void
.end method
