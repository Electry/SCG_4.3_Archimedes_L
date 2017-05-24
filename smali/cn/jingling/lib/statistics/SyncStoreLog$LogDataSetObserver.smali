.class Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SyncStoreLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/statistics/SyncStoreLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/statistics/SyncStoreLog;


# direct methods
.method constructor <init>(Lcn/jingling/lib/statistics/SyncStoreLog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;)Lcn/jingling/lib/statistics/SyncStoreLog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;

    return-object v0
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;

    # getter for: Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z
    invoke-static {v1}, Lcn/jingling/lib/statistics/SyncStoreLog;->access$0(Lcn/jingling/lib/statistics/SyncStoreLog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jingling/lib/statistics/SyncStoreLog;->access$1(Lcn/jingling/lib/statistics/SyncStoreLog;Z)V

    .line 56
    iget-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;

    # invokes: Lcn/jingling/lib/statistics/SyncStoreLog;->appendLog()V
    invoke-static {v1}, Lcn/jingling/lib/statistics/SyncStoreLog;->access$2(Lcn/jingling/lib/statistics/SyncStoreLog;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    # getter for: Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;
    invoke-static {}, Lcn/jingling/lib/statistics/SyncStoreLog;->access$3()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver$1;-><init>(Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 74
    return-void
.end method
