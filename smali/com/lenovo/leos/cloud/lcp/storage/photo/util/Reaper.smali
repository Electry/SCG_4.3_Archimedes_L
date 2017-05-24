.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;
.super Ljava/lang/Object;
.source "Reaper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;


# instance fields
.field lastUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "LCPReaper"

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->lastUserId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->inst:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    return-object v0
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->doLoadUsername()V

    return-void
.end method

.method private doLoadUsername()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "s":J
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "userId":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->setUserId(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static getUserID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    :goto_0
    return-object v2

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadUsername()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper$1;-><init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method private setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->lastUserId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    .end local p1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 77
    .restart local p1    # "userId":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->lastUserId:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .end local p1    # "userId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public event(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "PHOTO_API"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "val"    # I

    .prologue
    .line 91
    const-string v0, "PHOTO_API"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->initialize(Landroid/content/Context;)V

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->loadUsername()V

    .line 43
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "val"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 96
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "userName":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 98
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string/jumbo v1, "userName"

    invoke-virtual {v5, v0, v1, v7}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 99
    const/4 v0, 0x5

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "PJPRUFMX2B3H"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 101
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 102
    return-void
.end method
