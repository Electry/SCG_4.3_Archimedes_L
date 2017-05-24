.class public Lcom/tencent/weibo/api/StatusesAPI;
.super Lcom/tencent/weibo/api/BasicAPI;
.source "StatusesAPI.java"


# instance fields
.field private statusesBroadcastTimelineUrl:Ljava/lang/String;

.field private statusesHomeTimelineUrl:Ljava/lang/String;

.field private statusesMentionsTimelineUrl:Ljava/lang/String;

.field private statusesUSERTimelineUrl:Ljava/lang/String;

.field private statusesUserTimelineIdsUrl:Ljava/lang/String;

.field private statusesUsersTimelineUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/home_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesHomeTimelineUrl:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUSERTimelineUrl:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/mentions_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesMentionsTimelineUrl:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/broadcast_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesBroadcastTimelineUrl:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline_ids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUserTimelineIdsUrl:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/users_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUsersTimelineUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 2
    .param p1, "OAuthVersion"    # Ljava/lang/String;
    .param p2, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tencent/weibo/api/BasicAPI;-><init>(Ljava/lang/String;Lcom/tencent/weibo/utils/QHttpClient;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/home_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesHomeTimelineUrl:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUSERTimelineUrl:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/mentions_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesMentionsTimelineUrl:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/broadcast_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesBroadcastTimelineUrl:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline_ids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUserTimelineIdsUrl:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/users_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUsersTimelineUrl:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public broadcastTimeline(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "lastid"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 157
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 158
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 159
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 160
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 161
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lastid"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 162
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 163
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 165
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 166
    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesBroadcastTimelineUrl:Ljava/lang/String;

    .line 165
    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public homeTimeline(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 56
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 57
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 58
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 59
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 60
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 61
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 63
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesHomeTimelineUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public mentionsTimeline(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "lastid"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 125
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 126
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 127
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 128
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 129
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lastid"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 130
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 131
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 133
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 134
    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesMentionsTimelineUrl:Ljava/lang/String;

    .line 133
    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setAPIBaseUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiBaseUrl"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tencent/weibo/api/StatusesAPI;->apiBaseUrl:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/home_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesHomeTimelineUrl:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUSERTimelineUrl:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/mentions_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesMentionsTimelineUrl:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/broadcast_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesBroadcastTimelineUrl:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/user_timeline_ids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUserTimelineIdsUrl:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/statuses/users_timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUsersTimelineUrl:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public userTimeline(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "lastid"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "fopenid"    # Ljava/lang/String;
    .param p9, "type"    # Ljava/lang/String;
    .param p10, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 90
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 91
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 92
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 93
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 94
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lastid"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 95
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 96
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fopenid"

    invoke-direct {v1, v2, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 97
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 98
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 100
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUSERTimelineUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public userTimelineIds(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "lastid"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "fopenid"    # Ljava/lang/String;
    .param p9, "type"    # Ljava/lang/String;
    .param p10, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 192
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 193
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 194
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 195
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 196
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lastid"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 197
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 198
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fopenid"

    invoke-direct {v1, v2, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 199
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 200
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 202
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 203
    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUserTimelineIdsUrl:Ljava/lang/String;

    .line 202
    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public usersTimeline(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pageflag"    # Ljava/lang/String;
    .param p4, "pagetime"    # Ljava/lang/String;
    .param p5, "reqnum"    # Ljava/lang/String;
    .param p6, "lastid"    # Ljava/lang/String;
    .param p7, "names"    # Ljava/lang/String;
    .param p8, "fopenids"    # Ljava/lang/String;
    .param p9, "type"    # Ljava/lang/String;
    .param p10, "contenttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 229
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 230
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pagetime"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 231
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "pageflag"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 232
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "reqnum"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 233
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lastid"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 234
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "names"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 235
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fopenids"

    invoke-direct {v1, v2, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 236
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v2, p9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 237
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "contenttype"

    invoke-direct {v1, v2, p10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 239
    iget-object v1, p0, Lcom/tencent/weibo/api/StatusesAPI;->requestAPI:Lcom/tencent/weibo/api/RequestAPI;

    .line 240
    iget-object v2, p0, Lcom/tencent/weibo/api/StatusesAPI;->statusesUsersTimelineUrl:Ljava/lang/String;

    .line 239
    invoke-interface {v1, v2, v0, p1}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
