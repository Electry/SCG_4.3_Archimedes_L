.class public abstract Lcom/baidu/idl/lib/network/HttpRequestWithToken;
.super Lcom/baidu/idl/lib/network/HttpRequest;
.source "HttpRequestWithToken.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/idl/lib/network/HttpRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillParams(Ljava/util/List;)V
    .locals 5
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
    .line 18
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-super {p0, p1}, Lcom/baidu/idl/lib/network/HttpRequest;->fillParams(Ljava/util/List;)V

    .line 19
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->getGuid()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "guid":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "mac":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "imei":Ljava/lang/String;
    const-string v3, "guid"

    invoke-virtual {p0, v3, v0}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const-string/jumbo v3, "mac"

    invoke-virtual {p0, v3, v2}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v3, "api_key"

    const-string v4, "SCLqldqp9k8GwmangbC6fE5y"

    invoke-virtual {p0, v3, v4}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v3, "language"

    invoke-static {}, Lcom/baidu/idl/lib/network/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v3, "imei"

    invoke-virtual {p0, v3, v1}, Lcom/baidu/idl/lib/network/HttpRequestWithToken;->generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method protected generateValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/message/BasicNameValuePair;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p2, "null"

    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
