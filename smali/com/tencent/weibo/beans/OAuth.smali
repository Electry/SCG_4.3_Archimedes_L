.class public Lcom/tencent/weibo/beans/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x604ddf13f7ff7fe9L


# instance fields
.field protected appFrom:Ljava/lang/String;

.field protected clientIP:Ljava/lang/String;

.field protected msg:Ljava/lang/String;

.field protected oauthVersion:Ljava/lang/String;

.field protected openid:Ljava/lang/String;

.field protected openkey:Ljava/lang/String;

.field protected random:Ljava/util/Random;

.field protected scope:Ljava/lang/String;

.field protected seqid:Ljava/lang/String;

.field protected status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->seqid:Ljava/lang/String;

    .line 20
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->clientIP:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->appFrom:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->openid:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->openkey:Ljava/lang/String;

    .line 24
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->oauthVersion:Ljava/lang/String;

    .line 25
    const-string v0, "all"

    iput-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->scope:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/weibo/beans/OAuth;->status:I

    .line 27
    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->msg:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->random:Ljava/util/Random;

    .line 16
    return-void
.end method


# virtual methods
.method public generateSeqId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    const-string v1, ""

    .line 47
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 51
    return-object v1

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/weibo/beans/OAuth;->random:Ljava/util/Random;

    const v4, 0xf4240

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

    .line 49
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x6

    if-lt v2, v3, :cond_1

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
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

.method public getAppFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->appFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonParamsList()Ljava/util/List;
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
    .line 32
    invoke-virtual {p0}, Lcom/tencent/weibo/beans/OAuth;->generateSeqId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/beans/OAuth;->seqid:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/tencent/weibo/beans/OAuth;->clientIP:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->oauthVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->openkey:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/weibo/beans/OAuth;->seqid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/tencent/weibo/beans/OAuth;->status:I

    return v0
.end method

.method public setAppFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "appFrom"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->appFrom:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIP"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->clientIP:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->msg:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOauthVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "oauthVersion"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->oauthVersion:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->openid:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOpenkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "openkey"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->openkey:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->scope:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSeqId(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/weibo/beans/OAuth;->seqid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/tencent/weibo/beans/OAuth;->status:I

    .line 144
    return-void
.end method
