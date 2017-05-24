.class public Lcom/tencent/weibo/api/SearchAPI;
.super Lcom/tencent/weibo/api/BasicAPI;
.source "SearchAPI.java"


# instance fields
.field private searchTUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/SearchAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/search/t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/SearchAPI;->searchTUrl:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;
    .param p2, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/SearchAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/search/t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/SearchAPI;->searchTUrl:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public setAPIBaseUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiBaseUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/weibo/api/SearchAPI;->apiBaseUrl:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/search/t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/SearchAPI;->searchTUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public t(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "pagesize"    # Ljava/lang/String;
    .param p5, "page"    # Ljava/lang/String;
    .param p6, "contenttype"    # Ljava/lang/String;
    .param p7, "sorttype"    # Ljava/lang/String;
    .param p8, "msgtype"    # Ljava/lang/String;
    .param p9, "searchtype"    # Ljava/lang/String;
    .param p10, "starttime"    # Ljava/lang/String;
    .param p11, "endtime"    # Ljava/lang/String;
    .param p12, "province"    # Ljava/lang/String;
    .param p13, "city"    # Ljava/lang/String;
    .param p14, "longitue"    # Ljava/lang/String;
    .param p15, "latitude"    # Ljava/lang/String;
    .param p16, "radius"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v1}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 66
    .local v1, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "format"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 67
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "keyword"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 68
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "pagesize"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 69
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "page"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 70
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contenttype"

    invoke-direct {v2, v3, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 71
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "sorttype"

    invoke-direct {v2, v3, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 72
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "msgtype"

    invoke-direct {v2, v3, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 73
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "searchtype"

    invoke-direct {v2, v3, p9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 74
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "starttime"

    invoke-direct {v2, v3, p10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 75
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "endtime"

    invoke-direct {v2, v3, p11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 76
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "province"

    move-object/from16 v0, p12

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 77
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "city"

    move-object/from16 v0, p13

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 78
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "longitue"

    move-object/from16 v0, p14

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 79
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "latitude"

    move-object/from16 v0, p15

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 80
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "radius"

    move-object/from16 v0, p16

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 82
    iget-object v2, p0, Lcom/tencent/weibo/api/SearchAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v3, p0, Lcom/tencent/weibo/api/SearchAPI;->searchTUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
