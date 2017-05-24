.class public Lcom/baidu/idl/lib/network/HttpCloudClient;
.super Ljava/lang/Object;
.source "HttpCloudClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;
    }
.end annotation


# static fields
.field protected static final CONNECTION_TIMEOUT:I = 0xea60

.field protected static final HTTPS_PORT:I = 0x1bb

.field protected static final HTTPS_PORT2:I = 0x20fb

.field protected static final HTTP_PORT:I = 0x50

.field protected static final MAX_ROUTE_CONN:I = 0x32

.field protected static final MAX_TOTAL_CONNECTIONS:I = 0x64

.field protected static final SOCKET_CONNECTION_TIMEOUT:I = 0x4e20


# instance fields
.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected useSSL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->useSSL:Z

    .line 58
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpCloudClient;->initClient()V

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "ssl"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->useSSL:Z

    .line 62
    iput-boolean p1, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->useSSL:Z

    .line 63
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpCloudClient;->initClient()V

    .line 64
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 187
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->clearRequestInterceptors()V

    .line 180
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->clearResponseInterceptors()V

    .line 182
    return-void
.end method

.method public excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)[B
    .locals 9
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v5, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 194
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const-string v5, "Cache-Control"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 195
    .local v3, "headers":[Lorg/apache/http/Header;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 200
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 201
    .local v0, "bytes":[B
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 203
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 204
    .local v1, "code":I
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 208
    return-object v0

    .line 195
    .end local v0    # "bytes":[B
    .end local v1    # "code":I
    :cond_0
    aget-object v2, v3, v5

    .line 196
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "no-cache"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    const-string v7, "cache_pic"

    const-string/jumbo v8, "true"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "header":Lorg/apache/http/Header;
    .restart local v0    # "bytes":[B
    .restart local v1    # "code":I
    :cond_2
    iget-object v5, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 211
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected initClient()V
    .locals 10

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 71
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpCloudClient;->initParams(Lorg/apache/http/params/HttpParams;)V

    .line 72
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 73
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    .line 74
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 73
    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 76
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 77
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 79
    new-instance v4, Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/baidu/idl/lib/network/HttpCloudClient$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 80
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v6, Lcom/baidu/idl/lib/network/HttpCloudClient$1;

    invoke-direct {v6, p0}, Lcom/baidu/idl/lib/network/HttpCloudClient$1;-><init>(Lcom/baidu/idl/lib/network/HttpCloudClient;)V

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 107
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 135
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 137
    .local v2, "manager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v6, p0, Lcom/baidu/idl/lib/network/HttpCloudClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 159
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "manager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3
    move-exception v0

    .line 150
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public initParams(Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 167
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 168
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 169
    const/16 v1, 0x64

    invoke-static {p1, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 171
    const v1, 0xea60

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 172
    const/16 v1, 0x4e20

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 173
    const/16 v1, 0x800

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 174
    const-wide/32 v2, 0xea60

    invoke-static {p1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 176
    return-void
.end method
