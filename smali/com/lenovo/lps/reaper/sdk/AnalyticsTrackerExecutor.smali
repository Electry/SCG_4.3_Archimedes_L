.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
.super Ljava/lang/Object;
.source "AnalyticsTrackerExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsTracker"

.field private static final tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;


# instance fields
.field private final appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

.field private applicationContext:Landroid/content/Context;

.field private final builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

.field private eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field private initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

.field private taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    .line 45
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 54
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 404
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .line 60
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->combinePermissions(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    return-object v0
.end method

.method private addCfgTask()V
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->checkUpdateTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->addConfigTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 288
    :cond_0
    return-void
.end method

.method private addEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 12
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # D
    .param p6, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .param p7, "sync"    # Z

    .prologue
    .line 297
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isEnableSDK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 321
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v11, 0x0

    .line 302
    .local v11, "paramMapTmp":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-nez p6, :cond_1

    .line 303
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    .line 304
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 308
    :goto_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v10

    .line 309
    .local v10, "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 311
    .local v1, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->check()Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    goto :goto_0

    .line 306
    .end local v1    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v10    # "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v11

    goto :goto_1

    .line 315
    .restart local v1    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .restart local v10    # "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v2, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventSaveTask(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/Runnable;

    move-result-object v0

    .line 316
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz p7, :cond_3

    .line 317
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 319
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private addMsgTask()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->addMsgTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 294
    :cond_0
    return-void
.end method

.method private addSessionVisits()V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordAddSessionVisits()V

    .line 401
    return-void
.end method

.method private addTrackInstalledAppTask(Z)V
    .locals 3
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 360
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method private clearParam()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clear()V

    .line 412
    return-void
.end method

.method private combinePermissions(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/16 v2, 0x14

    .line 269
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 270
    const/4 v4, 0x0

    .line 279
    :goto_0
    return-object v4

    .line 272
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 273
    .local v3, "permissions":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x190

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v0, "formatPermissions":Ljava/lang/StringBuilder;
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 276
    .local v2, "length":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 277
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    array-length v2, v3

    goto :goto_1

    .line 279
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    return-object v0
.end method

.method private declared-synchronized initialize()V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_2
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initializing................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialize(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->postInitialize()V

    .line 96
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setUncaughtExceptionHandler()V

    .line 97
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initialized................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "some error occured when initital AnalyticsTracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "AnalyticsTracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :try_start_5
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private postInitialize()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getConfiguration()Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 108
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getEventStorage()Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 109
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getTaskFactory()Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    .line 110
    return-void
.end method

.method private setUncaughtExceptionHandler()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 258
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 266
    .end local v0    # "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_0
    return-void
.end method

.method private trackInitial()V
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    .line 324
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->saveTrafficNumber(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;

    move-result-object v10

    .line 325
    .local v10, "traffic":Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    const-wide/16 v8, 0x0

    .line 326
    .local v8, "rxTraffic":J
    const-wide/16 v12, 0x0

    .line 327
    .local v12, "txTraffic":J
    if-eqz v10, :cond_0

    .line 328
    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v8

    .line 329
    :goto_0
    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v12

    .line 331
    :cond_0
    :goto_1
    const-string v1, "__INITIAL__"

    const-string v2, "initial"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 332
    return-void

    :cond_1
    move-wide v8, v0

    .line 328
    goto :goto_0

    :cond_2
    move-wide v12, v0

    .line 329
    goto :goto_1
.end method

.method private trackThrowable(Ljava/lang/Throwable;I)V
    .locals 17
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "flag"    # I

    .prologue
    .line 335
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 337
    :cond_0
    const-string v2, "AnalyticsTracker"

    const-string v3, "action of throwable event should not be null or empty. OR flag is not appropriate"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    move-object/from16 v15, p1

    .line 341
    .local v15, "thr":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 342
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "thrName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 346
    .local v16, "thrMsg":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    .local v14, "stack":Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v15}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .local v10, "arr$":[Ljava/lang/StackTraceElement;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v11, v10, v12

    .line 352
    .local v11, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 355
    .end local v11    # "e":Ljava/lang/StackTraceElement;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xe10

    if-lt v2, v3, :cond_5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0xe10

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "thrStack":Ljava/lang/String;
    :goto_3
    const-string v3, "__THROWABLE__"

    move/from16 v0, p2

    int-to-double v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto/16 :goto_0

    .line 355
    .end local v5    # "thrStack":Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method


# virtual methods
.method addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 220
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genMessageSaveTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method dispatch()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 241
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    const-string v0, "AnalyticsTracker"

    const-string/jumbo v1, "not initialize."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->isCustomDispatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 248
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV1:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 83
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 84
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackInitial()V

    .line 86
    :cond_0
    return-void
.end method

.method setAppChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppChannel(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method setAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppToken(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method setAppVersionCode(I)V
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppVersionCode(I)V

    .line 238
    return-void
.end method

.method setAppVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppVersionName(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .prologue
    .line 215
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->setOnAppMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V

    .line 216
    return-void
.end method

.method setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 408
    return-void
.end method

.method setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method smartInitialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 74
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 75
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 76
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackInitial()V

    .line 77
    return-void
.end method

.method trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # D
    .param p6, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .param p7, "sync"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "AnalyticsTracker"

    const-string/jumbo v1, "not initialize."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    if-nez p7, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addCfgTask()V

    .line 121
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addMsgTask()V

    .line 123
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method trackEventBegin(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventBegin(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method trackEventDuration(Ljava/lang/String;DJ)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D
    .param p4, "duration"    # J

    .prologue
    .line 140
    const-string v1, "__DURA__"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 141
    return-void
.end method

.method trackEventDuration(Ljava/lang/String;J)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 136
    const-string v1, "__DURA__"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 137
    return-void
.end method

.method trackEventEnd(Ljava/lang/String;)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventEnd(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 150
    return-void
.end method

.method trackEventEnd(Ljava/lang/String;D)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D

    .prologue
    .line 153
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventEnd(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 155
    return-void
.end method

.method trackFeedback(Ljava/lang/String;)V
    .locals 8
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v1, "__FEEDBACK__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 204
    return-void
.end method

.method trackInstalledApps(Z)V
    .locals 0
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addTrackInstalledAppTask(Z)V

    .line 208
    return-void
.end method

.method trackNetworkDetectEvent(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    .locals 3
    .param p1, "detectUrl"    # Ljava/lang/String;
    .param p2, "detectType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isEnableSDK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    const-string v0, "AnalyticsTracker"

    const-string/jumbo v1, "not read for tracking event."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genNetworkEventSaveTask(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 177
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordPause(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 179
    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 181
    if-eqz p2, :cond_0

    .line 182
    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_0
    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 185
    return-void
.end method

.method trackResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTimeForAddSessionVisits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordResume(Ljava/lang/String;)V

    .line 164
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 165
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 167
    if-eqz p2, :cond_1

    .line 168
    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 170
    :cond_1
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 172
    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 173
    return-void
.end method

.method trackThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;I)V

    .line 199
    return-void
.end method

.method trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userActionName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentUserActionSeqNumber()V

    .line 190
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 191
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 193
    const-string v1, "__NEWUA__"

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 195
    return-void
.end method
