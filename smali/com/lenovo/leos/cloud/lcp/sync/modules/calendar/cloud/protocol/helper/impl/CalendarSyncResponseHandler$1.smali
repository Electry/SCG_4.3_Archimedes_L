.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;
.super Ljava/lang/Object;
.source "CalendarSyncResponseHandler.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse$CalendarBackupVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->handleBackupResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

.field private final synthetic val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;
    .param p3, "op"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "add"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->currentUser:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->setCalendarSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 50
    :cond_0
    const-string/jumbo v0, "update"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->currentUser:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->getCalendarCid(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->delCalendarSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
