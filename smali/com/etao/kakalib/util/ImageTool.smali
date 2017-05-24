.class public Lcom/etao/kakalib/util/ImageTool;
.super Ljava/lang/Object;
.source "ImageTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 225
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 226
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 228
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 230
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 233
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 243
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 228
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    .line 229
    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 228
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 231
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 230
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 238
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 239
    goto :goto_2

    .line 240
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 243
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/util/ImageTool;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 212
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "roundedSize":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 220
    :goto_1
    return v1

    .line 215
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "roundedSize":I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1    # "roundedSize":I
    goto :goto_1
.end method

.method public static createThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "srcImageFile"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/etao/kakalib/util/ImageTool;->createThumbnail(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createThumbnail(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "srcImageFile"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "adjustOritation"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 137
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 140
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 141
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 146
    .local v9, "minSideLength":I
    mul-int v1, p1, p2

    invoke-static {v10, v9, v1}, Lcom/etao/kakalib/util/ImageTool;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 147
    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 149
    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 152
    .end local v9    # "minSideLength":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/util/ImageTool;->getDigreeForPicturePath(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "digree":I
    if-eqz v7, :cond_1

    .line 160
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 161
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, v7

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 164
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 163
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 172
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "digree":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-object v0

    .line 153
    .restart local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 154
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 166
    .restart local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "digree":I
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getDigreeForPicturePath(Ljava/lang/String;)I
    .locals 6
    .param p0, "imgpath"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "digree":I
    const/4 v2, 0x0

    .line 179
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    .end local v2    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 186
    const-string v4, "Orientation"

    .line 187
    const/4 v5, 0x0

    .line 186
    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 189
    .local v3, "ori":I
    packed-switch v3, :pswitch_data_0

    .line 200
    :pswitch_0
    const/4 v0, 0x0

    .line 204
    .end local v3    # "ori":I
    :cond_0
    :goto_1
    return v0

    .line 180
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/4 v2, 0x0

    .restart local v2    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "ori":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 192
    goto :goto_1

    .line 194
    :pswitch_2
    const/16 v0, 0xb4

    .line 195
    goto :goto_1

    .line 197
    :pswitch_3
    const/16 v0, 0x10e

    .line 198
    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v7, 0x0

    .line 57
    :goto_0
    return-object v7

    .line 53
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 55
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, "rotatedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static rotateBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcImagePath"    # Ljava/lang/String;
    .param p1, "angle"    # I

    .prologue
    .line 45
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/etao/kakalib/util/ImageTool;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static rotateBitmapAtPath(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z
    .locals 6
    .param p0, "srcImagePath"    # Ljava/lang/String;
    .param p1, "angle"    # I
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {p0, p1}, Lcom/etao/kakalib/util/ImageTool;->rotateBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 41
    :goto_0
    return v4

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 36
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    :try_start_1
    invoke-virtual {v1, p2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 38
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 70
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 72
    .local v6, "width":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 76
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 77
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 78
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 79
    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    return-object v0
.end method

.method public static toRoundCorner(Landroid/content/Context;Landroid/graphics/Bitmap;IIIZZZZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "pixels"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "squareTL"    # Z
    .param p6, "squareTR"    # Z
    .param p7, "squareBL"    # Z
    .param p8, "squareBR"    # Z

    .prologue
    .line 94
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 95
    .local v10, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v9, "densityMultiplier":F
    const v8, -0xbdbdbe

    .line 99
    .local v8, "color":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 100
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .local v11, "rect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 104
    .local v12, "rectF":Landroid/graphics/RectF;
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float v13, v3, v9

    .line 106
    .local v13, "roundPx":F
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 108
    const v3, -0xbdbdbe

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {v2, v12, v13, v13, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    if-eqz p5, :cond_0

    .line 113
    const/4 v3, 0x0

    const/4 v4, 0x0

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    :cond_0
    if-eqz p6, :cond_1

    .line 116
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    move/from16 v0, p3

    int-to-float v5, v0

    div-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    :cond_1
    if-eqz p7, :cond_2

    .line 119
    const/4 v3, 0x0

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    :cond_2
    if-eqz p8, :cond_3

    .line 122
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    :cond_3
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    return-object v10
.end method
