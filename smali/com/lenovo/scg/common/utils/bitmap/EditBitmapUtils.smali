.class public Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;
.super Ljava/lang/Object;
.source "EditBitmapUtils.java"


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ORIENTATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 124
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v2

    .line 125
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 126
    .local v8, "sampleSize":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int v11, v11, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int v12, v12, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 128
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 132
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 133
    const/4 v11, 0x0

    invoke-static {v5, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 137
    invoke-direct {p0, v5}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 141
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "sampleSize":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v11, v12, :cond_0

    .line 142
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    move-object v1, v3

    .line 147
    .end local v3    # "copy":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v1, :cond_1

    .line 149
    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 150
    .local v9, "scale":F
    move/from16 v0, p3

    int-to-float v11, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v12, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 151
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    .line 152
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 154
    invoke-static {v1, v6}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 155
    .local v10, "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    .end local v10    # "transformed":Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v11, "BitmapUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-direct {p0, v5}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    invoke-direct {p0, v5}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v11

    :cond_1
    move-object v10, v1

    .line 159
    goto :goto_1
.end method

.method private getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 80
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 86
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-direct {p0, v2}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 93
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-direct {p0, v2}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, "orientation":I
    const/4 v6, 0x0

    .line 100
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 107
    :cond_0
    if-eqz v6, :cond_1

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    :goto_0
    return v7

    .line 104
    :catch_0
    move-exception v0

    .line 107
    if-eqz v6, :cond_1

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p3}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "sFileName":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 195
    if-eqz v2, :cond_2

    .line 196
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->getOrientation(Landroid/net/Uri;)I

    move-result v8

    .line 198
    .local v8, "orientation":I
    const/4 v11, 0x0

    .line 200
    .local v11, "scgexif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    invoke-direct {v12, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "scgexif":Landroid/media/ExifInterface;
    .local v12, "scgexif":Landroid/media/ExifInterface;
    move-object v11, v12

    .line 205
    .end local v12    # "scgexif":Landroid/media/ExifInterface;
    .restart local v11    # "scgexif":Landroid/media/ExifInterface;
    :goto_0
    const-string v15, "Orientation"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    .line 207
    .local v13, "scgorientation":I
    packed-switch v13, :pswitch_data_0

    .line 227
    :goto_1
    :pswitch_0
    if-eqz v8, :cond_0

    .line 228
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 229
    .local v6, "m":Landroid/graphics/Matrix;
    int-to-float v15, v8

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 230
    invoke-static {v2, v6}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 231
    .local v14, "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v8    # "orientation":I
    .end local v11    # "scgexif":Landroid/media/ExifInterface;
    .end local v13    # "scgorientation":I
    .end local v14    # "transformed":Landroid/graphics/Bitmap;
    :goto_2
    return-object v14

    .line 201
    .restart local v8    # "orientation":I
    .restart local v11    # "scgexif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v13    # "scgorientation":I
    :pswitch_1
    const/16 v8, 0x5a

    .line 210
    goto :goto_1

    .line 214
    :pswitch_2
    const/16 v8, 0xb4

    .line 215
    goto :goto_1

    .line 219
    :pswitch_3
    const/16 v8, 0x10e

    .line 220
    goto :goto_1

    .line 234
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v15

    if-nez v15, :cond_2

    .line 236
    :try_start_1
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, "exif":Landroid/media/ExifInterface;
    const-string v15, "Orientation"

    invoke-virtual {v5, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, "pic_orientation":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 240
    .local v7, "ori":I
    const/4 v15, 0x6

    if-ne v7, v15, :cond_3

    .line 241
    const/16 v8, 0x5a

    .line 247
    :cond_1
    :goto_3
    if-eqz v8, :cond_5

    .line 248
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 249
    .restart local v6    # "m":Landroid/graphics/Matrix;
    int-to-float v15, v8

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 250
    invoke-static {v2, v6}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 251
    .restart local v14    # "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 257
    .end local v5    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v7    # "ori":I
    .end local v9    # "pic_orientation":Ljava/lang/String;
    .end local v14    # "transformed":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 258
    .local v4, "ee":Ljava/lang/Exception;
    const-string v15, "getBitmap"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ee":Ljava/lang/Exception;
    .end local v8    # "orientation":I
    .end local v11    # "scgexif":Landroid/media/ExifInterface;
    .end local v13    # "scgorientation":I
    :cond_2
    move-object v14, v2

    .line 263
    goto :goto_2

    .line 242
    .restart local v5    # "exif":Landroid/media/ExifInterface;
    .restart local v7    # "ori":I
    .restart local v8    # "orientation":I
    .restart local v9    # "pic_orientation":Ljava/lang/String;
    .restart local v11    # "scgexif":Landroid/media/ExifInterface;
    .restart local v13    # "scgorientation":I
    :cond_3
    const/4 v15, 0x3

    if-ne v7, v15, :cond_4

    .line 243
    const/16 v8, 0xb4

    goto :goto_3

    .line 244
    :cond_4
    const/16 v15, 0x8

    if-ne v7, v15, :cond_1

    .line 245
    const/16 v8, 0x10e

    goto :goto_3

    :cond_5
    move-object v14, v2

    .line 254
    goto :goto_2

    .line 207
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

.method public getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    .local v8, "fileName":Ljava/lang/String;
    move-object v9, p1

    .line 165
    .local v9, "filePathUri":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 172
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    .end local v6    # "column_index":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 272
    if-nez p2, :cond_1

    .line 273
    iget-object v5, p0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 285
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 286
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v5, 0x5a

    :try_start_2
    invoke-virtual {p1, p4, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    invoke-direct {p0, v4}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .line 294
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_1
    return-object v1

    .line 276
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    const/4 v1, 0x0

    goto :goto_1

    .line 285
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p3

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    invoke-direct {p0, v3}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .line 289
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method
