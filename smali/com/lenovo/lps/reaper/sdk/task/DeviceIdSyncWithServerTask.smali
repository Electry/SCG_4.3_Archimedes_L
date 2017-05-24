.class public final Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;
.super Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;
.source "DeviceIdSyncWithServerTask.java"


# static fields
.field private static final PARAM_APP_KEY:Ljava/lang/String; = "appkey"

.field private static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PARAM_COUNTRY:Ljava/lang/String; = "country"

.field private static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "dm"

.field private static final PARAM_DID:Ljava/lang/String; = "did"

.field private static final PARAM_DID_TYPE:Ljava/lang/String; = "didt"

.field private static final PARAM_LANGUAGE:Ljava/lang/String; = "lang"

.field private static final PARAM_MANUFACTURE:Ljava/lang/String; = "manu"

.field private static final PARAM_OS_VERSION:Ljava/lang/String; = "osv"

.field private static final PARAM_RESOLUTION:Ljava/lang/String; = "reso"

.field private static final PARAM_SDK_VERSION:Ljava/lang/String; = "sv"

.field private static final PARAM_VERSION_CODE:Ljava/lang/String; = "vcode"

.field private static final PARAM_VERSION_NAME:Ljava/lang/String; = "vname"

.field private static final TAG:Ljava/lang/String; = "DeviceIdSyncWithServerTask"

.field private static executed:Z


# instance fields
.field private final localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 2
    .param p1, "localConfigManager"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 55
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 56
    return-void
.end method

.method private check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    sget-boolean v1, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->executed:Z

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "DeviceIdSyncWithServerTask"

    const-string v2, "has executed this task."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDidSyncUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 116
    const-string v1, "DeviceIdSyncWithServerTask"

    const-string/jumbo v2, "server url is null."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponseResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "object":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    const-string v3, "did"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->saveAssignedDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceIdSyncWithServerTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process response fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processHttpRequest()V
    .locals 11

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->check()Z

    move-result v8

    if-nez v8, :cond_0

    .line 108
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v8, "DeviceIdSyncWithServerTask"

    const-string v9, "add device id sync task."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v8, "DeviceIdSyncWithServerTask"

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDidSyncUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 67
    .local v4, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v4, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 68
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 69
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 71
    const-string v8, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 73
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 74
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "sv"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "did"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "didt"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceIdType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "appkey"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "vname"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "vcode"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "channel"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "osv"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getOsVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "lang"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "country"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "dm"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "manu"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getManufacture()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "reso"

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getResolution()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, v5, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 89
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDidSyncUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 90
    const-string v8, "Host"

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReaperServerhost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 92
    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 93
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 94
    .local v0, "code":I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_1

    .line 95
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->processResponseResult(Ljava/lang/String;)V

    .line 97
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;->executed:Z

    .line 98
    const-string v8, "DeviceIdSyncWithServerTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeviceIdSyncWithServerTask Success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 100
    :cond_1
    :try_start_1
    const-string v8, "DeviceIdSyncWithServerTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "DeviceIdSyncWithServerTask fail, status code: "

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

    .line 103
    .end local v0    # "code":I
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "DeviceIdSyncWithServerTask"

    const-string v9, "DeviceIdSyncWithServerTask fail."

    invoke-static {v8, v9, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method
