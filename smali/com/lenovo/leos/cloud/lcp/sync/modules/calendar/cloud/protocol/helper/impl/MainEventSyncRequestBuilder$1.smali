.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;
.super Ljava/lang/Object;
.source "MainEventSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->buildBackupCAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

.field private final synthetic val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->getEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-static {v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v1

    .line 94
    .local v1, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->val$backupRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;->addEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->cur:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;I)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->total:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 103
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
