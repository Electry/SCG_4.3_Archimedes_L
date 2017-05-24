.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# static fields
.field public static final RES_EXCEPTION:Ljava/lang/String; = "EXCEPTION"

.field public static final RES_LATES_VERSION:Ljava/lang/String; = "LATESTVERSION"

.field public static final RES_NOT_FOUND:Ljava/lang/String; = "NOTFOUND"

.field public static final RES_SUCCESS:Ljava/lang/String; = "SUCCESS"


# instance fields
.field public ChannelKey:Ljava/lang/String;

.field public CustKey:Ljava/lang/String;

.field public DownloadSize:Ljava/lang/String;

.field public DownloadURL:Ljava/lang/String;

.field public FileName:Ljava/lang/String;

.field public ForceUpdate:Ljava/lang/String;

.field public PackageId:Ljava/lang/String;

.field public Size:Ljava/lang/String;

.field public UpdateDesc:Ljava/lang/String;

.field public VerCode:Ljava/lang/String;

.field public VerName:Ljava/lang/String;

.field public query_result:Lcom/lenovo/lps/sus/QueryResult;

.field public resultion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/sus/QueryResult;)V
    .locals 4
    .param p1, "qr"    # Lcom/lenovo/lps/sus/QueryResult;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->resultType:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->channelKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->ChannelKey:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->newVerCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerCode:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->newVerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerName:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGDownloadURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->DownloadURL:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->Size:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/QueryResult;->downloadPKGRealSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->DownloadSize:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->verDescribe:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->UpdateDesc:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->FileName:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->custKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->CustKey:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->forceUpdate:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->ForceUpdate:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-object v0, v0, Lcom/lenovo/lps/sus/QueryResult;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->PackageId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;-><init>()V

    .line 90
    .local v1, "result":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v2, "RES"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    .line 93
    const-string v2, "SUCCESS"

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "VerCode"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerCode:Ljava/lang/String;

    .line 96
    const-string v2, "ChannelKey"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->ChannelKey:Ljava/lang/String;

    .line 97
    const-string v2, "VerName"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerName:Ljava/lang/String;

    .line 99
    const-string v2, "DownloadURL"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->DownloadURL:Ljava/lang/String;

    .line 100
    const-string v2, "Size"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->Size:Ljava/lang/String;

    .line 101
    const-string v2, "UpdateDesc"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->UpdateDesc:Ljava/lang/String;

    .line 102
    const-string v2, "FileName"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->FileName:Ljava/lang/String;

    .line 103
    const-string v2, "CustKey"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->CustKey:Ljava/lang/String;

    .line 105
    const-string v2, "ForceUpdate"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->ForceUpdate:Ljava/lang/String;

    .line 107
    const-string v2, "PackageId"

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->PackageId:Ljava/lang/String;

    .line 109
    :cond_0
    return-object v1
.end method

.method private static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jo"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "jsonObjectStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->VerName:Ljava/lang/String;

    .line 80
    .local v0, "version_name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    const/4 v1, 0x0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    return-object v0
.end method
