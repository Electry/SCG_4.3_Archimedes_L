.class public abstract Lcom/baidu/idl/lib/network/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;
    }
.end annotation


# static fields
.field public static final HTTP_GET:I = 0x1

.field public static final HTTP_POST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HttpRequest"


# instance fields
.field protected mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

.field protected mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

.field protected mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([BLjava/lang/Object;)V
    .locals 4
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 184
    .local v0, "l":Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/baidu/idl/lib/network/HttpRequest;->getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;

    move-result-object v1

    .line 186
    .local v1, "resp":Lcom/baidu/idl/lib/network/HttpResponse;
    instance-of v2, v1, Lcom/baidu/idl/lib/network/HttpJSONResponse;

    if-eqz v2, :cond_0

    .line 187
    iget v2, v1, Lcom/baidu/idl/lib/network/HttpResponse;->error:I

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_1

    .line 190
    :cond_0
    invoke-interface {v0, v1}, Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;->onGetResponse(Lcom/baidu/idl/lib/network/HttpResponse;)V

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 195
    .end local v1    # "resp":Lcom/baidu/idl/lib/network/HttpResponse;
    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    invoke-virtual {v0}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->shutdown()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 46
    :cond_1
    return-void
.end method

.method public clearListener()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 36
    return-void
.end method

.method public execute(Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;)V
    .locals 6
    .param p1, "l"    # Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .prologue
    const/4 v4, 0x0

    .line 50
    iput-object p1, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fillParams(Ljava/util/List;)V

    .line 55
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->logPostParams(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->postOrGet()I

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fetchPost(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    new-instance v3, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    iget-object v4, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mTag:Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {v3, p0, v4, v5}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;-><init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;)V

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    .line 74
    iget-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mClient:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    invoke-virtual {v3}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->start()V

    .line 76
    :goto_1
    return-void

    .line 60
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fetchGet(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    if-eqz p1, :cond_1

    .line 65
    iget-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mTag:Ljava/lang/Object;

    invoke-virtual {p0, v4, v3}, Lcom/baidu/idl/lib/network/HttpRequest;->getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;

    move-result-object v2

    .line 66
    .local v2, "resp":Lcom/baidu/idl/lib/network/HttpResponse;
    const/4 v3, -0x1

    iput v3, v2, Lcom/baidu/idl/lib/network/HttpResponse;->error:I

    .line 67
    invoke-interface {p1, v2}, Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;->onGetResponse(Lcom/baidu/idl/lib/network/HttpResponse;)V

    .line 68
    iput-object v4, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mOnResponseListener:Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;

    .line 70
    .end local v2    # "resp":Lcom/baidu/idl/lib/network/HttpResponse;
    :cond_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected fetchGet(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v4, "HttpRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    return-object v1

    .line 118
    .end local v1    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 120
    .local v2, "param":Lorg/apache/http/NameValuePair;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    if-eqz v2, :cond_1

    .line 128
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :cond_1
    :goto_2
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v4
.end method

.method protected fetchPost(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 112
    return-object v0
.end method

.method protected fillParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    return-void
.end method

.method protected abstract getResponse([BLjava/lang/Object;)Lcom/baidu/idl/lib/network/HttpResponse;
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected logPostParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v2, "HttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v2, "HttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 150
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 151
    .local v0, "param":Lorg/apache/http/NameValuePair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected abstract postOrGet()I
.end method

.method public syncExecute()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fillParams(Ljava/util/List;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->logPostParams(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/HttpRequest;->postOrGet()I

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fetchPost(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v2, 0x0

    .line 96
    .local v2, "resp":[B
    :try_start_1
    new-instance v3, Lcom/baidu/idl/lib/network/HttpCloudClient;

    invoke-direct {v3}, Lcom/baidu/idl/lib/network/HttpCloudClient;-><init>()V

    iget-object v4, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v3, v4}, Lcom/baidu/idl/lib/network/HttpCloudClient;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)[B
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 105
    .end local v2    # "resp":[B
    :goto_1
    return-object v2

    .line 86
    :cond_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/baidu/idl/lib/network/HttpRequest;->fetchGet(Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/idl/lib/network/HttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 92
    const/4 v2, 0x0

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "resp":[B
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    throw v0
.end method
