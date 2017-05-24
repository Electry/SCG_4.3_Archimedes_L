.class public abstract Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;
.super Ljava/lang/Object;
.source "AbstractReaperHttpRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractReaperHttpRequestTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract processHttpRequest()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const-string v0, "AbstractReaperHttpRequestTask"

    const-string/jumbo v1, "traffic is not permitted."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    const-string v0, "AbstractReaperHttpRequestTask"

    const-string/jumbo v1, "network is not ok."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/task/AbstractReaperHttpRequestTask;->processHttpRequest()V

    goto :goto_0
.end method
