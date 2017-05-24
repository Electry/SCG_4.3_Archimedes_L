.class public Lcom/weibo/sdk/android/api/FavoritesAPI;
.super Lcom/weibo/sdk/android/api/WeiboAPI;
.source "FavoritesAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://upload.api.weibo.com/2/favorites"


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 14
    return-void
.end method


# virtual methods
.method public byTags(JIILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 67
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 68
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 69
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 71
    const-string v1, "https://upload.api.weibo.com/2/favorites/by_tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 72
    return-void
.end method

.method public byTagsIds(JIILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 97
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 98
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 99
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 101
    const-string v1, "https://upload.api.weibo.com/2/favorites/by_tags/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 102
    return-void
.end method

.method public create(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 111
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 112
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 113
    const-string v1, "https://upload.api.weibo.com/2/favorites/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 114
    return-void
.end method

.method public destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 123
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 124
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 125
    const-string v1, "https://upload.api.weibo.com/2/favorites/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 126
    return-void
.end method

.method public destroyBatch([JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 9
    .param p1, "ids"    # [J
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 135
    new-instance v5, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v5}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 136
    .local v5, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v6, "strb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 138
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "id":J
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v7, "ids"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "https://upload.api.weibo.com/2/favorites/destroy_batch.json"

    const-string v8, "POST"

    invoke-virtual {p0, v7, v5, v8, p2}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 143
    return-void
.end method

.method public favorites(IILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 26
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 27
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 29
    const-string v1, "https://upload.api.weibo.com/2/favorites.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 30
    return-void
.end method

.method public ids(IILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 40
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 41
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 42
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 43
    const-string v1, "https://upload.api.weibo.com/2/favorites/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 44
    return-void
.end method

.method public show(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 53
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 54
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 55
    const-string v1, "https://upload.api.weibo.com/2/favorites/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 56
    return-void
.end method

.method public tags(IILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 82
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 83
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 84
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 85
    const-string v1, "https://upload.api.weibo.com/2/favorites/tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 86
    return-void
.end method

.method public tagsDestroyBatch(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 185
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 186
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 187
    const-string v1, "https://upload.api.weibo.com/2/favorites/tags/destroy_batch.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 188
    return-void
.end method

.method public tagsUpdate(J[Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 153
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 154
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v6, "id"

    invoke-virtual {v3, v6, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v4, "strb":Ljava/lang/StringBuilder;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 157
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v6, "tags"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v6, "https://upload.api.weibo.com/2/favorites/tags/update.json"

    const-string v7, "POST"

    invoke-virtual {p0, v6, v3, v7, p4}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 162
    return-void
.end method

.method public tagsUpdateBatch(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 172
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 173
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 174
    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "https://upload.api.weibo.com/2/favorites/tags/update_batch.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/weibo/sdk/android/api/FavoritesAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 176
    return-void
.end method
