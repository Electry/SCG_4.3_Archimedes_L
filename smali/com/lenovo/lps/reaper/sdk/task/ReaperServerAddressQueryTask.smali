.class public final Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;
.super Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;
.source "ReaperServerAddressQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaperServerAddressQueryTask"

.field public static final defaultReaperServerIPUrl:Ljava/lang/String; = "http://223.202.19.39"

.field public static final defaultReaperServerUrl:Ljava/lang/String; = "http://fsr.lenovomm.com"

.field private static final reaperServerAddressQueryUrl:Ljava/lang/String; = "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1"


# instance fields
.field private final configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 2
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 63
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;Landroid/os/Handler;)V
    .locals 2
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 59
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 60
    return-void
.end method

.method private needQueryServerInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    const-string v1, "ReaperServerAddressQueryTask"

    const-string v2, "Using Custom ReaperServerAddress."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->isServerInfoExpried()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "ReaperServerAddressQueryTask"

    const-string/jumbo v2, "server info is not expired."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponseResult(Ljava/lang/String;)Z
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;

    invoke-direct {v1, p0}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;-><init>(Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;)V

    .line 130
    .local v1, "ldsResponseHandler":Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 131
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getTtl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getTtl()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->resetReaperServer(JLjava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 137
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ReaperServerAddressQueryTask"

    const-string/jumbo v3, "process server query response result fail. "

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetReaperServer(JLjava/util/List;)Z
    .locals 9
    .param p1, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 150
    if-eqz p3, :cond_0

    .line 151
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 152
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->saveServerInfo(Ljava/lang/String;J)V

    move v1, v2

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 155
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 156
    .local v0, "index":I
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->saveServerInfo(Ljava/lang/String;J)V

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    .end local v0    # "index":I
    :cond_2
    const-string v2, "ReaperServerAddressQueryTask"

    const-string v3, "don\'t get reaper server url from lds."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processHttpRequest()V
    .locals 11

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->needQueryServerInfo()Z

    move-result v8

    if-nez v8, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 72
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 74
    const-string v8, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 76
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1"

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, "queryResult":Z
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .local v4, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v4, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 82
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 83
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 84
    .local v0, "code":I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_2

    .line 85
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->processResponseResult(Ljava/lang/String;)Z

    move-result v5

    .line 91
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServerAddress Query Success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    if-nez v5, :cond_0

    .line 98
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    const-string v9, "http://fsr.lenovomm.com"

    invoke-virtual {v8, v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .restart local v0    # "code":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "query reaper server address fail, status code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 92
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query reaper server address fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method
