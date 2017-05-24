.class public Lcom/tencent/weibo/oauthv1/OAuthV1;
.super Lcom/tencent/weibo/beans/OAuth;
.source "OAuthV1.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4129084ed89e38cfL


# instance fields
.field private oauthCallback:Ljava/lang/String;

.field private oauthConsumerKey:Ljava/lang/String;

.field private oauthConsumerSecret:Ljava/lang/String;

.field private oauthNonce:Ljava/lang/String;

.field private oauthSignatureMethod:Ljava/lang/String;

.field private oauthTimestamp:Ljava/lang/String;

.field private oauthToken:Ljava/lang/String;

.field private oauthTokenSecret:Ljava/lang/String;

.field private oauthVerifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 20
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    .line 23
    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTokenSecret:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    .line 34
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oauthCallback"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 20
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    .line 23
    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTokenSecret:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 43
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVersion:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oauthConsumerKey"    # Ljava/lang/String;
    .param p2, "oauthConsumerSecret"    # Ljava/lang/String;
    .param p3, "oauthCallback"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/weibo/beans/OAuth;-><init>()V

    .line 20
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    .line 23
    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTokenSecret:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 58
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVersion:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private generateNonce()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    const-string v1, ""

    .line 77
    .local v1, "nonce":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 81
    return-object v1

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->random:Ljava/util/Random;

    const v4, 0x5f5e100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_1

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private generateTimeStamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccessParams()Ljava/util/List;
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
    .line 98
    invoke-virtual {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getTokenParamsList()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_verifier"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public getOauthCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthVerifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsList()Ljava/util/List;
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
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->generateTimeStamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->generateNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 88
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_signature_method"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_timestamp"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_nonce"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_callback"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_version"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
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
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->generateTimeStamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/tencent/weibo/oauthv1/OAuthV1;->generateNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 107
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_signature_method"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_timestamp"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_nonce"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_token"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "oauth_version"

    iget-object v3, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v0
.end method

.method public setOauthCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthCallback"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthCallback:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setOauthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthConsumerKey"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerKey:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setOauthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthConsumerSecret"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthConsumerSecret:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setOauthNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthNonce"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthNonce:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setOauthSignatureMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthSignatureMethod"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthSignatureMethod:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setOauthTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthTimestamp"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTimestamp:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthToken"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthToken:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOauthTokenSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthTokenSecret:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setOauthVerifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthVerifier"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/weibo/oauthv1/OAuthV1;->oauthVerifier:Ljava/lang/String;

    .line 204
    return-void
.end method
