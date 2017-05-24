.class public final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsTracker"

.field private static reportFlag:Z

.field private static final tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->reportFlag:Z

    .line 21
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-object v0
.end method


# virtual methods
.method public addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when addUploadMsg."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public disableReport()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->reportFlag:Z

    .line 448
    return-void
.end method

.method public dispatch()V
    .locals 3

    .prologue
    .line 543
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->dispatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when dispatch."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enableReport()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->reportFlag:Z

    .line 452
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when initialize."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "reportIntervalInSeconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 513
    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "appChannel"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 519
    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppToken(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppChannel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPermitReportData()Z
    .locals 1

    .prologue
    .line 455
    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->reportFlag:Z

    return v0
.end method

.method public isTrackerInitialized()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public needReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->needReport(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setAppChannel(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setAppToken(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;I)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;
    .param p2, "appVersionCode"    # I

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionName(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionCode(I)V

    .line 485
    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 1
    .param p1, "appVersionCode"    # I

    .prologue
    .line 502
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setAppVersionCode(I)V

    .line 503
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setAppVersionName(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .prologue
    .line 423
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when setOnMsgListener."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setUserId(J)V
    .locals 3
    .param p1, "lenovoUserId"    # J

    .prologue
    .line 398
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "LenovoID"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 398
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "lenovoUserId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    const-string v0, "LenovoID"

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setUserId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when setUserId."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    return-void
.end method

.method public smartInitialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->smartInitialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when smartInitialize."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackActivity(Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 530
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    const-string v1, "__PAGEVIEW__"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 532
    return-void
.end method

.method public trackDomainDetectEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 118
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v2, "http://"

    .line 122
    .local v2, "prex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "index":I
    if-eq v1, v4, :cond_2

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_2
    const-string v2, "https://"

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 128
    if-eq v1, v4, :cond_3

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v3

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackNetworkDetectEvent(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "index":I
    .end local v2    # "prex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AnalyticsTracker"

    const-string v4, "Exception when trackDomainDetectEvent."

    invoke-static {v3, v4, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    int-to-double v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v8

    .line 72
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AnalyticsTracker"

    const-string v1, "Exception when trackEvent."

    invoke-static {v0, v1, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    int-to-double v4, p4

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v8

    .line 89
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AnalyticsTracker"

    const-string v1, "Exception when trackEvent."

    invoke-static {v0, v1, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, eventAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEventBegin(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventBegin."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventBySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    int-to-double v4, p4

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v8

    .line 106
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AnalyticsTracker"

    const-string v1, "Exception when trackEvent."

    invoke-static {v0, v1, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventDuration(Ljava/lang/String;DJ)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D
    .param p4, "duration"    # J

    .prologue
    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    const-string v0, "AnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parameter value, eventAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 195
    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 196
    const-string v0, "AnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parameter value, dataLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    .line 200
    const-string v0, "AnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parameter value, duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEventDuration(Ljava/lang/String;DJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v6

    .line 206
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AnalyticsTracker"

    const-string v1, "Exception when trackEventDuration."

    invoke-static {v0, v1, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 166
    :cond_0
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, eventAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    .line 170
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEventDuration(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventDuration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, eventAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEventEnd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventEnd."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventEnd(Ljava/lang/String;D)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, eventAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 259
    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-gez v1, :cond_2

    .line 260
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parameter value, dataLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEventEnd(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventEnd."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackFeedback(Ljava/lang/String;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, "__FEEDBACK__"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    return-void
.end method

.method public trackHttpDetectEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "testHttpUri"    # Ljava/lang/String;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Http:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackNetworkDetectEvent(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackHttpDetectEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackInstalledApps(Z)V
    .locals 3
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 377
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackInstalledApps(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackInstalledApps."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPagePause(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 334
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackPause(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackPagePause."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPageResume(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackResume(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackPageResume."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public trackResume(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public trackThrowable(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackThrowable."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackUserAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "userActionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method public trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userActionName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackUserAction."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
