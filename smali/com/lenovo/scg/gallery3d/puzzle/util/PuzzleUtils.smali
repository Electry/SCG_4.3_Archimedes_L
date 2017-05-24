.class public Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;
.super Ljava/lang/Object;
.source "PuzzleUtils.java"


# static fields
.field public static final PREPARING:J = -0x2L

.field public static final SAVE_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field static colors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->colors:[I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Gallery/Puzzle/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->SAVE_DIR:Ljava/lang/String;

    return-void

    .line 38
    :array_0
    .array-data 4
        -0x1000000
        -0xffff01
        -0x10000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 149
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static checkSDCard()Z
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    .line 169
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    div-int/lit16 v9, v9, 0x400

    const/16 v10, 0x400

    if-le v9, v10, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 173
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    .local v5, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v6, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    .local v7, "w":I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 184
    .local v3, "h":I
    const/high16 v4, 0x44480000    # 800.0f

    .line 185
    .local v4, "hh":F
    const/high16 v8, 0x43f00000    # 480.0f

    .line 187
    .local v8, "ww":F
    const/4 v1, 0x1

    .line 188
    .local v1, "be":I
    if-le v7, v3, :cond_3

    int-to-float v9, v7

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    .line 189
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v1, v9

    .line 193
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    const/4 v1, 0x1

    .line 194
    :cond_2
    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 197
    .restart local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 190
    :cond_3
    if-ge v7, v3, :cond_1

    int-to-float v9, v3

    cmpl-float v9, v9, v4

    if-lez v9, :cond_1

    .line 191
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v4

    float-to-int v1, v9

    goto :goto_0
.end method

.method public static compressBitmap([BII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "imageBytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 253
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    .local v4, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    .local v5, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 256
    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 258
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 259
    .local v6, "w":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 260
    .local v2, "h":I
    int-to-float v3, p2

    .line 261
    .local v3, "hh":F
    int-to-float v7, p1

    .line 262
    .local v7, "ww":F
    const/4 v0, 0x1

    .line 263
    .local v0, "be":I
    if-le v6, v2, :cond_2

    int-to-float v8, v6

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    .line 264
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v0, v8

    .line 268
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 269
    :cond_1
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .end local v4    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 271
    .restart local v4    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    return-object v1

    .line 265
    :cond_2
    if-ge v6, v2, :cond_0

    int-to-float v8, v2

    cmpl-float v8, v8, v3

    if-lez v8, :cond_0

    .line 266
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v0, v8

    goto :goto_0
.end method

.method private static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    const/16 v3, 0x64

    .line 157
    .local v3, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v5, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 159
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    add-int/lit8 v3, v3, -0xa

    goto :goto_0

    .line 162
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static getAvailableSpace()J
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "state":Ljava/lang/String;
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "External storage state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-wide/16 v4, -0x2

    .line 138
    :cond_0
    :goto_0
    return-wide v4

    .line 122
    :cond_1
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->SAVE_DIR:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->SAVE_DIR:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    goto :goto_0

    .line 135
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Utils"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 50
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 53
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 58
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 72
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 73
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static readFileToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 282
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 283
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 285
    .end local v0    # "b":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 286
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 288
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 292
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 286
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "n":I
    :cond_1
    if-eqz v2, :cond_3

    .line 288
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 289
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 286
    .end local v0    # "b":[B
    .end local v3    # "n":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 288
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 289
    :cond_2
    :goto_4
    throw v5

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_4

    .line 286
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 285
    :catch_4
    move-exception v5

    goto :goto_1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "n":I
    :cond_3
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roatation"    # I

    .prologue
    const/4 v1, 0x0

    .line 244
    if-nez p0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 248
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static saveImage([BLjava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->checkSDCard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->SAVE_DIR:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_2
    new-instance v5, Landroid/os/StatFs;

    sget-object v6, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->SAVE_DIR:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 97
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz v4, :cond_4

    .line 107
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 110
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 108
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 110
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v3, :cond_0

    .line 107
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 108
    :catch_2
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    if-eqz v3, :cond_0

    .line 107
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 108
    :catch_4
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 107
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 110
    :cond_3
    :goto_4
    throw v6

    .line 108
    :catch_5
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 102
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 100
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 202
    move v8, p1

    .line 203
    .local v8, "newWidth":I
    move v7, p2

    .line 207
    .local v7, "newHeight":I
    if-nez v7, :cond_0

    .line 208
    int-to-float v0, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v7, v0

    .line 212
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v10, 0x3f800000    # 1.0f

    .line 214
    .local v10, "scaleX":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 216
    .local v11, "scaleY":F
    int-to-float v0, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 217
    if-eqz p2, :cond_1

    .line 218
    int-to-float v0, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v0, v2

    .line 223
    :goto_0
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 224
    .local v9, "paint":Landroid/graphics/Paint;
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 226
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 220
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_1
    move v11, v10

    goto :goto_0
.end method

.method public static scaleBitmapToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 233
    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 234
    .local v3, "sx":F
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 235
    .local v4, "sy":F
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 236
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 238
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 240
    return-object v2
.end method
