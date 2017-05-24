.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;
.super Ljava/lang/Object;
.source "PhotoHttpMachine.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;


# static fields
.field private static final CHARACTER_SET:Ljava/lang/String; = "UTF-8"

.field private static self:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;


# instance fields
.field private gzipFlow:J

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private realFlow:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 42
    return-void
.end method

.method private getContentLength(Lorg/apache/http/HttpResponse;)J
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 175
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 176
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 177
    .local v4, "total":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 178
    const-string v3, "X-Lenovows-Content-Length"

    .line 179
    .local v3, "lenovoContentLength":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 180
    .local v1, "header":[Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 181
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 188
    .end local v1    # "header":[Lorg/apache/http/Header;
    .end local v3    # "lenovoContentLength":Ljava/lang/String;
    :cond_0
    return-wide v4

    .line 181
    .restart local v1    # "header":[Lorg/apache/http/Header;
    .restart local v3    # "lenovoContentLength":Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v6

    .line 182
    .local v2, "headerItem":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 183
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 181
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->self:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->self:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->self:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->self:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 125
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public clearFlow()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    .line 108
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    .line 109
    return-void
.end method

.method public get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 6
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v0

    .line 93
    .local v0, "returnData":[B
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object v0

    .line 97
    :cond_0
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    .line 98
    return-object v0
.end method

.method public getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 3
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    .line 88
    .local v0, "returnData":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public getGzipFlow()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    return-wide v0
.end method

.method public getRealFlow()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    return-wide v0
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 8
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->gzip([B)[B

    move-result-object v1

    .line 71
    .local v1, "gzipedData":[B
    :goto_0
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    array-length v3, p2

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    .line 72
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    array-length v3, v1

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    .line 73
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v3, p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B

    move-result-object v2

    .line 74
    .local v2, "returnData":[B
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    array-length v3, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->realFlow:J

    .line 75
    if-eqz p3, :cond_0

    .line 77
    :try_start_0
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    :cond_0
    :goto_1
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    array-length v3, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->gzipFlow:J

    .line 83
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .end local v1    # "gzipedData":[B
    .end local v2    # "returnData":[B
    :cond_1
    move-object v1, p2

    .line 70
    goto :goto_0

    .line 78
    .restart local v1    # "gzipedData":[B
    .restart local v2    # "returnData":[B
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public readContentLength(Ljava/lang/String;)J
    .locals 10
    .param p1, "photoOutsideUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 195
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getImgURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v4

    .line 196
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v6, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 197
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 198
    .local v5, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 199
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Network request fail!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_0
    const/4 v2, 0x0

    .line 203
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getContentLength(Lorg/apache/http/HttpResponse;)J

    move-result-wide v0

    .line 204
    .local v0, "contentLength":J
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 206
    new-array v6, v9, [Ljava/io/Closeable;

    .line 207
    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V

    .line 205
    return-wide v0

    .line 206
    .end local v0    # "contentLength":J
    :catchall_0
    move-exception v6

    new-array v7, v9, [Ljava/io/Closeable;

    .line 207
    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V

    .line 208
    throw v6
.end method

.method public readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V
    .locals 15
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "downUrl"    # Ljava/lang/String;
    .param p5, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v9, 0x0

    .line 131
    .local v9, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "downUrl is empty!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v5, 0x0

    .line 166
    aput-object v9, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 171
    :cond_0
    throw v3

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    .line 135
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 137
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getImgURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v12

    .line 138
    .local v12, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v3, v12}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 139
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    .line 140
    .local v13, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    .line 141
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Network request fail!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-gtz v3, :cond_4

    .line 144
    invoke-direct {p0, v11}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getContentLength(Lorg/apache/http/HttpResponse;)J

    move-result-wide p5

    .line 146
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-gtz v3, :cond_5

    .line 147
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "not fond Content length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_5
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v9

    .line 150
    const/16 v3, 0x2000

    new-array v2, v3, [B

    .line 151
    .local v2, "buf":[B
    const/4 v10, 0x0

    .line 152
    .local v10, "len":I
    const/4 v14, 0x0

    .line 153
    .local v14, "writeLen":I
    :cond_6
    :goto_0
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v3, -0x1

    if-gt v10, v3, :cond_7

    .line 162
    int-to-long v4, v14

    cmp-long v3, v4, p5

    if-eqz v3, :cond_8

    .line 163
    new-instance v3, Ljava/io/IOException;

    const-string v4, "download file has not been completed!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    add-int/2addr v14, v10

    .line 157
    if-eqz p1, :cond_6

    .line 158
    int-to-long v4, v14

    move-object/from16 v3, p1

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 166
    aput-object v9, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V

    .line 168
    if-eqz p1, :cond_9

    .line 169
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 172
    :cond_9
    return-void
.end method
