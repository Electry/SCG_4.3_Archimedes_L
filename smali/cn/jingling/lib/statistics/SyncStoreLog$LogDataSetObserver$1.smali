.class Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver$1;
.super Ljava/lang/Object;
.source "SyncStoreLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;


# direct methods
.method constructor <init>(Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver$1;->this$1:Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver$1;->this$1:Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;

    # getter for: Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->this$0:Lcn/jingling/lib/statistics/SyncStoreLog;
    invoke-static {v0}, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;->access$0(Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;)Lcn/jingling/lib/statistics/SyncStoreLog;

    move-result-object v0

    # invokes: Lcn/jingling/lib/statistics/SyncStoreLog;->appendLog()V
    invoke-static {v0}, Lcn/jingling/lib/statistics/SyncStoreLog;->access$2(Lcn/jingling/lib/statistics/SyncStoreLog;)V

    .line 65
    return-void
.end method
