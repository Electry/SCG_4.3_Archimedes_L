.class public Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;
.super Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;
.source "NetworkEventSaveTask.java"


# instance fields
.field private detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

.field private detectUrl:Ljava/lang/String;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;-><init>()V

    return-void
.end method

.method private genDomainDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 12
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DETECT__"

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getprop"

    const-string v5, "dns"

    invoke-static {v0, v5}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    const-string v10, "__DETECT__"

    sget-object v11, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genDomainDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v1
.end method

.method private genDomainDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 10
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 37
    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 38
    .local v2, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 39
    const-string v3, "TRAFFIC_NOT_PERMITTED"

    .line 40
    .local v3, "pingResult":Ljava/lang/String;
    const-string v0, "TRAFFIC_NOT_PERMITTED"

    .line 41
    .local v0, "defaultDomainPingResult":Ljava/lang/String;
    const-string v4, "TRAFFIC_NOT_PERMITTED"

    .line 42
    .local v4, "result":Ljava/lang/String;
    const-string v1, "TRAFFIC_NOT_PERMITTED"

    .line 43
    .local v1, "defaultDomainResult":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    new-instance v3, Ljava/lang/String;

    .end local v3    # "pingResult":Ljava/lang/String;
    const-string/jumbo v5, "ping -c 3 %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v3    # "pingResult":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    .end local v0    # "defaultDomainPingResult":Ljava/lang/String;
    const-string/jumbo v5, "ping -c 3 %s"

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "www.baidu.com"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v0    # "defaultDomainPingResult":Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->domainResolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    const-string/jumbo v5, "www.baidu.com"

    invoke-static {v5}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->domainResolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_0
    invoke-virtual {v2, v8, p1, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 52
    const/4 v5, 0x2

    const-string/jumbo v6, "www.baidu.com"

    invoke-virtual {v2, v5, v6, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    const/4 v5, 0x3

    invoke-virtual {v2, v5, p1, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 54
    const/4 v5, 0x4

    const-string/jumbo v6, "www.baidu.com"

    invoke-virtual {v2, v5, v6, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 56
    .end local v0    # "defaultDomainPingResult":Ljava/lang/String;
    .end local v1    # "defaultDomainResult":Ljava/lang/String;
    .end local v3    # "pingResult":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private genHttpDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DETECT__"

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Http:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    const-string v10, "__DETECT__"

    sget-object v11, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Http:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genHttpDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v1
.end method

.method private genHttpDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 5
    .param p1, "testHttpUri"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 68
    .local v1, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    const-string v2, "TRAFFIC_NOT_PERMITTED"

    .line 70
    .local v2, "result":Ljava/lang/String;
    const-string v0, "TRAFFIC_NOT_PERMITTED"

    .line 71
    .local v0, "defaultDomainResult":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getHttpResponseCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "www.baidu.com"

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getHttpResponseCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 77
    const/4 v3, 0x2

    const-string/jumbo v4, "www.baidu.com"

    invoke-virtual {v1, v3, v4, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 79
    .end local v0    # "defaultDomainResult":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected processEvent()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genDomainDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    :cond_0
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genHttpDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    goto :goto_0
.end method

.method public setDetectType(Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    .locals 0
    .param p1, "detectType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .line 92
    return-void
.end method

.method public setDetectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "detectUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V
    .locals 0
    .param p1, "serverConfig"    # Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 84
    return-void
.end method
