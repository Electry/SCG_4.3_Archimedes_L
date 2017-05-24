.class public abstract Lcom/tencent/weibo/api/BasicAPI;
.super Ljava/lang/Object;
.source "BasicAPI.java"


# instance fields
.field protected apiBaseUrl:Ljava/lang/String;

.field protected requestAPI:Lcom/tencent/weibo/api/RequestAPI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "OAuthVersion"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    .line 18
    const-string v0, "1.0"

    if-ne p1, v0, :cond_1

    .line 19
    new-instance v0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;

    invoke-direct {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1Request;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 20
    const-string v0, "http://open.t.qq.com/api"

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string v0, "2.a"

    if-ne p1, v0, :cond_0

    .line 22
    new-instance v0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;

    invoke-direct {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 23
    const-string v0, "https://open.t.qq.com/api"

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 1
    .param p1, "OAuthVersion"    # Ljava/lang/String;
    .param p2, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    .line 28
    const-string v0, "1.0"

    if-ne p1, v0, :cond_1

    .line 29
    new-instance v0, Lcom/tencent/weibo/oauthv1/OAuthV1Request;

    invoke-direct {v0, p2}, Lcom/tencent/weibo/oauthv1/OAuthV1Request;-><init>(Lcom/tencent/weibo/utils/QHttpClient;)V

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 30
    const-string v0, "http://open.t.qq.com/api"

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v0, "2.a"

    if-ne p1, v0, :cond_0

    .line 32
    new-instance v0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;

    invoke-direct {v0, p2}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;-><init>(Lcom/tencent/weibo/utils/QHttpClient;)V

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 33
    const-string v0, "https://open.t.qq.com/api"

    iput-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAPIBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->apiBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract setAPIBaseUrl(Ljava/lang/String;)V
.end method

.method public shutdownConnection()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/weibo/api/BasicAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    invoke-interface {v0}, Lcom/tencent/weibo/api/RequestAPI;->shutdownConnection()V

    .line 39
    return-void
.end method
