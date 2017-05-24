.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;
.super Ljava/lang/Object;
.source "SubEventSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;


# instance fields
.field private context:Landroid/content/Context;

.field private cur:I

.field private currentUser:Ljava/lang/String;

.field private dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;"
        }
    .end annotation
.end field

.field private superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "superTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    .line 38
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->currentUser:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->getEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->cur:I

    return v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->cur:I

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->total:I

    return v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    return-object v0
.end method

.method private buildBackupCAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "backupRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    .prologue
    .line 89
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseCAdd(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 107
    return-void
.end method

.method private buildBackupCDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V
    .locals 8
    .param p1, "backupRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->getEventData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 173
    .local v0, "cdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryEvents()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 175
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 181
    .local v5, "sidList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 188
    return-void

    .line 175
    .end local v5    # "sidList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .line 176
    .local v2, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v2    # "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .restart local v5    # "sidList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 183
    .local v4, "sid":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;->deleteEvent(Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private buildBackupDiffOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "backupRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    .prologue
    .line 127
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$3;

    invoke-direct {v1, p0, p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseDiff(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 145
    return-void
.end method

.method private buildBackupDupOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    .line 111
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$2;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseDup(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 122
    return-void
.end method

.method private buildBackupSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "backupRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    .prologue
    .line 151
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;

    invoke-direct {v1, p0, p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseSDelete(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 169
    return-void
.end method

.method private buildRestoreDiffOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "restoreRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    .prologue
    .line 232
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$6;

    invoke-direct {v1, p0, p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$6;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseDiff(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 243
    return-void
.end method

.method private buildRestoreDupOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "restoreRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    .prologue
    .line 216
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$5;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseDup(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 227
    return-void
.end method

.method private buildRestoreSAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "restoreRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    .prologue
    .line 267
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$8;

    invoke-direct {v1, p0, p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$8;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseSAdd(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 278
    return-void
.end method

.method private buildRestoreSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
    .locals 2
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "restoreRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    .prologue
    .line 249
    const-string/jumbo v0, "partevent"

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$7;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$7;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->tranverseSDelete(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V

    .line 262
    return-void
.end method

.method private getEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 4
    .param p1, "cid"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    move-object v0, v1

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 52
    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .line 48
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public buildBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
    .locals 6
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;-><init>()V

    .line 60
    .local v0, "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getCAddSize(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "cAddSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getDupSize(Ljava/lang/String;)I

    move-result v3

    .line 62
    .local v3, "dupSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getDiffSize(Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, "diffSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getSDeleteSize(Ljava/lang/String;)I

    move-result v4

    .line 65
    .local v4, "sDelSize":I
    add-int v5, v1, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->total:I

    .line 66
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->cur:I

    .line 68
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryEvents()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->events:Ljava/util/List;

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupCAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupDupOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupDiffOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupCDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V

    .line 83
    return-object v0
.end method

.method public buildRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
    .locals 6
    .param p1, "checksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;-><init>()V

    .line 196
    .local v2, "restoreRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getDupSize(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "dupSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getDiffSize(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "diffSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getSDeleteSize(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, "sDelSize":I
    const-string/jumbo v5, "partevent"

    invoke-virtual {p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->getSAddSize(Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, "sAddSize":I
    add-int v5, v1, v0

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->total:I

    .line 202
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->cur:I

    .line 203
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryEvents()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->events:Ljava/util/List;

    .line 205
    invoke-direct {p0, p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildRestoreDupOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V

    .line 206
    invoke-direct {p0, p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildRestoreDiffOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V

    .line 207
    invoke-direct {p0, p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildRestoreSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V

    .line 208
    invoke-direct {p0, p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildRestoreSAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V

    .line 210
    return-object v2
.end method
