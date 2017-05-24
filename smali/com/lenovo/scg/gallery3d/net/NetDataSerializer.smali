.class Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;
.super Ljava/lang/Object;
.source "NetDataSerializer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final READ_LENGTH:I = 0x2000

.field private static final RET_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SCGNetThreadPool"

.field private static final TIME_OUT_CONNECT:I = 0x3a98

.field private static final TIME_OUT_READ:I = 0x3a98


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlagCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->mFlagCanceled:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private static read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 13
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 267
    const-string v7, ""

    .line 268
    .local v7, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 271
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 272
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const-string v10, "Content-Encoding"

    invoke-interface {p0, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 275
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-le v10, v12, :cond_0

    .line 276
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    move-object v4, v5

    .line 280
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v6, 0x0

    .line 281
    .local v6, "readBytes":I
    const/16 v10, 0x2000

    new-array v9, v10, [B

    .line 282
    .local v9, "sBuffer":[B
    :goto_0
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v12, :cond_1

    .line 283
    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 288
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v9    # "sBuffer":[B
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v10, "SCGNetThreadPool"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read response IllegalStateException error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    move-object v8, v7

    .line 298
    .end local v7    # "result":Ljava/lang/String;
    :goto_2
    return-object v8

    .line 286
    .restart local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "header":Lorg/apache/http/Header;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "readBytes":I
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v9    # "sBuffer":[B
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v7    # "result":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    move-object v7, v8

    .line 287
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    goto :goto_2

    .line 291
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readBytes":I
    .end local v9    # "sBuffer":[B
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "SCGNetThreadPool"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read response IOException error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "SCGNetThreadPool"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read response Exception error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->mFlagCanceled:Z

    .line 254
    return-void
.end method

.method public getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "sURL"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 155
    .local v4, "imageUrl":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "imageUrl":Ljava/net/URL;
    .local v5, "imageUrl":Ljava/net/URL;
    move-object v4, v5

    .line 159
    .end local v5    # "imageUrl":Ljava/net/URL;
    .restart local v4    # "imageUrl":Ljava/net/URL;
    :goto_0
    if-nez v4, :cond_0

    move-object v1, v0

    .line 194
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 156
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 165
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    const-string v8, "Content-Type"

    const-string/jumbo v9, "text/html"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 172
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 173
    .local v7, "responseCode":I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 174
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 175
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 176
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 182
    .end local v6    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move-object v1, v0

    .line 194
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 180
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "responseCode":I
    :cond_4
    :try_start_2
    const-string v8, "SCGNetThreadPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is not success, response code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 184
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "SCGNetThreadPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNetBitmap Exception error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getNetBytes(Ljava/lang/String;)[B
    .locals 14
    .param p1, "sURL"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    .local v6, "len":I
    const/16 v11, 0x2000

    new-array v0, v11, [B

    .line 105
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 106
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 107
    .local v5, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 109
    .local v3, "imageUrl":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "imageUrl":Ljava/net/URL;
    .local v4, "imageUrl":Ljava/net/URL;
    move-object v3, v4

    .line 113
    .end local v4    # "imageUrl":Ljava/net/URL;
    .restart local v3    # "imageUrl":Ljava/net/URL;
    :goto_0
    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_1
    return-object v10

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 120
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 121
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 122
    const-string v11, "Content-Type"

    const-string/jumbo v12, "text/html"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 124
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 127
    .local v9, "responseCode":I
    const/16 v11, 0xc8

    if-ne v9, v11, :cond_4

    .line 128
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 129
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 134
    :cond_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v8

    .line 139
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "responseCode":I
    :goto_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->isCanceled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 148
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    goto :goto_1

    .line 132
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "responseCode":I
    :cond_3
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 141
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 142
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "responseCode":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_5
    const-string v11, "SCGNetThreadPool"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getNetBytes Exception error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "responseCode":I
    :cond_4
    :try_start_5
    const-string v11, "SCGNetThreadPool"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is not success, response code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 141
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "responseCode":I
    :catch_2
    move-exception v2

    goto :goto_5
.end method

.method public getNetString(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z
    .locals 16
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "netRetData"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "bSuc":Z
    const-string v10, ""

    .line 61
    .local v10, "sData":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 62
    .local v6, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x3a98

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    const/16 v13, 0x3a98

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 66
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v7, 0x0

    .line 67
    .local v7, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v7, v5

    .line 70
    invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 71
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 72
    .local v11, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 73
    .local v12, "statusCode":I
    const-string v9, ""

    .line 74
    .local v9, "result":Ljava/lang/String;
    const/16 v13, 0xc8

    if-eq v12, v13, :cond_0

    .line 75
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "statusCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v9

    .line 77
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNetString error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    .line 98
    .end local v1    # "bSuc":Z
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    .local v2, "bSuc":I
    :goto_1
    return v2

    .line 82
    .end local v2    # "bSuc":I
    .restart local v1    # "bSuc":Z
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "status":Lorg/apache/http/StatusLine;
    .restart local v12    # "statusCode":I
    :cond_0
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v9

    .line 83
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNetString ClientProtocolException error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    move v2, v1

    .line 98
    .restart local v2    # "bSuc":I
    goto :goto_1

    .line 90
    .end local v2    # "bSuc":I
    :catch_1
    move-exception v4

    .line 91
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNetString IOException error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNetString Exception error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 260
    .local v0, "bFlag":Z
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->mFlagCanceled:Z

    .line 262
    return v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z
    .locals 16
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sPostParam"    # Ljava/lang/String;
    .param p3, "sResult"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "bSuc":Z
    :try_start_0
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 201
    .local v7, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x3a98

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 202
    const/16 v13, 0x3a98

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 205
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 206
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 207
    .local v8, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v4, 0x0

    .line 216
    .local v4, "data":[B
    const-string v13, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 218
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 219
    .local v6, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    move-object v9, v8

    .line 222
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 223
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 224
    .local v11, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 225
    .local v12, "statusCode":I
    const/16 v13, 0xc8

    if-eq v12, v13, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 227
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "statusCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    :goto_0
    move v2, v1

    .line 241
    .end local v1    # "bSuc":Z
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "data":[B
    .end local v6    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v8    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    .local v2, "bSuc":I
    :goto_1
    return v2

    .line 230
    .end local v2    # "bSuc":I
    .restart local v1    # "bSuc":Z
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "data":[B
    .restart local v6    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v7    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .restart local v8    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "status":Lorg/apache/http/StatusLine;
    .restart local v12    # "statusCode":I
    :cond_0
    const/4 v1, 0x1

    .line 231
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "data":[B
    .end local v6    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v8    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    :catch_0
    move-exception v5

    .line 236
    .local v5, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 237
    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    .line 238
    const-string v13, "SCGNetThreadPool"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "post error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    .line 241
    .restart local v2    # "bSuc":I
    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;
    .param p3, "sFile"    # Ljava/lang/String;
    .param p4, "sResult"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method
