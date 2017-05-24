.class public Lcom/tencent/weibo/oauthv2/OAuthV2;
.super Lcom/tencent/weibo/beans/OAuth;
.source "OAuthV2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40c5a009cd35c775L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authorizeCode:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private expiresIn:Ljava/lang/String;

.field private grantType:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 19
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    .line 22
    const-string v0, "code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    .line 23
    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    .line 27
    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    .line 34
    const-string v0, "2.a"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->oauthVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 19
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    .line 22
    const-string v0, "code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    .line 23
    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    .line 27
    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 43
    const-string v0, "2.a"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->oauthVersion:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "redirectUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 19
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    .line 22
    const-string v0, "code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    .line 23
    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    .line 27
    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 56
    const-string v0, "2.a"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->oauthVersion:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenByCodeParamsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "redirect_uri"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "code"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method

.method public getAuthorizationParamsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "response_type"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "redirect_uri"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method

.method public getAuthorizeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenParamsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "openid"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->openid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientIP:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_version"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->oauthVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "scope"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->scope:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setAuthorizeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorizeCode"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setGrantType(Ljava/lang/String;)V
    .locals 0
    .param p1, "grantType"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuthV2 [redirectUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->redirectUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, ", clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorizeCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->authorizeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->expiresIn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->grantType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
