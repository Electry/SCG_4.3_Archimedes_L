.class public Lcom/tencent/weibo/oauthv1/OAuthV1Client;
.super Ljava/lang/Object;
.source "OAuthV1Client.java"


# static fields
.field private static Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final hashAlgorithmName:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "OAuthV1Client.class"

    sput-object v0, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    sput-object v0, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static accessToken(Lcom/tencent/weibo/oauthv1/OAuthV1;)Lcom/tencent/weibo/oauthv1/OAuthV1;
    .locals 7
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv1/OAuthV1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v4, "1001"

    invoke-direct {v3, v4}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Getting Access Token ...... \n RequestToken = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nOauthVerifier = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthVerifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v2, "https://open.t.qq.com/cgi-bin/access_token"

    .line 147
    .local v2, "url":Ljava/lang/String;
    const-string v3, "GET"

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthConsumerSecret()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getAccessParams()Ljava/util/List;

    move-result-object v6

    .line 147
    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "queryString":Ljava/lang/String;
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accessToken queryString = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accessToken url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v3, v2, v0}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "responseData":Ljava/lang/String;
    sget-object v3, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accessToken responseData = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v1, p0}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->parseToken(Ljava/lang/String;Lcom/tencent/weibo/oauthv1/OAuthV1;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setStatus(I)V

    .line 160
    :cond_1
    return-object p0
.end method

.method public static generateAuthorizationURL(Lcom/tencent/weibo/oauthv1/OAuthV1;)Ljava/lang/String;
    .locals 2
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv1/OAuthV1;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://open.t.qq.com/cgi-bin/authorize?oauth_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 275
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 276
    if-nez p2, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "oAuthSignature":Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 282
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 284
    .local v0, "bytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/weibo/oauthv1/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 287
    .end local v0    # "bytes":[B
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .end local v2    # "oAuthSignature":Ljava/lang/String;
    .end local v3    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_1
    return-object v4

    .line 276
    .restart local v1    # "mac":Ljavax/crypto/Mac;
    :cond_0
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 285
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v4

    .line 287
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static generateSignature(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessTokenSecret"    # Ljava/lang/String;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 260
    .local p4, "queryParamsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0, p3, p4}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->generateSignatureBase(Ljava/net/URL;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "base":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static generateSignatureBase(Ljava/net/URL;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, "queryParamsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, "base":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getNormalizedUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNormalizedUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 323
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v1

    .line 330
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "tokenSecrect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    .local p4, "queryParamsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client$1;

    invoke-direct {v2}, Lcom/tencent/weibo/oauthv1/OAuthV1Client$1;-><init>()V

    .line 185
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    move-object v6, p0

    .line 190
    .local v6, "urlWithParameter":Ljava/lang/String;
    invoke-static {p4}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "queryString":Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, "aUrl":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "aUrl":Ljava/net/URL;
    .local v1, "aUrl":Ljava/net/URL;
    move-object v0, v1

    .line 202
    .end local v1    # "aUrl":Ljava/net/URL;
    .restart local v0    # "aUrl":Ljava/net/URL;
    :goto_0
    invoke-static {v0, p2, p3, p1, p4}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->generateSignature(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "signature":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&oauth_signature="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    return-object v4

    .line 198
    .end local v5    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Ljava/net/MalformedURLException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "URL parse error:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getQHttpClient()Lcom/tencent/weibo/utils/QHttpClient;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    return-object v0
.end method

.method public static parseAuthorization(Ljava/lang/String;Lcom/tencent/weibo/oauthv1/OAuthV1;)Z
    .locals 12
    .param p0, "responseData"    # Ljava/lang/String;
    .param p1, "oAuth"    # Lcom/tencent/weibo/oauthv1/OAuthV1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setStatus(I)V

    .line 85
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 86
    const/4 v9, 0x0

    .line 128
    :goto_0
    return v9

    .line 89
    :cond_0
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setMsg(Ljava/lang/String;)V

    .line 90
    const-string v9, "&"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "tokenArray":[Ljava/lang/String;
    sget-object v9, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseToken response=>> tokenArray.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    array-length v9, v8

    const/4 v10, 0x4

    if-ge v9, v10, :cond_1

    .line 95
    const/4 v9, 0x0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 99
    .local v4, "strOAuthToken":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v5, v8, v9

    .line 100
    .local v5, "strOauthVerifier":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v6, v8, v9

    .line 101
    .local v6, "strOpenid":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v7, v8, v9

    .line 103
    .local v7, "strOpenkey":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "oAuthToken":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 105
    const/4 v9, 0x0

    goto :goto_0

    .line 107
    :cond_2
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthToken(Ljava/lang/String;)V

    .line 109
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "oauthVerifier":[Ljava/lang/String;
    array-length v9, v1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 111
    const/4 v9, 0x0

    goto :goto_0

    .line 113
    :cond_3
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthVerifier(Ljava/lang/String;)V

    .line 115
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "openid":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_4

    .line 117
    const/4 v9, 0x0

    goto :goto_0

    .line 119
    :cond_4
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOpenid(Ljava/lang/String;)V

    .line 121
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "openkey":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 123
    const/4 v9, 0x0

    goto :goto_0

    .line 125
    :cond_5
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOpenkey(Ljava/lang/String;)V

    .line 127
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setStatus(I)V

    .line 128
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static parseToken(Ljava/lang/String;Lcom/tencent/weibo/oauthv1/OAuthV1;)Z
    .locals 11
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "oAuth"    # Lcom/tencent/weibo/oauthv1/OAuthV1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v5

    .line 222
    :cond_1
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setMsg(Ljava/lang/String;)V

    .line 223
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "tokenArray":[Ljava/lang/String;
    sget-object v7, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseToken response=>> tokenArray.length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    array-length v7, v3

    if-lt v7, v10, :cond_0

    .line 230
    aget-object v0, v3, v5

    .line 231
    .local v0, "strTokenKey":Ljava/lang/String;
    aget-object v1, v3, v6

    .line 233
    .local v1, "strTokenSecrect":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "token":[Ljava/lang/String;
    array-length v7, v2

    if-lt v7, v10, :cond_0

    .line 237
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthToken(Ljava/lang/String;)V

    .line 239
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "tokenSecrect":[Ljava/lang/String;
    array-length v7, v4

    if-lt v7, v10, :cond_0

    .line 243
    aget-object v5, v4, v6

    invoke-virtual {p1, v5}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthTokenSecret(Ljava/lang/String;)V

    move v5, v6

    .line 245
    goto :goto_0
.end method

.method public static requestToken(Lcom/tencent/weibo/oauthv1/OAuthV1;)Lcom/tencent/weibo/oauthv1/OAuthV1;
    .locals 7
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv1/OAuthV1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    const-string v2, "https://open.t.qq.com/cgi-bin/request_token"

    const-string v3, "GET"

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthConsumerSecret()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 52
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getParamsList()Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "queryString":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestToken queryString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    const-string v3, "https://open.t.qq.com/cgi-bin/request_token"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "responseData":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestToken responseData = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v1, p0}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->parseToken(Ljava/lang/String;Lcom/tencent/weibo/oauthv1/OAuthV1;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setStatus(I)V

    .line 60
    sget-object v2, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestToken past !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    return-object p0
.end method

.method public static setQHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p0, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 338
    sput-object p0, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    .line 339
    return-void
.end method
