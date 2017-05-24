.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/GetImageForUrl;
.super Ljava/lang/Object;
.source "GetImageForUrl.java"


# static fields
.field private static final READ_LENGTH:I = 0x2000

.field private static final RET_SUCCESS:I = 0xc8

.field private static final TIME_OUT_CONNECT:I = 0x3a98

.field private static final TIME_OUT_READ:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static fileToBit(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 101
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v3, "pictureUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 33
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "pictureUrl":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHttpBytes(Ljava/lang/String;)[B
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    .local v6, "len":I
    const/16 v11, 0x2000

    new-array v0, v11, [B

    .line 49
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 50
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 51
    .local v5, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 53
    .local v3, "imageUrl":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "imageUrl":Ljava/net/URL;
    .local v4, "imageUrl":Ljava/net/URL;
    move-object v3, v4

    .line 57
    .end local v4    # "imageUrl":Ljava/net/URL;
    .restart local v3    # "imageUrl":Ljava/net/URL;
    :goto_0
    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_1
    return-object v10

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 64
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 66
    const-string v11, "Content-Type"

    const-string/jumbo v12, "text/html"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 71
    .local v9, "responseCode":I
    const/16 v11, 0xc8

    if-ne v9, v11, :cond_3

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 73
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 75
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 84
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 86
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "responseCode":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    goto :goto_1

    .line 77
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "responseCode":I
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 78
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    .line 82
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 84
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "responseCode":I
    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method public static loadImageFromUrl(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "sc"    # I

    .prologue
    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, "i":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 112
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 113
    .local v13, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x400

    new-array v9, v15, [B

    .line 114
    .local v9, "isBuffer":[B
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 154
    :goto_0
    return-object v4

    .line 116
    :cond_0
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v11, "m":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/io/InputStream;

    move-object v8, v0

    .line 119
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v15, 0x1000

    invoke-direct {v3, v8, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 121
    .end local v13    # "out":Ljava/io/ByteArrayOutputStream;
    .local v14, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    .line 122
    .local v10, "len":I
    :goto_1
    :try_start_2
    invoke-virtual {v3, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v15, -0x1

    if-eq v10, v15, :cond_1

    .line 123
    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 127
    :catch_0
    move-exception v7

    move-object v13, v14

    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 128
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "len":I
    .end local v11    # "m":Ljava/net/URL;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v7, "e1":Ljava/net/MalformedURLException;
    :goto_2
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 129
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "e1":Ljava/net/MalformedURLException;
    .end local v13    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "len":I
    .restart local v11    # "m":Ljava/net/URL;
    .restart local v14    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 126
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v13, v14

    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 133
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "len":I
    .end local v11    # "m":Ljava/net/URL;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :goto_3
    if-nez v13, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v6

    .line 131
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 134
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 135
    .local v5, "data":[B
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    const/4 v15, 0x0

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v5, v15, v0, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 138
    const/4 v15, 0x0

    iput-boolean v15, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    iget v15, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v15, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v1, v15

    .line 140
    .local v1, "be":I
    if-gtz v1, :cond_4

    .line 141
    const/4 v1, 0x1

    .line 145
    :cond_3
    :goto_5
    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    const/4 v4, 0x0

    .line 148
    .local v4, "bmp":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    :try_start_4
    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v5, v15, v0, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    goto :goto_0

    .line 142
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v15, 0x3

    if-le v1, v15, :cond_3

    .line 143
    const/4 v1, 0x3

    goto :goto_5

    .line 149
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 152
    const/4 v4, 0x0

    goto :goto_0

    .line 130
    .end local v1    # "be":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "data":[B
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "m":Ljava/net/URL;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "len":I
    .restart local v14    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v6

    move-object v13, v14

    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 127
    .end local v10    # "len":I
    .end local v11    # "m":Ljava/net/URL;
    :catch_5
    move-exception v7

    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "m":Ljava/net/URL;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static loadImageFromUrlByte(Ljava/lang/String;I)[B
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "sc"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "i":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 161
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 162
    .local v10, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v7, v12, [B

    .line 163
    .local v7, "isBuffer":[B
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v3

    .line 165
    :cond_1
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, "m":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    .line 169
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 172
    .local v8, "len":I
    :goto_1
    :try_start_2
    invoke-virtual {v2, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_2

    .line 173
    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 177
    :catch_0
    move-exception v5

    move-object v10, v11

    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .line 178
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "len":I
    .end local v9    # "m":Ljava/net/URL;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "e1":Ljava/net/MalformedURLException;
    :goto_2
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "e1":Ljava/net/MalformedURLException;
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "len":I
    .restart local v9    # "m":Ljava/net/URL;
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 176
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v11

    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .line 183
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "len":I
    .end local v9    # "m":Ljava/net/URL;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v10, :cond_0

    .line 184
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 185
    .local v3, "data":[B
    goto :goto_0

    .line 180
    .end local v3    # "data":[B
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 180
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "m":Ljava/net/URL;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "len":I
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v4

    move-object v10, v11

    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 177
    .end local v8    # "len":I
    .end local v9    # "m":Ljava/net/URL;
    :catch_4
    move-exception v5

    goto :goto_2

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "m":Ljava/net/URL;
    :catch_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method
