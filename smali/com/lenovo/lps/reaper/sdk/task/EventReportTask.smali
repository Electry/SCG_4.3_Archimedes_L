.class public Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;
.super Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;
.source "EventReportTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventReportTask"


# instance fields
.field private eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field private priority:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

.field private reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;-><init>()V

    return-void
.end method

.method private isEventEnough(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 2
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getThreshold(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V
    .locals 4
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->isPosting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->sendEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V

    .line 34
    :goto_1
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->isEventEnough(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->isReportSucc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EventReportTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "some error occured when dispatch. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "EventReportTask"

    const-string/jumbo v2, "not ready for reporting."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private sendEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V
    .locals 4
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->isEventEnough(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v2, p1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->fetchEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    .line 47
    .local v0, "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)I

    move-result v1

    .line 48
    .local v1, "postLength":I
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v2, v1, p1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->deleteEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V

    .line 49
    if-nez v1, :cond_0

    .line 50
    const-string v2, "EventReportTask"

    const-string/jumbo v3, "no reported event."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v1    # "postLength":I
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "EventReportTask"

    const-string v3, "current number of events is not enough."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processHttpRequest()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->priority:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V

    .line 22
    return-void
.end method

.method public setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V
    .locals 0
    .param p1, "eventStorage"    # Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 76
    return-void
.end method

.method public setPriority(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->priority:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .line 64
    return-void
.end method

.method public setReportManager(Lcom/lenovo/lps/reaper/sdk/request/ReportManager;)V
    .locals 0
    .param p1, "reportManager"    # Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .line 68
    return-void
.end method

.method public setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V
    .locals 0
    .param p1, "serverConfig"    # Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 72
    return-void
.end method
