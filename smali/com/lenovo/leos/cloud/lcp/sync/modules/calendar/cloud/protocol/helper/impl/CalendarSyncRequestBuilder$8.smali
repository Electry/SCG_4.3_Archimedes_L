.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;
.super Ljava/lang/Object;
.source "CalendarSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->buildRestoreSAddOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

.field private final synthetic val$restoreRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->val$restoreRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->val$restoreRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;->addSID(Ljava/lang/Long;)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->cur:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->total:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;)I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 267
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

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