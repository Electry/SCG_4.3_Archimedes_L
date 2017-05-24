.class public Lcom/tencent/weibo/oauthv1/OAuthV1Request;
.super Ljava/lang/Object;
.source "OAuthV1Request.java"

# interfaces
.implements Lcom/tencent/weibo/api/RequestAPI;


# instance fields
.field private qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p1, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 30
    return-void
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
    .line 34
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 37
    check-cast v0, Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 38
    .local v0, "oAuthV1":Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    const-string v2, "GET"

    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {p1, v2, v3, v4, p2}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "queryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getqHttpClient()Lcom/tencent/weibo/utils/QHttpClient;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

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
    .line 47
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 50
    check-cast v0, Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 51
    .local v0, "oAuthV1":Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    const-string v2, "POST"

    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {p1, v2, v3, v4, p2}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "queryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public postFile(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 5
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
    .line 62
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object v0, p4

    check-cast v0, Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 63
    .local v0, "oAuthV1":Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    const-string v2, "POST"

    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {p1, v2, v3, v4, p2}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getOauthParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "queryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1, p3}, Lcom/tencent/weibo/utils/QHttpClient;->httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setqHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p1, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 85
    return-void
.end method

.method public shutdownConnection()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v0}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 77
    return-void
.end method
