.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;
.super Ljava/lang/Object;
.source "SubEventSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->buildBackupSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

.field private final synthetic val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->getEventCid(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->getEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v1

    .line 156
    .local v1, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;->addEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->cur:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;I)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->total:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 166
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
