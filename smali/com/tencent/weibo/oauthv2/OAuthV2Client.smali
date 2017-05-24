.class public Lcom/tencent/weibo/oauthv2/OAuthV2Client;
.super Ljava/lang/Object;
.source "OAuthV2Client.java"


# static fields
.field private static Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "OAuthV2Client.class"

    sput-object v0, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    sput-object v0, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static accessToken(Lcom/tencent/weibo/oauthv2/OAuthV2;)Z
    .locals 6
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v3, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v3, :cond_0

    .line 118
    new-instance v3, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v4, "1001"

    invoke-direct {v3, v4}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    sget-object v3, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AuthorizeCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAuthorizeCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 121
    const-string v5, "\nOpenid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nOpenkey ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v2, "https://open.t.qq.com/cgi-bin/oauth2/access_token"

    .line 125
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAccessTokenByCodeParamsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "queryString":Ljava/lang/String;
    sget-object v3, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "authorization queryString = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v3, v2, v0}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "responseData":Ljava/lang/String;
    sget-object v3, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "authorization responseData = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v1, p0}, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->parseAccessToken(Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setStatus(I)V

    .line 133
    const/4 v3, 0x0

    .line 135
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static generateAuthorizationURL(Lcom/tencent/weibo/oauthv2/OAuthV2;)Ljava/lang/String;
    .locals 5
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    .line 32
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setResponseType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAuthorizationParamsList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "queryString":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authorization queryString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://open.t.qq.com/cgi-bin/oauth2/authorize?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "urlWithQueryString":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url with queryString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-object v1
.end method

.method public static generateImplicitGrantUrl(Lcom/tencent/weibo/oauthv2/OAuthV2;)Ljava/lang/String;
    .locals 5
    .param p0, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    .line 145
    const-string/jumbo v2, "token"

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setResponseType(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAuthorizationParamsList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "queryString":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authorization queryString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://open.t.qq.com/cgi-bin/oauth2/authorize?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "urlWithQueryString":Ljava/lang/String;
    sget-object v2, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url with queryString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v1
.end method

.method public static getQHttpClient()Lcom/tencent/weibo/utils/QHttpClient;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    return-object v0
.end method

.method public static parseAccessToken(Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z
    .locals 11
    .param p0, "responseData"    # Ljava/lang/String;
    .param p1, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v5

    .line 169
    :cond_1
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setMsg(Ljava/lang/String;)V

    .line 170
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "tokenArray":[Ljava/lang/String;
    sget-object v7, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseToken response=>> tokenArray.length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    array-length v7, v4

    if-lt v7, v10, :cond_0

    .line 178
    aget-object v2, v4, v5

    .line 179
    .local v2, "strAccessToken":Ljava/lang/String;
    aget-object v3, v4, v6

    .line 181
    .local v3, "strExpiresIn":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "accessToken":[Ljava/lang/String;
    array-length v7, v0

    if-lt v7, v10, :cond_0

    .line 185
    aget-object v7, v0, v6

    invoke-virtual {p1, v7}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setAccessToken(Ljava/lang/String;)V

    .line 187
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "expiresIn":[Ljava/lang/String;
    array-length v7, v1

    if-lt v7, v10, :cond_0

    .line 191
    aget-object v5, v1, v6

    invoke-virtual {p1, v5}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setExpiresIn(Ljava/lang/String;)V

    move v5, v6

    .line 193
    goto :goto_0
.end method

.method public static parseAccessTokenAndOpenId(Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z
    .locals 12
    .param p0, "responseData"    # Ljava/lang/String;
    .param p1, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    .line 204
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setStatus(I)V

    .line 206
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 207
    const/4 v9, 0x0

    .line 248
    :goto_0
    return v9

    .line 210
    :cond_0
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setMsg(Ljava/lang/String;)V

    .line 211
    const-string v9, "&"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "tokenArray":[Ljava/lang/String;
    sget-object v9, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseToken response=>> tokenArray.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    array-length v9, v8

    const/4 v10, 0x4

    if-ge v9, v10, :cond_1

    .line 216
    const/4 v9, 0x0

    goto :goto_0

    .line 219
    :cond_1
    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 220
    .local v4, "strAccessToken":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v5, v8, v9

    .line 221
    .local v5, "strExpiresIn":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v6, v8, v9

    .line 222
    .local v6, "strOpenid":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v7, v8, v9

    .line 224
    .local v7, "strOpenkey":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "accessToken":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 226
    const/4 v9, 0x0

    goto :goto_0

    .line 228
    :cond_2
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setAccessToken(Ljava/lang/String;)V

    .line 230
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "expiresIn":[Ljava/lang/String;
    array-length v9, v1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 232
    const/4 v9, 0x0

    goto :goto_0

    .line 234
    :cond_3
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setExpiresIn(Ljava/lang/String;)V

    .line 236
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "openid":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_4

    .line 238
    const/4 v9, 0x0

    goto :goto_0

    .line 240
    :cond_4
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenid(Ljava/lang/String;)V

    .line 242
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "openkey":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 244
    const/4 v9, 0x0

    goto :goto_0

    .line 246
    :cond_5
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenkey(Ljava/lang/String;)V

    .line 247
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setStatus(I)V

    .line 248
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static parseAuthorization(Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z
    .locals 13
    .param p0, "responseData"    # Ljava/lang/String;
    .param p1, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p1, v12}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setStatus(I)V

    .line 71
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v7

    .line 75
    :cond_1
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setMsg(Ljava/lang/String;)V

    .line 76
    const-string v9, "&"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "tokenArray":[Ljava/lang/String;
    sget-object v9, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseToken response=>> tokenArray.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    array-length v9, v6

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    .line 84
    aget-object v3, v6, v7

    .line 85
    .local v3, "strAuthorizeCode":Ljava/lang/String;
    aget-object v4, v6, v8

    .line 86
    .local v4, "strOpenid":Ljava/lang/String;
    aget-object v5, v6, v12

    .line 88
    .local v5, "strOpenkey":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "authorizeCode":[Ljava/lang/String;
    array-length v9, v0

    if-lt v9, v12, :cond_0

    .line 92
    aget-object v9, v0, v8

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setAuthorizeCode(Ljava/lang/String;)V

    .line 94
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "openid":[Ljava/lang/String;
    array-length v9, v1

    if-lt v9, v12, :cond_0

    .line 98
    aget-object v9, v1, v8

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenid(Ljava/lang/String;)V

    .line 100
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "openkey":[Ljava/lang/String;
    array-length v9, v2

    if-lt v9, v12, :cond_0

    .line 104
    aget-object v9, v2, v8

    invoke-virtual {p1, v9}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenkey(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v7}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setStatus(I)V

    move v7, v8

    .line 106
    goto :goto_0
.end method

.method public static setAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z
    .locals 1
    .param p0, "authorizeCode"    # Ljava/lang/String;
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "openkey"    # Ljava/lang/String;
    .param p3, "oAuth"    # Lcom/tencent/weibo/oauthv2/OAuthV2;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p3, p0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setAuthorizeCode(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3, p1}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenid(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3, p2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenkey(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setQHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .param p0, "qHttpClient"    # Lcom/tencent/weibo/utils/QHttpClient;

    .prologue
    .line 256
    sput-object p0, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->Q_HTTP_CLIENT:Lcom/tencent/weibo/utils/QHttpClient;

    .line 257
    return-void
.end method
