.class public Lcom/weibo/sdk/android/api/UsersAPI;
.super Lcom/weibo/sdk/android/api/WeiboAPI;
.source "UsersAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://upload.api.weibo.com/2/users"


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
.method public counts([JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 9
    .param p1, "uids"    # [J
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 56
    new-instance v5, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v5}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 57
    .local v5, "params":Lcom/weibo/sdk/android/WeiboParameters;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
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

    .line 59
    .local v2, "cid":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "cid":J
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v7, "uids"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v7, "https://upload.api.weibo.com/2/users/counts.json"

    const-string v8, "GET"

    invoke-virtual {p0, v7, v5, v8, p2}, Lcom/weibo/sdk/android/api/UsersAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 64
    return-void
.end method

.method public domainShow(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 45
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 46
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "https://upload.api.weibo.com/2/users/domain_show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/weibo/sdk/android/api/UsersAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 48
    return-void
.end method

.method public show(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 23
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 24
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 25
    const-string v1, "https://upload.api.weibo.com/2/users/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/weibo/sdk/android/api/UsersAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 26
    return-void
.end method

.method public show(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 34
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 35
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "https://upload.api.weibo.com/2/users/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/weibo/sdk/android/api/UsersAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 37
    return-void
.end method
