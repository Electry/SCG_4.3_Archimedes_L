.class public Lcom/lenovo/scg/common/utils/net/HttpManagers;
.super Ljava/lang/Object;
.source "HttpManagers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final END_MP_BOUNDARY:Ljava/lang/String;

.field public static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field public static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field private static final MP_BOUNDARY:Ljava/lang/String;

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final SET_CONNECTION_TIMEOUT:I = 0x1388

.field private static final SET_SOCKET_TIMEOUT:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/net/HttpManagers;->MP_BOUNDARY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/net/HttpManagers;->END_MP_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method static getBoundry()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v0, "_sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "t":I
    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_2

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 319
    .local v2, "time":J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 320
    long-to-int v4, v2

    int-to-char v4, v4

    rem-int/lit8 v4, v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 322
    const-wide/16 v4, 0x41

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 324
    :cond_1
    const-wide/16 v4, 0x61

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 327
    .end local v2    # "time":J
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 11

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 157
    .local v6, "trustStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 159
    new-instance v5, Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/common/utils/net/HttpManagers$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 160
    .local v5, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 162
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 164
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 165
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 167
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 168
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 170
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 171
    .local v4, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 172
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 174
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 176
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    const/16 v7, 0x1388

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 177
    const/16 v7, 0x4e20

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 178
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static imageContentToUpload(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "imgpath"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v4, "temp":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/lenovo/scg/common/utils/net/HttpManagers;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v5, "Content-Disposition: form-data; name=\"pic\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "news_image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v2, "image/png"

    .line 471
    .local v2, "filetype":Ljava/lang/String;
    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 473
    .local v3, "res":[B
    const/4 v0, 0x0

    .line 475
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 476
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {p1, v5, v6, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 477
    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/common/utils/net/HttpManagers;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    if-eqz v0, :cond_0

    .line 484
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :cond_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 479
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 480
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 484
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 486
    :cond_1
    throw v5

    .line 485
    :catch_2
    move-exception v1

    .line 486
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method private static imageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "imgpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v7, "temp":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/lenovo/scg/common/utils/net/HttpManagers;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v8, "Content-Disposition: form-data; name=\"pic\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "news_image"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, "image/png"

    .line 253
    .local v3, "filetype":Ljava/lang/String;
    const-string v8, "Content-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 255
    .local v6, "res":[B
    const/4 v4, 0x0

    .line 257
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 258
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    const v8, 0xc800

    :try_start_1
    new-array v0, v8, [B

    .line 261
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 262
    .local v1, "count":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 267
    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/common/utils/net/HttpManagers;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    if-eqz v5, :cond_0

    .line 274
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 265
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 269
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 270
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_3

    .line 274
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 276
    :cond_3
    throw v8

    .line 275
    :catch_2
    move-exception v2

    .line 276
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 269
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v22, "ShareCenter"

    const-string/jumbo v23, "openUrl   begin"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 94
    .local v6, "beginTime":J
    const-string v19, ""

    .line 96
    .local v19, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    .line 97
    .local v8, "client":Lorg/apache/http/client/HttpClient;
    const/16 v17, 0x0

    .line 98
    .local v17, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v5, 0x0

    .line 99
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    const-string v23, "http.route.default-proxy"

    invoke-static {}, Lcom/lenovo/scg/common/utils/net/NetStateManagers;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 100
    const-string v22, "GET"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 101
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 103
    .local v14, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v17, v14

    .line 135
    .end local v14    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    const-string v22, "ShareCenter"

    const-string v23, "client.execute(request)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 137
    .local v18, "response":Lorg/apache/http/HttpResponse;
    const-string v22, "ShareCenter"

    const-string v23, "client.execute(request)  end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 139
    .local v20, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 141
    .local v21, "statusCode":I
    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 142
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v19

    .line 143
    new-instance v22, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v22
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "client":Lorg/apache/http/client/HttpClient;
    .end local v17    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v21    # "statusCode":I
    :catch_0
    move-exception v10

    .line 150
    .local v10, "e":Ljava/io/IOException;
    new-instance v22, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v22

    .line 104
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v17    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_1
    const-string v22, "POST"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 105
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 106
    .local v15, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v17, v15

    .line 107
    const/4 v9, 0x0

    .line 108
    .local v9, "data":[B
    const-string v22, "content-type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "_contentType":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 112
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 113
    const-string v22, "Content-Type"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "multipart/form-data; boundary="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->imageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 128
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 129
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 130
    new-instance v11, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v11, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 131
    .local v11, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v15, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 117
    .end local v11    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    if-eqz v4, :cond_3

    .line 118
    const-string v22, "content-type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 119
    const-string v22, "Content-Type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v16

    .line 125
    .local v16, "postParam":Ljava/lang/String;
    const-string v22, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 126
    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 121
    .end local v16    # "postParam":Ljava/lang/String;
    :cond_3
    const-string v22, "Content-Type"

    const-string v23, "application/x-www-form-urlencoded"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    .end local v4    # "_contentType":Ljava/lang/String;
    .end local v9    # "data":[B
    .end local v15    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    const-string v22, "DELETE"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 133
    new-instance v17, Lorg/apache/http/client/methods/HttpDelete;

    .end local v17    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v17    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 145
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v21    # "statusCode":I
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v19

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 147
    .local v12, "endTime":J
    const-string v22, "ShareCenter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "upload time     :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-long v24, v12, v6

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    return-object v19
.end method

.method public static openUrl_extended_byliuzw(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v15, ""

    .line 401
    .local v15, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 402
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v13, 0x0

    .line 403
    .local v13, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 404
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v18, "GET"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 405
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 407
    .local v9, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v13, v9

    .line 433
    .end local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 434
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 435
    .local v16, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 437
    .local v17, "statusCode":I
    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 438
    invoke-static {v14}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 439
    const/4 v6, 0x0

    .line 440
    .local v6, "err":Ljava/lang/String;
    const/4 v7, 0x0

    .line 442
    .local v7, "errCode":I
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    .local v10, "json":Lorg/json/JSONObject;
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 444
    const-string v18, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 448
    .end local v10    # "json":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    new-instance v18, Lcom/weibo/sdk/android/WeiboException;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "err":Ljava/lang/String;
    .end local v7    # "errCode":I
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "status":Lorg/apache/http/StatusLine;
    .end local v17    # "statusCode":I
    :catch_0
    move-exception v5

    .line 454
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 408
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_3
    const-string v18, "POST"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 409
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 410
    .local v11, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 411
    .local v4, "data":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    const v18, 0xc800

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 412
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_2

    .line 413
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 414
    const-string v18, "Content-Type"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "multipart/form-data; boundary="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->imageContentToUpload(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V

    .line 423
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 424
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 426
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 427
    .local v8, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v11, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 428
    move-object v13, v11

    .line 429
    goto/16 :goto_0

    .line 418
    .end local v8    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    const-string v18, "Content-Type"

    const-string v19, "application/x-www-form-urlencoded"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "postParam":Ljava/lang/String;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 421
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 429
    .end local v4    # "data":[B
    .end local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "postParam":Ljava/lang/String;
    :cond_3
    const-string v18, "DELETE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 430
    new-instance v13, Lorg/apache/http/client/methods/HttpDelete;

    .end local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 445
    .restart local v6    # "err":Ljava/lang/String;
    .restart local v7    # "errCode":I
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "status":Lorg/apache/http/StatusLine;
    .restart local v17    # "statusCode":I
    :catch_1
    move-exception v5

    .line 446
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 451
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "err":Ljava/lang/String;
    .end local v7    # "errCode":I
    :cond_4
    invoke-static {v14}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .line 452
    return-object v15
.end method

.method public static openUrl_gif(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v15, ""

    .line 337
    .local v15, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 338
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v13, 0x0

    .line 339
    .local v13, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 340
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v18, "GET"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 341
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 343
    .local v9, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v13, v9

    .line 373
    .end local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 374
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 375
    .local v16, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 377
    .local v17, "statusCode":I
    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 378
    invoke-static {v14}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, "err":Ljava/lang/String;
    const/4 v7, 0x0

    .line 382
    .local v7, "errCode":I
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    .local v10, "json":Lorg/json/JSONObject;
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    const-string v18, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 388
    .end local v10    # "json":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    new-instance v18, Lcom/weibo/sdk/android/WeiboException;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "err":Ljava/lang/String;
    .end local v7    # "errCode":I
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "status":Lorg/apache/http/StatusLine;
    .end local v17    # "statusCode":I
    :catch_0
    move-exception v5

    .line 394
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 344
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_3
    const-string v18, "POST"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 345
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 346
    .local v11, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 347
    .local v4, "data":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    const v18, 0xc800

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 348
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 349
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 350
    const-string v18, "HttpManager"

    const-string v19, "Content-Type--------image/gif"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v18, "Content-Type"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "multipart/form-data; boundary="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/lenovo/scg/common/utils/net/HttpManagers;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->gifImageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 363
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 364
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 366
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 367
    .local v8, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v11, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 368
    move-object v13, v11

    .line 369
    goto/16 :goto_0

    .line 358
    .end local v8    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    const-string v18, "Content-Type"

    const-string v19, "application/x-www-form-urlencoded"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "postParam":Ljava/lang/String;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 361
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 369
    .end local v4    # "data":[B
    .end local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "postParam":Ljava/lang/String;
    :cond_3
    const-string v18, "DELETE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 370
    new-instance v13, Lorg/apache/http/client/methods/HttpDelete;

    .end local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 385
    .restart local v6    # "err":Ljava/lang/String;
    .restart local v7    # "errCode":I
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "status":Lorg/apache/http/StatusLine;
    .restart local v17    # "statusCode":I
    :catch_1
    move-exception v5

    .line 386
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 391
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "err":Ljava/lang/String;
    .end local v7    # "errCode":I
    :cond_4
    invoke-static {v14}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .line 392
    return-object v15
.end method

.method private static paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V
    .locals 7
    .param p0, "baos"    # Ljava/io/OutputStream;
    .param p1, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v1, ""

    .line 228
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "loc":I
    :goto_0
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 229
    invoke-virtual {p1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v4, "temp":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    sget-object v5, Lcom/lenovo/scg/common/utils/net/HttpManagers;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, "content-disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 237
    .local v3, "res":[B
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v0}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "res":[B
    .end local v4    # "temp":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private static readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v11, -0x1

    .line 289
    const-string v6, ""

    .line 290
    .local v6, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 293
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 294
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {p0, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 297
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v11, :cond_0

    .line 298
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    move-object v3, v4

    .line 301
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v5, 0x0

    .line 302
    .local v5, "readBytes":I
    const/16 v9, 0x200

    new-array v8, v9, [B

    .line 303
    .local v8, "sBuffer":[B
    :goto_0
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 304
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 308
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "readBytes":I
    .end local v8    # "sBuffer":[B
    :catch_0
    move-exception v9

    :goto_1
    move-object v7, v6

    .line 309
    .end local v6    # "result":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 306
    .restart local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "header":Lorg/apache/http/Header;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "readBytes":I
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "sBuffer":[B
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "result":Ljava/lang/String;
    .local v7, "result":Ljava/lang/String;
    move-object v6, v7

    .line 307
    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_2

    .line 308
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "readBytes":I
    .end local v8    # "sBuffer":[B
    :catch_1
    move-exception v9

    goto :goto_1
.end method
