.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;
.super Ljava/lang/Object;
.source "MainEventSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->buildRestoreDupOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->currentUser:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->setEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->cur:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->total:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 223
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
