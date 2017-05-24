.class public Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;
.super Ljava/lang/Object;
.source "UrlDataReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final READ_LENGTH:I = 0x400

.field private static final RET_SUCCESS:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "panhui4_UrlDataReader"

.field private static final TIME_OUT_CONNECT:I = 0x7530

.field private static final TIME_OUT_READ:I = 0x7530


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->mUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->mUrl:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->mUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "sURL"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 151
    .local v1, "bytes":[B
    const/4 v0, 0x0

    .line 152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 153
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_1
    return-object v0
.end method

.method public static getNetBytes(Ljava/lang/String;)[B
    .locals 14
    .param p0, "sURL"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "len":I
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 102
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 103
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 104
    .local v5, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 106
    .local v3, "imageUrl":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "imageUrl":Ljava/net/URL;
    .local v4, "imageUrl":Ljava/net/URL;
    move-object v3, v4

    .line 110
    .end local v4    # "imageUrl":Ljava/net/URL;
    .restart local v3    # "imageUrl":Ljava/net/URL;
    :goto_0
    if-nez v3, :cond_1

    .line 144
    :cond_0
    :goto_1
    return-object v10

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 117
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 120
    const-string v11, "Content-Type"

    const-string/jumbo v12, "text/html"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/16 v11, 0x7530

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 122
    const/16 v11, 0x7530

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 125
    .local v9, "responseCode":I
    const/16 v11, 0xc8

    if-ne v9, v11, :cond_3

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 127
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 140
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 141
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "responseCode":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    goto :goto_1

    .line 131
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "responseCode":I
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    .line 137
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 140
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "responseCode":I
    :catch_2
    move-exception v2

    goto :goto_3

    .line 134
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "responseCode":I
    :cond_3
    const-string/jumbo v11, "panhui4_UrlDataReader"

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
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5
.end method


# virtual methods
.method getXMLData()Ljava/lang/String;
    .locals 12

    .prologue
    .line 49
    const-string v7, ""

    .line 52
    .local v7, "sData":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->mUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 57
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 59
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    const-string v9, "Content-Type"

    const-string/jumbo v10, "text/html"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 62
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 64
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 65
    .local v6, "responseCode":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_1

    .line 68
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 71
    .local v4, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v3, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    .local v3, "inReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 76
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 87
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "inReader":Ljava/io/InputStreamReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    return-object v7

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "panhui4_UrlDataReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getXMLData exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "sUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->mUrl:Ljava/lang/String;

    .line 45
    return-void
.end method
