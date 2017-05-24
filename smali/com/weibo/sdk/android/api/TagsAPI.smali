.class public Lcom/weibo/sdk/android/api/TagsAPI;
.super Lcom/weibo/sdk/android/api/WeiboAPI;
.source "TagsAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://upload.api.weibo.com/2/tags"


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 13
    return-void
.end method


# virtual methods
.method public create([Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 8
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 65
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 66
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v4, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 68
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v6, "tags"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v6, "https://upload.api.weibo.com/2/tags/create.json"

    const-string v7, "POST"

    invoke-virtual {p0, v6, v3, v7, p2}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 73
    return-void
.end method

.method public destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "tag_id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 81
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 82
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "tag_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 83
    const-string v1, "https://upload.api.weibo.com/2/tags/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 84
    return-void
.end method

.method public destroyBatch([Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 8
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 92
    new-instance v4, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v4}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 93
    .local v4, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
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

    .line 95
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v6, "ids"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "https://upload.api.weibo.com/2/tags/destroy_batch.json"

    const-string v7, "POST"

    invoke-virtual {p0, v6, v4, v7, p2}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 100
    return-void
.end method

.method public suggestions(ILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 54
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 55
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 56
    const-string v1, "https://upload.api.weibo.com/2/tags/suggestions.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 57
    return-void
.end method

.method public tags(JIILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 25
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 26
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 27
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 29
    const-string v1, "https://upload.api.weibo.com/2/tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 30
    return-void
.end method

.method public tagsBatch([Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 38
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 39
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v4, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 41
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v5    # "uid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v6, "uids"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v6, "https://upload.api.weibo.com/2/tags/tags_batch.json"

    const-string v7, "GET"

    invoke-virtual {p0, v6, v3, v7, p2}, Lcom/weibo/sdk/android/api/TagsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 46
    return-void
.end method
