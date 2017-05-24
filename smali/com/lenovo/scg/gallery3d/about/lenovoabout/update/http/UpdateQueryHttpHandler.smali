.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;
.super Ljava/lang/Object;
.source "UpdateQueryHttpHandler.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHandler",
        "<",
        "Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final URL_QUERY_UPDATE:Ljava/lang/String; = "http://susapi.lenovomm.com/adpserver/GetVIByPNFNorUser?SDKVer=0&ReqType=normal&PackageName=%s&AppKey=%s&AppVerCode=%s&ChannelKey=%s&Lang=%s"


# instance fields
.field mHttpHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;

.field mLocal:Ljava/lang/String;

.field mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mHttpHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;

    .line 18
    return-void
.end method


# virtual methods
.method createQueryUpdateUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "app_key"    # Ljava/lang/String;
    .param p3, "version_code"    # I
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "local"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "http://susapi.lenovomm.com/adpserver/GetVIByPNFNorUser?SDKVer=0&ReqType=normal&PackageName=%s&AppKey=%s&AppVerCode=%s&ChannelKey=%s&Lang=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "utf-8"

    invoke-static {p4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_code:I

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->getLocal()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->createQueryUpdateUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mHttpHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HttpHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->toUpdateInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->execute()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method getLocal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocal:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "country":Ljava/lang/String;
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocal:Ljava/lang/String;

    .line 31
    if-eqz v1, :cond_0

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocal:Ljava/lang/String;

    .line 35
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocal:Ljava/lang/String;

    return-object v2
.end method

.method public setLocalAppInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;)V
    .locals 0
    .param p1, "local_app"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/http/UpdateQueryHttpHandler;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 40
    return-void
.end method

.method public toUpdateInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->fromJSON(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
