.class public Lcom/tencent/weibo/oauthv2/OAuthV2Request;
.super Ljava/lang/Object;
.source "OAuthV2Request.java"

# interfaces
.implements Lcom/tencent/weibo/api/RequestAPI;


# instance fields
.field private qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p1, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 33
    return-void
.end method

.method private removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V
    .locals 6
    .param p2, "oAuthV2"    # Lcom/tencent/weibo/oauthv2/OAuthV2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/oauthv2/OAuthV2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 53
    .local v1, "i":I
    const/4 v0, 0x0

    .line 54
    .local v0, "found":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 55
    .local v2, "nvp":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientip"

    if-eq v4, v5, :cond_2

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "127.0.0.1"

    if-eq v3, v4, :cond_3

    .line 59
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientIP(Ljava/lang/String;)V

    .line 61
    :cond_3
    const/4 v0, 0x1

    .line 62
    goto :goto_1
.end method


# virtual methods
.method public getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string/jumbo v2, "tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OAuthV2Request: getResource : url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "========= oAuth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 41
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 42
    .local v0, "oAuthV2":Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 44
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "queryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getqHttpClient()Lcom/tencent/weibo/utils/QHttpClient;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    return-object v0
.end method

.method public postContent(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string/jumbo v2, "tencent"

    const-string v3, "OAuthV2Request: postContent: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 74
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 75
    .local v0, "oAuthV2":Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 77
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "queryString":Ljava/lang/String;
    const-string/jumbo v2, "tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OAuthV2Request: postContent: url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", queryString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public postFile(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p4

    .line 94
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 95
    .local v0, "oAuthV2":Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 97
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "queryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1, p3}, Lcom/tencent/weibo/utils/QHttpClient;->httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setqHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p1, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 119
    return-void
.end method

.method public shutdownConnection()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v0}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 111
    return-void
.end method
