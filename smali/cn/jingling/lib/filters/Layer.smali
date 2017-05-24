.class public Lcn/jingling/lib/filters/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/filters/Layer$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayerBlock(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;Lcn/jingling/lib/livefilter/NormalizedRect;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "blockPositionRect"    # Lcn/jingling/lib/livefilter/NormalizedRect;

    .prologue
    .line 29
    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 30
    .local v4, "originalLayer":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 31
    .local v7, "widthBm":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 32
    .local v3, "heightBm":I
    move-object/from16 v0, p5

    iget v10, v0, Lcn/jingling/lib/livefilter/NormalizedRect;->left:F

    int-to-float v11, v7

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 33
    .local v8, "x":I
    move-object/from16 v0, p5

    iget v10, v0, Lcn/jingling/lib/livefilter/NormalizedRect;->top:F

    int-to-float v11, v3

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 34
    .local v9, "y":I
    move-object/from16 v0, p5

    iget v10, v0, Lcn/jingling/lib/livefilter/NormalizedRect;->right:F

    int-to-float v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int v6, v10, v8

    .line 35
    .local v6, "width":I
    move-object/from16 v0, p5

    iget v10, v0, Lcn/jingling/lib/livefilter/NormalizedRect;->bottom:F

    int-to-float v11, v3

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int v2, v10, v9

    .line 37
    .local v2, "height":I
    invoke-static {v4, v8, v9, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, "cropedLayer":Landroid/graphics/Bitmap;
    const/4 v10, 0x1

    invoke-static {v1, p2, p3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 40
    .local v5, "scaledLayer":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    return-object v5
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 162
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, -0x1

    invoke-static {v1, p2, p3, p4, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 177
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1, p2, p3, p4, p5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I
    .param p6, "scale"    # Z

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, "is":Ljava/io/InputStream;
    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 206
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v6

    .line 209
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;ILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    const/4 v2, -0x1

    .line 155
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    const/4 v2, -0x1

    .line 143
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p3, "alpha"    # I

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 191
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, p2, p3}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p4, "alpha"    # I

    .prologue
    .line 219
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p4, "alpha"    # I
    .param p5, "scale"    # Z

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "bm":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 230
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, v13, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 234
    .local v14, "original":Landroid/graphics/Bitmap;
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 235
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 236
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 237
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 247
    :cond_0
    :goto_0
    sget-object v3, Lcn/jingling/lib/filters/Layer$Type;->CROP:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 248
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, p2

    div-int v3, v3, p1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 249
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 250
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v6, v6, p2

    div-int v6, v6, p1

    .line 249
    invoke-static {v14, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 251
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :goto_1
    const/4 v10, 0x0

    .line 257
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 259
    .local v7, "m":Landroid/graphics/Matrix;
    sget-object v3, Lcn/jingling/lib/filters/Layer$Type;->ROTATE_90:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 260
    const/16 v19, 0x0

    .line 261
    .local v19, "tmpBitmap":Landroid/graphics/Bitmap;
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 263
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 264
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 263
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 266
    move-object/from16 v0, v19

    if-eq v2, v0, :cond_1

    .line 267
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    :cond_1
    move-object/from16 v2, v19

    .line 273
    .end local v19    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_4

    sget-object v3, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 274
    const/16 v19, 0x0

    .line 275
    .restart local v19    # "tmpBitmap":Landroid/graphics/Bitmap;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 276
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 278
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 279
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 278
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 281
    move-object/from16 v0, v19

    if-eq v2, v0, :cond_3

    .line 282
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_3
    move-object/from16 v2, v19

    .line 287
    .end local v19    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p5, :cond_8

    .line 288
    move/from16 v0, p1

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v3, v4

    .line 289
    .local v17, "sx":F
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 291
    .local v18, "sy":F
    new-instance v7, Landroid/graphics/Matrix;

    .end local v7    # "m":Landroid/graphics/Matrix;
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 292
    .restart local v7    # "m":Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 293
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 294
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 295
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    .local v11, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v11, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 302
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v17    # "sx":F
    .end local v18    # "sy":F
    :goto_2
    if-eq v10, v2, :cond_5

    .line 303
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_5
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_9

    .line 306
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 307
    .local v15, "p":Landroid/graphics/Paint;
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 309
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 310
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 309
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 311
    .local v9, "b":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .restart local v11    # "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v10, v3, v4, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v15    # "p":Landroid/graphics/Paint;
    :goto_3
    return-object v9

    .line 239
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    move/from16 v16, p2

    .line 240
    .local v16, "size":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 241
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 242
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 243
    .local v12, "l":I
    mul-int v3, p1, v16

    div-int p1, v3, v12

    .line 244
    mul-int v3, p2, v16

    div-int p2, v3, v12

    goto/16 :goto_0

    .line 253
    .end local v12    # "l":I
    .end local v16    # "size":I
    :cond_7
    move-object v2, v14

    goto/16 :goto_1

    .line 298
    .restart local v7    # "m":Landroid/graphics/Matrix;
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object v10, v2

    goto :goto_2

    :cond_9
    move-object v9, v10

    .line 316
    goto :goto_3
.end method

.method public static getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I
    .locals 6
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    .line 47
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I
    .locals 8
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static/range {p0 .. p5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bm":Landroid/graphics/Bitmap;
    mul-int v3, p2, p3

    new-array v1, v3, [I

    .local v1, "pixels":[I
    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    .line 64
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    return-object v1
.end method

.method public static getLayerPixels(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)[I
    .locals 8
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p3, "alpha"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 74
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 76
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 77
    .local v7, "h":I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .local v1, "pixels":[I
    move v2, v6

    move v4, v6

    move v5, v6

    move v6, v3

    .line 78
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    return-object v1
.end method

.method public static getSDCardLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, -0x1

    invoke-static {v1, p2, p3, p4, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSDCardLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-static {v1, p2, p3, p4, p5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 124
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSDCardLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I
    .param p6, "scale"    # Z

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v0, "is":Ljava/io/FileInputStream;
    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 134
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Ljava/io/InputStream;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    .end local v0    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSDCardLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I
    .locals 6
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;

    .prologue
    .line 85
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/Layer;->getSDCardLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I
    .locals 8
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "type"    # Lcn/jingling/lib/filters/Layer$Type;
    .param p5, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static/range {p0 .. p5}, Lcn/jingling/lib/filters/Layer;->getSDCardLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bm":Landroid/graphics/Bitmap;
    mul-int v3, p2, p3

    new-array v1, v3, [I

    .local v1, "pixels":[I
    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    .line 95
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    return-object v1
.end method
