.class public Lcom/tencent/weibo/api/UserAPI;
.super Lcom/tencent/weibo/api/BasicAPI;
.source "UserAPI.java"


# instance fields
.field private userInfoUrl:Ljava/lang/String;

.field private userInfosUrl:Ljava/lang/String;

.field private userOtherInfoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfoUrl:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/other_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userOtherInfoUrl:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/infos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfosUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;
    .param p2, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfoUrl:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/other_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userOtherInfoUrl:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/infos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfosUrl:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public info(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 47
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 49
    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v2, p0, Lcom/tencent/weibo/api/UserAPI;->userInfoUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public infos(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "names"    # Ljava/lang/String;
    .param p4, "fopenids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 91
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 92
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "names"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 93
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fopenids"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 95
    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v2, p0, Lcom/tencent/weibo/api/UserAPI;->userInfosUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public otherInfo(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "fopenid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 67
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 68
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 69
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fopenid"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 71
    iget-object v1, p0, Lcom/tencent/weibo/api/UserAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v2, p0, Lcom/tencent/weibo/api/UserAPI;->userOtherInfoUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setAPIBaseUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiBaseUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/weibo/api/UserAPI;->apiBaseUrl:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfoUrl:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/other_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userOtherInfoUrl:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/user/infos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/UserAPI;->userInfosUrl:Ljava/lang/String;

    .line 103
    return-void
.end method
