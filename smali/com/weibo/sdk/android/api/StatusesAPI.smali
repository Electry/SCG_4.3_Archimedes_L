.class public Lcom/weibo/sdk/android/api/StatusesAPI;
.super Lcom/weibo/sdk/android/api/WeiboAPI;
.source "StatusesAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://upload.api.weibo.com/2/statuses"


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 15
    return-void
.end method


# virtual methods
.method public bilateralTimeline(JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 5
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p9, "trim_user"    # Z
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 434
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 435
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 436
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 437
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 438
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 439
    if-eqz p7, :cond_0

    .line 440
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 444
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 445
    if-eqz p9, :cond_1

    .line 446
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 450
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/bilateral_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 452
    return-void

    .line 442
    :cond_0
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 448
    :cond_1
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public count([Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 8
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 613
    new-instance v4, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v4}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 614
    .local v4, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v5, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 616
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 619
    const-string v6, "ids"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v6, "https://upload.api.weibo.com/2/statuses/count.json"

    const-string v7, "GET"

    invoke-virtual {p0, v6, v4, v7, p2}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 621
    return-void
.end method

.method public destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 647
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 648
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 649
    const-string v1, "https://upload.api.weibo.com/2/statuses/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 650
    return-void
.end method

.method public emotions(Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;Lcom/weibo/sdk/android/api/WeiboAPI$LANGUAGE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "type"    # Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;
    .param p2, "language"    # Lcom/weibo/sdk/android/api/WeiboAPI$LANGUAGE;
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 726
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 727
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "language"

    invoke-virtual {p2}, Lcom/weibo/sdk/android/api/WeiboAPI$LANGUAGE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "https://upload.api.weibo.com/2/emotions.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 730
    return-void
.end method

.method public friendsTimeline(JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 5
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p9, "trim_user"    # Z
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 56
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 57
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 58
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 59
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 60
    if-eqz p7, :cond_0

    .line 61
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 65
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 66
    if-eqz p9, :cond_1

    .line 67
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 71
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/friends_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 72
    return-void

    .line 63
    :cond_0
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public friendsTimelineIds(JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p9, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 84
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 85
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 86
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 87
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 89
    if-eqz p7, :cond_0

    .line 90
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 94
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 95
    const-string v1, "https://upload.api.weibo.com/2/statuses/friends_timeline/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p9}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 96
    return-void

    .line 92
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public homeTimeline(JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 5
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p9, "trim_user"    # Z
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 113
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 114
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 115
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 116
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 117
    if-eqz p7, :cond_0

    .line 118
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 122
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 123
    if-eqz p9, :cond_1

    .line 124
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 128
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/home_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 129
    return-void

    .line 120
    :cond_0
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public hotCommentsDaily(IZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "base_app"    # Z
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 576
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 577
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 578
    if-eqz p2, :cond_0

    .line 579
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 583
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/hot/comments_daily.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 585
    return-void

    .line 581
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public hotCommentsWeekly(IZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "base_app"    # Z
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 595
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 596
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 597
    if-eqz p2, :cond_0

    .line 598
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 602
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/hot/comments_weekly.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 604
    return-void

    .line 600
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public hotRepostDaily(IZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "base_app"    # Z
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 539
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 540
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 546
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/hot/repost_daily.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 547
    return-void

    .line 544
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public hotRepostWeekly(IZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "base_app"    # Z
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 557
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 558
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 559
    if-eqz p2, :cond_0

    .line 560
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 564
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/hot/repost_weekly.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 566
    return-void

    .line 562
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public mentions(JJIILcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "filter_by_author"    # Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;
    .param p8, "filter_by_source"    # Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;
    .param p9, "filter_by_type"    # Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;
    .param p10, "trim_user"    # Z
    .param p11, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 377
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 378
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 379
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 380
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 381
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 382
    const-string v1, "filter_by_author"

    invoke-virtual {p7}, Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 383
    const-string v1, "filter_by_source"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 384
    const-string v1, "filter_by_type"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 385
    if-eqz p10, :cond_0

    .line 386
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 390
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/mentions.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p11}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 391
    return-void

    .line 388
    :cond_0
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public mentionsIds(JJIILcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "filter_by_author"    # Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;
    .param p8, "filter_by_source"    # Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;
    .param p9, "filter_by_type"    # Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 408
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 409
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 410
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 411
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 412
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 413
    const-string v1, "filter_by_author"

    invoke-virtual {p7}, Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 414
    const-string v1, "filter_by_source"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 415
    const-string v1, "filter_by_type"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$TYPE_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 416
    const-string v1, "https://upload.api.weibo.com/2/statuses/mentions/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 417
    return-void
.end method

.method public publicTimeline(IIZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "base_app"    # Z
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 30
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 31
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 32
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 33
    if-eqz p3, :cond_0

    .line 34
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 38
    :goto_0
    const-string v1, "https://upload.api.weibo.com/2/statuses/public_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 39
    return-void

    .line 36
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public queryID([Ljava/lang/String;Lcom/weibo/sdk/android/api/WeiboAPI$TYPE;ZZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 10
    .param p1, "mids"    # [Ljava/lang/String;
    .param p2, "type"    # Lcom/weibo/sdk/android/api/WeiboAPI$TYPE;
    .param p3, "inbox"    # Z
    .param p4, "isBase62"    # Z
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 502
    new-instance v4, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v4}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 503
    .local v4, "params":Lcom/weibo/sdk/android/WeiboParameters;
    if-eqz p1, :cond_0

    .line 504
    array-length v6, p1

    if-ne v8, v6, :cond_1

    .line 505
    const-string/jumbo v6, "mid"

    aget-object v7, p1, v9

    invoke-virtual {v4, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    :goto_0
    const-string/jumbo v6, "type"

    invoke-virtual {p2}, Lcom/weibo/sdk/android/api/WeiboAPI$TYPE;->ordinal()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 518
    if-eqz p3, :cond_3

    .line 519
    const-string v6, "inbox"

    invoke-virtual {v4, v6, v9}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 523
    :goto_1
    if-eqz p4, :cond_4

    .line 524
    const-string v6, "isBase62"

    invoke-virtual {v4, v6, v9}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 528
    :goto_2
    const-string v6, "https://upload.api.weibo.com/2/statuses/queryid.json"

    const-string v7, "GET"

    invoke-virtual {p0, v6, v4, v7, p5}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 529
    return-void

    .line 507
    :cond_1
    const-string v6, "is_batch"

    invoke-virtual {v4, v6, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v5, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 510
    .local v3, "mid":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 512
    .end local v3    # "mid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 513
    const-string/jumbo v6, "mid"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "strb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v6, "inbox"

    invoke-virtual {v4, v6, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1

    .line 526
    :cond_4
    const-string v6, "isBase62"

    invoke-virtual {v4, v6, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public queryMID([JLcom/weibo/sdk/android/api/WeiboAPI$TYPE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 10
    .param p1, "ids"    # [J
    .param p2, "type"    # Lcom/weibo/sdk/android/api/WeiboAPI$TYPE;
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v8, 0x1

    .line 474
    new-instance v5, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v5}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 475
    .local v5, "params":Lcom/weibo/sdk/android/WeiboParameters;
    array-length v7, p1

    if-ne v8, v7, :cond_0

    .line 476
    const-string v7, "id"

    const/4 v8, 0x0

    aget-wide v8, p1, v8

    invoke-virtual {v5, v7, v8, v9}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 487
    :goto_0
    const-string/jumbo v7, "type"

    invoke-virtual {p2}, Lcom/weibo/sdk/android/api/WeiboAPI$TYPE;->ordinal()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 488
    const-string v7, "https://upload.api.weibo.com/2/statuses/querymid.json"

    const-string v8, "GET"

    invoke-virtual {p0, v7, v5, v8, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 489
    return-void

    .line 478
    :cond_0
    const-string v7, "is_batch"

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v6, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-wide v2, v0, v1

    .line 481
    .local v2, "id":J
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "id":J
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 484
    const-string v7, "id"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public repost(JLjava/lang/String;Lcom/weibo/sdk/android/api/WeiboAPI$COMMENTS_TYPE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "is_comment"    # Lcom/weibo/sdk/android/api/WeiboAPI$COMMENTS_TYPE;
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 633
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 634
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 635
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v1, "is_comment"

    invoke-virtual {p4}, Lcom/weibo/sdk/android/api/WeiboAPI$COMMENTS_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 637
    const-string v1, "https://upload.api.weibo.com/2/statuses/repost.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 638
    return-void
.end method

.method public repostByMe(JJIILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 353
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 354
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 355
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 356
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 357
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 358
    const-string v1, "https://upload.api.weibo.com/2/statuses/repost_by_me.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p7}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 359
    return-void
.end method

.method public repostTimeline(JJJIILcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "since_id"    # J
    .param p5, "max_id"    # J
    .param p7, "count"    # I
    .param p8, "page"    # I
    .param p9, "filter_by_author"    # Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 308
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 309
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 310
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 311
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p5, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 312
    const-string v1, "count"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 313
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 314
    const-string v1, "filter_by_author"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 315
    const-string v1, "https://upload.api.weibo.com/2/statuses/repost_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 316
    return-void
.end method

.method public repostTimelineIds(JJJIILcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "since_id"    # J
    .param p5, "max_id"    # J
    .param p7, "count"    # I
    .param p8, "page"    # I
    .param p9, "filter_by_author"    # Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 331
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 332
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 333
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 334
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p5, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 335
    const-string v1, "count"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 336
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 337
    const-string v1, "filter_by_author"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$AUTHOR_FILTER;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 338
    const-string v1, "https://upload.api.weibo.com/2/statuses/repost_timeline/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 340
    return-void
.end method

.method public show(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 461
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 462
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 463
    const-string v1, "https://upload.api.weibo.com/2/statuses/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 464
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "lat"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 661
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 662
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const-string v1, "long"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    const-string v1, "lat"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/update.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 670
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "lon"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 682
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 683
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string/jumbo v1, "pic"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const-string v1, "long"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    const-string v1, "lat"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/upload.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 693
    return-void
.end method

.method public uploadUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "lon"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 706
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 707
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    const-string v1, "long"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    const-string v1, "lat"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/upload_url_text.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 716
    return-void
.end method

.method public userTimeline(JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 5
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p9, "trim_user"    # Z
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 217
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 218
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 219
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 221
    if-eqz p7, :cond_0

    .line 222
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 226
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p8}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 227
    if-eqz p9, :cond_1

    .line 228
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 232
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/user_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 233
    return-void

    .line 224
    :cond_0
    const-string v1, "base_app"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 230
    :cond_1
    const-string/jumbo v1, "trim_user"

    invoke-virtual {v0, v1, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public userTimeline(JJJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "since_id"    # J
    .param p5, "max_id"    # J
    .param p7, "count"    # I
    .param p8, "page"    # I
    .param p9, "base_app"    # Z
    .param p10, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p11, "trim_user"    # Z
    .param p12, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 146
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 147
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 148
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 149
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p5, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 150
    const-string v1, "count"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 151
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 152
    if-eqz p9, :cond_0

    .line 153
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 157
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p10}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 158
    if-eqz p11, :cond_1

    .line 159
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 163
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/user_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p12}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 164
    return-void

    .line 155
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 161
    :cond_1
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public userTimeline(Ljava/lang/String;JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 4
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "since_id"    # J
    .param p4, "max_id"    # J
    .param p6, "count"    # I
    .param p7, "page"    # I
    .param p8, "base_app"    # Z
    .param p9, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p10, "trim_user"    # Z
    .param p11, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 181
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 182
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 184
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p4, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 185
    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 187
    if-eqz p8, :cond_0

    .line 188
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 192
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 193
    if-eqz p10, :cond_1

    .line 194
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 198
    :goto_1
    const-string v1, "https://upload.api.weibo.com/2/statuses/user_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p11}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 199
    return-void

    .line 190
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v1, "trim_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public userTimelineIds(JJJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "since_id"    # J
    .param p5, "max_id"    # J
    .param p7, "count"    # I
    .param p8, "page"    # I
    .param p9, "base_app"    # Z
    .param p10, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p11, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 249
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 250
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 251
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 252
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p5, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 253
    const-string v1, "count"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 254
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 255
    if-eqz p9, :cond_0

    .line 256
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 260
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p10}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 261
    const-string v1, "https://upload.api.weibo.com/2/statuses/user_timeline/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p11}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 263
    return-void

    .line 258
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public userTimelineIds(Ljava/lang/String;JJIIZLcom/weibo/sdk/android/api/WeiboAPI$FEATURE;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 4
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "since_id"    # J
    .param p4, "max_id"    # J
    .param p6, "count"    # I
    .param p7, "page"    # I
    .param p8, "base_app"    # Z
    .param p9, "feature"    # Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;
    .param p10, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 279
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 280
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 282
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p4, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 283
    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 284
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 285
    if-eqz p8, :cond_0

    .line 286
    const-string v1, "base_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 290
    :goto_0
    const-string v1, "feature"

    invoke-virtual {p9}, Lcom/weibo/sdk/android/api/WeiboAPI$FEATURE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 291
    const-string v1, "https://upload.api.weibo.com/2/statuses/user_timeline/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p10}, Lcom/weibo/sdk/android/api/StatusesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 293
    return-void

    .line 288
    :cond_0
    const-string v1, "base_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method
